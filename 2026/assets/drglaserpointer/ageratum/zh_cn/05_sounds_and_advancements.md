---
title: 声音与成就
navigation:
  title: 声音与成就
description: 六个声音事件、由两个方块标签驱动的矮人语音，以及三个成就。
---

# 声音与成就

## 声音事件

模组注册了六个声音事件，全部为可变范围事件，且都有对应的 `.ogg` 文件：

| 声音事件 | 触发时机 |
|:---|:---|
| `drglaserpointer:laser_on` | 激光指示器进入你的主手或副手 |
| `drglaserpointer:laser_off` | 激光指示器离开你的主手或副手 |
| `drglaserpointer:laser_make` | 放置任何标记时（方块或实体） |
| `drglaserpointer:were_rich` | 你标记了 `drglaserpointer:rich_blocks` 中的方块 |
| `drglaserpointer:mushroom1` | 你标记了 `drglaserpointer:mushrooms` 中的方块（两者随机取一） |
| `drglaserpointer:mushroom2` | 你标记了 `drglaserpointer:mushrooms` 中的方块（两者随机取一） |

它们全部以 `PLAYERS` 声音类别、在**标记玩家**的位置播放，且不指定目标玩家 —— 所以听力范围内的所有人都能听到，不只是你自己。两组语音还会获得 `0.8` 到 `1.2` 之间的随机音高。

字幕只通过模组语言文件为指示器自身的音效提供；语音则是普通声音事件。

## 语音冷却

矮人语音由一个客户端冷却把关，以免连点右键把语音叠在一起：

- 当你标记的方块属于 `rich_blocks` **或** `mushrooms`，且冷却为 `0` 时，客户端把冷却设为 **30 tick（1.5 秒）**，并告知服务端可以播放语音。
- 冷却每客户端 tick 递减 1。
- `laser_make` **不受**限制，因此每次标记仍会「嗒」一声。

## 两个方块标签

两者都是随数据文件发布的方块标签，且都使用 `"replace": false`，因此数据包可以扩展。

| 标签 | 内容 |
|:---|:---|
| `drglaserpointer:rich_blocks` | `minecraft:gold_block` |
| `drglaserpointer:mushrooms` | `red_mushroom`、`brown_mushroom`、`crimson_fungus`、`warped_fungus`、四种盆栽变体、`red_mushroom_block`、`brown_mushroom_block`、`nether_wart_block`、`warped_wart_block`、`mushroom_stem`、`crimson_stem`、`warped_stem`、`stripped_crimson_stem`、`stripped_warped_stem` |

## 成就

标记方块还会触发模组自己的进度触发器 `drglaserpointer:mark_block_trigger`，它复用原版「进入方块」触发器实例格式 —— 因此其条件是单个 `block` ID。

| 成就 | 边框 | 达成条件 |
|:---|:---|:---|
| `drglaserpointer:root` | task，显示 | 背包中拥有一支激光指示器 |
| `drglaserpointer:were_rich` | goal，**隐藏** | 标记 `minecraft:gold_block` |
| `drglaserpointer:mushroom` | goal，**隐藏** | 标记 17 种蘑菇方块中的**任意一种** |

两个 goal 都是根成就的子项，达成前隐藏，并会公告到聊天栏。根成就使用激光指示器作为图标，背景为原版冒险背景。

由于蘑菇成就把 17 个方块列在同一个需求组内，任意一种即可完成。

[返回首页](index)
