---
title: "配置与兼容"
navigation:
  title: "07 配置与兼容"
---

# 配置与兼容

## 通用配置

通用配置文件为 `netmusic-common.toml`。`general` 段包含：

| 键 | 默认值 | 说明 |
|:---|:---|:---|
| `EnableStereo` | `true` | 客户端立体声播放。 |
| `ProxyType` | `DIRECT` | 支持 `http` 与 `socks` 代理类型。 |
| `ProxyAddress` | 空 | 示例：`127.0.0.1:1080`。 |
| `EnablePlayerLyrics` | `true` | 在唱片机上方渲染歌词。 |
| `EnableMaidLyrics` | `true` | 配置中保留的女仆歌词设置；当前源码没有活跃的女仆集成消费它。 |
| `OriginalPlayerLyricsColor` | `#FFAAAAAA` | `#ARGB` 颜色。 |
| `TranslatedPlayerLyricsColor` | `#FFFFFFFF` | `#ARGB` 颜色。 |
| `OriginalMaidLyricsColor` | `#FFAAAAAA` | `#ARGB` 颜色。 |
| `TranslatedMaidLyricsColor` | `#FF000000` | `#ARGB` 颜色。 |
| `BigMegaphoneMaxRange` | `96` | 滑块最大值，范围 1 到 256。 |
| `BigMegaphoneScanInterval` | `200` | 服务端听众扫描间隔（tick），范围 1 到 1200。 |
| `BigMegaphoneClientActiveLimit` | `3` | 客户端同时主动播放的最近广播数，范围 1 到 16。 |

`sophisticated_backpacks` 段包含 `EnableNetMusicCDGeneration`（默认 `false`）与 `EnableVIPNetMusicCDGeneration`（默认 `false`）。

## 配置界面

安装了 Cloth Config 时，NetMusic 会把选项注册到 Cloth Config 的模组页面；否则使用 NeoForge 的 `ConfigurationScreen`。

## 精妙核心兼容

当 `sophisticatedcore` 存在时，音乐唱片会注册到精妙核心的唱片播放处理器。兼容数据包注册在精妙核心通道下，支持基于容器与基于实体的声音播放。

开启 `EnableNetMusicCDGeneration` 后，怪物背包可以随机生成来自当前音乐列表的音乐唱片；只有同时开启 `EnableVIPNetMusicCDGeneration` 才会包含 VIP 歌曲。

## 当前限制

- 当前构建没有注册歌曲 URL 解析器，因此 VIP 音乐唱片无法播放。
- 内置默认列表包含一首 VIP 歌曲（`明日の朝には`）。
- 仓库仍保留 `music_player_backpack`、女仆 GUI 文本与相关贴图，但背包物品注册被注释，当前没有活跃的女仆代码消费它们。
- 除四个 `/netmusic` 子命令外，没有注册实体、按键或其它游戏内命令。

[返回首页](index)
