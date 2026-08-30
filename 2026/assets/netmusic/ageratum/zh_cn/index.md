---
title: "NetMusic 网络音乐机"
navigation:
  title: "NetMusic 网络音乐机"
---

# NetMusic 网络音乐机

NetMusic 是面向 NeoForge 26.1 的音乐播放模组。它把歌曲信息写入音乐唱片，用唱片机播放；唱片刻录机写入网易云音乐链接，电脑写入自定义歌曲，大喇叭则把 m3u8 直播流持续广播给附近玩家。

## 阅读路线

1. [音乐唱片与创造栏](01_getting_started)：创造栏组织方式，以及音乐唱片如何保存歌曲数据。
2. [唱片机](02_music_player)：放入唱片、播放、红石控制与歌词显示。
3. [唱片刻录机](03_cd_burner)：把网易云音乐歌曲 ID 与歌曲链接写入唱片。
4. [电脑](04_computer)：把自定义 URL、歌名与本地文件路径写入唱片。
5. [大喇叭](05_big_megaphone)：配置 m3u8 直播流并广播给附近玩家。
6. [音乐列表与命令](06_music_lists_and_commands)：`config/net_music/music.json` 列表与 `/netmusic` 命令。
7. [配置与兼容](07_config_and_compat)：通用配置、配置界面与精妙核心兼容。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID | `netmusic` |
| 源码目标 | NeoForge / Minecraft 26.1 |
| 创造栏 | `netmusic` |
| 注册物品 | `netmusic:music_cd`、`netmusic:music_player`、`netmusic:cd_burner`、`netmusic:computer`、`netmusic:big_megaphone` |
| 数据组件 | `netmusic:song_info` |
| 音效事件 | `netmusic:net_music` |
| 菜单 | `netmusic:cd_burner`、`netmusic:computer` |
| 方块实体 | `netmusic:music_player`、`netmusic:big_megaphone` |
| 命令 | `/netmusic get163`、`/netmusic get163cd`、`/netmusic getDJcd`、`/netmusic reload`（等级 2） |
| 按键 | 未注册 |
| 配置文件 | `netmusic-common.toml` |

::: note
NetMusic 会通过网络获取网易云音乐的元数据与音频。VIP 歌曲会在唱片上标记，但当前构建没有注册任何歌曲 URL 解析器，因此 VIP 唱片无法放入唱片机播放。
:::
