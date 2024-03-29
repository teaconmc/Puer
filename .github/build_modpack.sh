#!/bin/bash

shaded=false

script_name=`basename $0`
usage="Usage: $script_name [OPTION]... [BUILD_DIR]
Collect files and build a modpack supporting both MultiMC and MCBBS format.

  -s                      Enable shaded mode. Mods from remote sync config file
                          file will be downloaded and packed into the modpack
                          zip file.

  -c [MOD_CACHE_FOLDER]   Should be used togethered with -s option. Specify the
                          mod cache folder which mods will be downloaded to.
                          Default to a tmp folder which means that any previous
                          cache will be discarded.

  -d [SERVER_DATA_FILE]   The location of the 'servers.dat' file which includes
                          a server list. This file will be collected into the
                          final modpack.

  -f [FORGE_VERSION]      Specify the version of forge modloader. The option is
                          required. Example: 41.1.0

  -m [MINECRAFT_VERSION]  Specify the game version of minecraft. The option is
                          required. Example: 1.18.2

  -p [MODPACK_PREFIX]     The modpack prefix (archive base name). The option is
                          required. Example: TeaCon2022

  -v [MODPACK_VERSION]    The modpack version which could include a classifier.
                          The option is required. Example: 3.0.0-SNAPSHOT

The modpack dir specified by [BUILD_DIR] would be used for adding resource pack
(which are packed from 'assets/' folder and 'pack.mcmeta'), config files (which
are copied from 'config/' folder), mods not downloaded from remote sync (which
are copied from 'mods/' folder), the 'options.txt' file for minecraft options,
and the 'icon.png' file for the modpack logo automatically.

The final modpack zip file will be located in [BUILD_DIR] and the modpack file
name will be '[MODPACK_PREFIX]-[MODPACK_VERSION].zip'. Example: 'foo-3.0.0.zip'
will be generated if '-p foo' and '-v 3.0.0' are specified."

while getopts 'sc:f:m:p:v:d:r:' OPTION; do
  case "$OPTION" in
    s)
      echo "$script_name: Shading enabled"
      shaded=true
      ;;
    c)
      echo "$script_name: Mod cache folder: $OPTARG"
      mod_download_folder="$OPTARG"
      ;;
    f)
      echo "$script_name: Forge version: $OPTARG"
      forge_version="$OPTARG"
      ;;
    m)
      echo "$script_name: Minecraft version: $OPTARG"
      minecraft_version="$OPTARG"
      ;;
    p)
      echo "$script_name: Modpack prefix: $OPTARG"
      modpack_prefix="$OPTARG"
      ;;
    v)
      echo "$script_name: Modpack version: $OPTARG"
      modpack_version="$OPTARG"
      ;;
    d)
      echo "$script_name: Server data file: $OPTARG"
      server_data_file="$OPTARG"
      ;;
    r)
      echo "$script_name: Remote sync file: $OPTARG"
      remote_sync_file="$OPTARG"
      ;;
    ?)
      cat <<< $usage
      exit 1
      ;;
  esac
done

shift $(("$OPTIND" - 1))
modpack_build_dir="$1"

if [[ -z "$modpack_build_dir" ]]; then
  echo "$script_name: Modpack build dir is required"
  exit 1
elif [[ -z "$forge_version" || -z "$minecraft_version" || -z "$modpack_prefix" || -z "$modpack_version" ]]; then
  cat <<< $usage
  exit 1
else
  echo "$script_name: Modpack build dir: $1"
fi

# initialize mod download folder
if [[ -z $mod_download_folder ]]; then
  mod_download_folder=/tmp/build-modpack/mod-download
  echo "$script_name: Mod cache folder: $mod_download_folder"
  mkdir -p $mod_download_folder
elif [[ $shaded != "true" ]]; then
  echo "$script_name: Option -c should be used togethered with -s"
  exit 1
else
  mkdir -p $mod_download_folder
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

tmp_dir_parent=/tmp/build-modpack-`date +%s`
tmp_dir="$tmp_dir_parent/zip"

# make dir for mcbbs and multimc
mkdir -p "$tmp_dir/overrides/"
mkdir -p "$tmp_dir/$modpack_name/"

# copy remote_sync.json
if [[ ! -z "$remote_sync_file" ]]; then
  if [[ ! `file "$remote_sync_file" | awk '{ print "$2" }'` != 'JSON' ]]; then
    echo "$script_name: Invalid remote sync file: not json data"
    rm -r "$tmp_dir_parent"
    exit 1
  fi
  echo "Copying remote_sync.json to overrides ..."
  cp "$remote_sync_file" "$tmp_dir/overrides/remote_sync.json"
fi

# check and copy icon.png
if [[ `identify "$modpack_build_dir/icon.png" | awk '{ print $2 }'` != 'PNG' ]]; then
  echo "$script_name: Invalid icon file: not PNG file"
  rm -r "$tmp_dir_parent"
  exit 1
fi
echo Copying icon.png to overrides ...
cp "$modpack_build_dir/icon.png" "$tmp_dir/overrides/"
cp "$modpack_build_dir/icon.png" "$tmp_dir/$modpack_name/teacon.png"

# copy server.dat
if [[ ! -z "$server_data_file" ]]; then
  if [[ ! -f "$server_data_file" ]]; then
    echo "$script_name: Invalid remote sync file: not a regular file"
    rm -r "$tmp_dir_parent"
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
  # pack resources
  mkdir -p "$tmp_dir/overrides/resource-sync/"
  resources_file=`realpath $tmp_dir/overrides/resource-sync/resources.zip`
  echo Pack resources with "$modpack_build_dir/assets" and "$modpack_build_dir/pack.mcmeta"
  pushd $modpack_build_dir > /dev/null; zip -r9Xo "$resources_file" assets pack.mcmeta; popd > /dev/null
  # get mod list url and file name
  teacon_mod_dir=`jq -r '.modDir' "$remote_sync_file"`
  remote_mod_list=`jq -r '.modList' "$remote_sync_file"`
  teacon_mod_list=`jq -r '.localModList' "$remote_sync_file"`
  # make mod dir
  mkdir -p "$tmp_dir/overrides/$teacon_mod_dir/"
  # download mod list
  echo Downloading "$teacon_mod_list" from "$remote_mod_list" ...
  wget -q -c -O "$tmp_dir/overrides/$teacon_mod_list" "$remote_mod_list"
  if [[ $? -ne 0 ]]; then
    echo Failed to download "$teacon_mod_list" from "$remote_mod_list".
    rm -r "$tmp_dir_parent"
    exit 1
  fi
  # iterate mods
  for mod in `jq -c .[] "$tmp_dir/overrides/$teacon_mod_list"`; do
    # get mod info
    name=`echo "$mod" | jq -r .name`
    sig_url=`echo "$mod" | jq -r .sig`
    file_url=`echo "$mod" | jq -r .file`
    # download
    echo Downloading "$name" from "$file_url" ...
    wget -q -c -O "$mod_download_folder/$name" "$file_url"
    if [[ $? -ne 0 ]]; then
      echo Failed to download "$name" from "$file_url".
      rm -r "$tmp_dir_parent"
      exit 1
    fi
    cp "$mod_download_folder/$name" "$tmp_dir/overrides/$teacon_mod_dir/"
    # download sig
    echo Downloading "$name.sig" from "$sig_url" ...
    wget -q -c -O "$mod_download_folder/$name.sig" "$sig_url"
    if [[ $? -ne 0 ]]; then
      echo Failed to download "$name.sig" from "$sig_url" ...
      rm -r "$tmp_dir_parent"
      exit 1
    fi
    cp "$mod_download_folder/$name.sig" "$tmp_dir/overrides/$teacon_mod_dir/"
  done
  # get pubkey related info
  key=`jq -r '.keyRingPath' "$remote_sync_file"`
  key_id=`jq -r '.keyIds[0]' "$remote_sync_file"`
  key_server=`jq -r '.keyServers[0]' "$remote_sync_file"`
  remote_key_url="$key_server/pks/lookup?op=get&search=$key_id"
  echo Downloading and dearmoring to "$key" from "$remote_key_url" ...
  remote_key=`wget -q -c -O - "$remote_key_url"`
  if [[ $? -ne 0 ]]; then
    echo Failed to download public key from "$remote_key_url".
    rm -r "$tmp_dir_parent"
    exit 1
  fi
  gpg --dearmor <<< "$remote_key" > "$tmp_dir/overrides/$key"
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
echo Output archive: "$modpack_name.zip"
mv "$tmp_dir/$modpack_name.zip" .

# clean up
rm -r "$tmp_dir_parent"
