---
title: 矿车目录
navigation:
  title: 矿车目录
---

# 矿车目录

每一条目都是 `minecart_<基准名>` 物品，可生成对应的矿车实体。代表性示例：

## 容器矿车

- `minecart_barrel`、`minecart_copper_chest`、`minecart_trapped_chest`、`minecart_ender_chest` —— 带物品栏的矿车。
- `minecart_shulker` —— 装载潜影盒（保留内容物，无需打开矿车物品栏）。
- `minecart_dispenser` —— 可移动的发射器。

## 工作台矿车

`minecart_anvil`、`minecart_beacon`、`minecart_enchanting_table`、`minecart_crafting_table`、`minecart_smithing_table`、`minecart_stonecutter`、`minecart_loom`、`minecart_cartography_table`、`minecart_grindstone`、`minecart_jukebox` —— 把对应工作台界面搬到铁轨上移动使用。信标矿车携带激活的信标效果；唱片机矿车可播放唱片（由 `MinecartMusicSoundInstance` 处理、`ChainedJukeboxSoundInstance` 流式播放）。

## 流体矿车

`minecart_water` 与 `minecart_lava` 装载流体源；`minecart_nether_portal` / `minecart_end_portal` / `minecart_end_frame` 是与传送门相关的移动矿车。

## 红石矿车

`minecart_redstone`、`minecart_repeater`、`minecart_piston`、`minecart_presher_plate`、`minecart_iron_presher_plate`、`minecart_golden_presher_plate`，以及类原版的能量矿车 —— 在行进时发出或响应红石信号。

## 实用与趣味

`minecart_magnet`（磁石，吸引/排斥）、`minecart_picker`（拾取物品）、`minecart_sofa`、`minecart_wool`、`minecart_scaffold`、`minecart_mob_head`、`minecart_amethyst`、`minecart_honey`、`minecart_obsidian`、门/活板门矿车（`minecart_iron_door`、`minecart_oak_door` …以及 `minecart_iron_trapdoor`、`minecart_oak_trapdoor` …），还有 `minecart_cactus` / `minecart_magma` / `minecart_campfire` / `minecart_soul_campfire` 这类接触造成伤害的矿车。

[返回首页](index)