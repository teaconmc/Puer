#!/bin/bash

shaded=false

while getopts 'sf:m:p:v:d:r:' OPTION; do
  case "$OPTION" in
    s)
      echo "Shading enabled"
      shaded=true
      ;;
    f)
      echo "Forge version: $OPTARG"
      forge_version="$OPTARG"
      ;;
    m)
      echo "Minecraft version: $OPTARG"
      minecraft_version="$OPTARG"
      ;;
    p)
      echo "Modpack prefix: $OPTARG"
      modpack_prefix="$OPTARG"
      ;;
    v)
      echo "Modpack version: $OPTARG"
      modpack_version="$OPTARG"
      ;;
    d)
      echo "Server data file: $OPTARG"
      server_data_file="$OPTARG"
      ;;
    r)
      echo "Remote sync file: $OPTARG"
      remote_sync_file="$OPTARG"
      ;;
    ?)
      echo "Usage: $(basename $0) [-s] [-d SERVER_DATA_FILE] [-f FORGE_VERSION] [-m MINECRAFT_VERSION] [-p MODPACK_PREFIX] [-v MODPACK_VERSION] BUILD_DIR"
      exit 1
      ;;
  esac
done

shift $(("$OPTIND" - 1))

modpack_build_dir="$1"
echo "Modpack build dir: $1"

if [[ -z "$forge_version" || -z "$minecraft_version" || -z "$modpack_prefix" || -z "$modpack_version" || -z "$modpack_build_dir" ]]; then
  echo "Usage: $(basename $0) [-s] [-d SERVER_DATA_FILE] [-f FORGE_VERSION] [-m MINECRAFT_VERSION] [-p MODPACK_PREFIX] [-v MODPACK_VERSION] BUILD_DIR"
  exit 1
fi

modpack_name=`echo "$modpack_prefix" | tr -d " "`-"$modpack_version"
modpack_desc="$modpack_prefix 客户端，同时兼容 MCBBS 整合包格式和 MultiMC 整合包格式，可被 BakaXL、HMCL、MultiMC、PCL 等主流启动器同时识别。
因为原版启动器没有导入整合包功能，原版启动器用户需手动操作导入此整合包。
本客户端带有与启动器无关的模组更新功能，每次启动游戏都会更新 MOD 列表到最新，一般情况下无需重新下载新版客户端。

This is the client for $modpack_prefix; it is compliant with MCBBS Modpack Format and MultiMC Modpack Format.
You can import this modpack directly with mainstream launchers such as BakaXL, HMCL, MultiMC, PCL, etc..
Because the vanilla launcher does not have an \"import modpack\" functionality, users of vanilla launcher have to manually import this modpack.
This modpack is capable to update mod list to the latest version, and this capability is launcher-agnostic.
This means that, you do not need to update your client manually; just restart your client and everything will be up-to-date."

tmp_dir=/tmp/build-modpack-`date +%s`

# make dir for mcbbs and multimc
mkdir -p "$tmp_dir/overrides/"
mkdir -p "$tmp_dir/$modpack_name/"

# copy remote_sync.json
if [[ ! -z "$remote_sync_file" && "$shaded" != "true" ]]; then
  if [[ ! `file "$remote_sync_file" | awk '{ print "$2" }'` != 'JSON' ]]; then
    echo Invalid remote sync file: not json data
    rm -r "$tmp_dir"
    exit 1
  fi
  echo Copying remote_sync.json to overrides ...
  cp "$remote_sync_file" "$tmp_dir/overrides/"remote_sync.json
fi

# check and copy icon.png
if [[ `identify "$modpack_build_dir/icon.png" | awk '{ print $2 }'` != 'PNG' ]]; then
  echo Invalid icon file: not PNG file
  rm -r "$tmp_dir"
  exit 1
fi
echo Copying icon.png to overrides ...
cp "$modpack_build_dir/icon.png" "$tmp_dir/overrides/"
cp "$modpack_build_dir/icon.png" "$tmp_dir/$modpack_name/teacon.png"

# copy server.dat
if [[ ! -z "$server_data_file" ]]; then
  if [[ ! -f "$server_data_file" ]]; then
    echo Invalid remote sync file: not a regular file
    rm -r "$tmp_dir"
    exit 1
  fi
  echo Copying servers.dat to overrides ...
  cp "$server_data_file" "$tmp_dir/overrides/servers.dat"
fi

# copy options.txt
if [[ -f "$modpack_build_dir/options.txt" ]]; then
  echo Copying options.txt to overrides ...
  cp "$modpack_build_dir/options.txt" "$tmp_dir/overrides/"
fi

# copy existing mods
if [[ -d "$modpack_build_dir/mods" ]]; then
  echo Copying mods folder to overrides ...
  cp -R "$modpack_build_dir/mods" "$tmp_dir/overrides/"
fi

# copy config files
if [[ -d "$modpack_build_dir/config" ]]; then
  echo Copying config folder to overrides ...
  cp -R "$modpack_build_dir/config" "$tmp_dir/overrides/"
fi

# download mods
if [[ "$shaded" == "true" ]]; then
  # get mod list url and file name
  teacon_mod_dir=`jq -r '.modDir' "$remote_sync_file"`
  remote_mod_list=`jq -r '.modList' "$remote_sync_file"`
  teacon_mod_list=`jq -r '.localModList' "$remote_sync_file"`
  # make mod dir
  mkdir -p "$tmp_dir/overrides/$teacon_mod_dir/"
  # download mod list
  echo Downloading "$teacon_mod_list" from "$remote_mod_list"
  wget -q -c -O "$tmp_dir/overrides/$teacon_mod_list" "$remote_mod_list"
  # iterate mods
  for mod in `jq -c .[] "$tmp_dir/overrides/$teacon_mod_list"`; do
    # get mod info
    name=`echo "$mod" | jq -r .name`
    sig_url=`echo "$mod" | jq -r .sig`
    file_url=`echo "$mod" | jq -r .file`
    # download
    echo Downloading "$name" from "$file_url" ...
    wget -q -c -O "$tmp_dir/overrides/$teacon_mod_dir/$name" "$file_url"
    # download sig
    echo Downloading "$name.sig" from "$sig_url" ...
    wget -q -c -O "$tmp_dir/overrides/$teacon_mod_dir/$name.asc" "$sig_url"
  done
fi

# write mcbbs meta
echo Generating mcbbs meta files ...
find "$tmp_dir/overrides/" -type f | xargs sha1sum | while read checksum file; do
  relative_file=`realpath --relative-base="$tmp_dir/overrides/" "$file"`
  jq -n --arg p "$relative_file" --arg h "$checksum" -c '{"path": $p, "hash": $h, "force": true, "type": "addon"}'
done | jq -s \
  --arg m "$minecraft_version" --arg f "$forge_version" \
  --arg n "$modpack_name" --arg d "$modpack_desc" --arg v "$modpack_version" '{
  "manifestType": "minecraftModpack", "manifestVersion": 1, "name": $n, "version":
  $v, "author": "TeaCon Committee", "description": $d, "fileApi": "", "url": "https://www.teacon.cn/",
  "forceUpdate": false, "origin": [], "addons": [{"id": "game", "version": $m}, {"id": "forge", "version": $f}],
  "libraries": [], "files": ., "settings": {"install_mods": true, "install_resourcepack": true}, "launchInfo": {
  "minMemory": 2048, "launchArgument": [], "javaArgument": []}}' | tee "$tmp_dir/manifest.json" > "$tmp_dir/mcbbs.packmeta"

# copy everything to multimc folder
echo Duplicating overrides targeting MultiMC ...
cp -R "$tmp_dir/overrides" "$tmp_dir/$modpack_name/.minecraft"

# instance.cfg and mmc-pack.json for multimc
echo Generating multimc meta files ...
cat > "$tmp_dir/$modpack_name/instance.cfg" << EOM
ForgeVersion=
InstanceType=OneSix
IntendedVersion=
JoinServerOnLaunch=false
LWJGLVersion=
LiteloaderVersion=
LogPrePostOutput=true
MCLaunchMethod=LauncherPart
MaxMemAlloc=4096
MinMemAlloc=2048
OverrideCommands=false
OverrideConsole=false
OverrideGameTime=false
OverrideJavaArgs=false
OverrideJavaLocation=false
OverrideMCLaunchMethod=false
OverrideMemory=true
OverrideNativeWorkarounds=false
OverrideWindow=false
PermGen=128
iconKey=teacon
lastLaunchTime=
name=$modpack_name
notes=
EOM
jq -n --arg m "$minecraft_version" --arg f "$forge_version" '{"formatVersion": 1, "components": [
  {"cachedName": "Minecraft", "cachedVersion": $m, "important": true, "uid": "net.minecraft", "version": $m},
  {"cachedName": "Forge", "cachedVersion": $f, "uid": "net.minecraftforge", "version": $f}]}' > "$tmp_dir/$modpack_name/mmc-pack.json"

# zip modpack
pushd "$tmp_dir" > /dev/null; zip -r9Xo "$modpack_name.zip" *; popd > /dev/null
echo "Output archive: $modpack_name.zip"
mv "$tmp_dir/$modpack_name.zip" .

# clean up
rm -r "$tmp_dir"
