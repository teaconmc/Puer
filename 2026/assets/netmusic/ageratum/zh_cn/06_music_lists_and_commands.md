---
title: "音乐列表与命令"
navigation:
  title: "06 音乐列表与命令"
---

# 音乐列表与命令

## 音乐列表文件

模组优先读取 `config/net_music/music.json`，不存在时加载内置的 `assets/netmusic/music.json`。该列表提供创造栏中的音乐唱片，也是精妙核心背包生成唱片时的歌曲来源。

JSON 使用 `ItemMusicCD.SongInfo` 字段：`url`、`name`、`time_second`、`trans_name`、`vip`、`read_only` 与 `artists`。

## 命令

`/netmusic` 根命令要求权限等级 2（管理员/创造模式游戏大师）。

| 命令 | 行为 |
|:---|:---|
| `/netmusic get163 <song_list_id>` | 获取网易云歌单，把最多 100 首写入 `config/net_music/music.json`，并在客户端刷新唱片列表。 |
| `/netmusic get163cd <song_id>` | 获取单首网易云歌曲并给予玩家音乐唱片，物品栏满时掉落。 |
| `/netmusic getDJcd <dj_id>` | 获取网易云播客/节目并给予玩家音乐唱片。 |
| `/netmusic reload` | 重新读取音乐列表文件并刷新客户端唱片列表。 |

命令在后台调用网易云 API。专用服务器上，服务端也会更新自己的音乐列表文件。

## 网络数据包

通道版本为 `1.5.1`，全部标记为可选：

- `netmusic:music_to_client`：唱片机向附近玩家发送播放数据。
- `netmusic:get_music_list`：服务端向客户端发送歌单重载或导入。
- `netmusic:set_music_id`：客户端向服务端发送唱片刻录机/电脑的唱片写入。
- `netmusic:big_megaphone_start` / `netmusic:big_megaphone_stop`：服务端向客户端发送广播控制。
- `netmusic:big_megaphone_control`：客户端向服务端发送广播编辑动作。

当前源码没有注册按键。

[返回首页](index)
