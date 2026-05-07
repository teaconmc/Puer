---
title: "音乐唱片与创造栏"
navigation:
  title: "01 音乐唱片与创造栏"
items:
  - "netmusic:music_cd"
---

# 音乐唱片与创造栏

## 创造栏

`netmusic` 创造栏依次包含唱片机、唱片刻录机、电脑与大喇叭物品，随后是音乐唱片物品。最后，创造栏会为音乐列表中的每一首歌各添加一张带歌曲信息的音乐唱片。

## 音乐唱片

`netmusic:music_cd` 是普通可堆叠物品。歌曲数据保存在 `netmusic:song_info` 数据组件中：

- `url`：可播放的音频 URL。
- `name`：歌曲名，同时作为唱片的自定义名称。
- `time_second`：时长（秒）。
- `trans_name`：译名。
- `vip`：是否标记为 VIP 歌曲。
- `read_only`：唱片是否可被覆盖写入。
- `artists`：歌手列表。

提示文本显示译名、歌手与时长。空白唱片显示红色 `空`；VIP 歌曲追加红色粗体 `[VIP]`；只读唱片追加黄色 `[只读]`。

## 内置音乐列表

资源包内置的 `assets/netmusic/music.json` 提供 19 首默认歌曲，包括一首 VIP 歌曲与多个央广电台条目。当 `config/net_music/music.json` 存在时，它会替换内置列表。

## 合成与写入

空白音乐唱片用灰色染料、棕色染料和两个黏土球无序合成：

<recipe id="netmusic:music_cd"/>

唱片刻录机与电脑会把歌曲信息写入输入槽中的唱片。只读唱片无法被覆盖。唱片机的单格槽位只接受音乐唱片。

[返回首页](index)
