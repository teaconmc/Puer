---
title: "可攀爬方块标签"
navigation:
  title: "05 可攀爬方块标签"
---

# 可攀爬方块标签

生成的标签数据文件为：

- `data/parkour/tags/block/climbable.json`
- `data/parkour/tags/block/common_ignored_blocks.json`
- `data/parkour/tags/block/scaffolding_blocks.json`

## `#parkour:climbable`

生成标签包含：

- 栅栏：`minecraft:oak_fence`、`minecraft:nether_brick_fence`、`minecraft:spruce_fence`、`minecraft:birch_fence`、`minecraft:jungle_fence`、`minecraft:acacia_fence`、`minecraft:cherry_fence`、`minecraft:dark_oak_fence`、`minecraft:pale_oak_fence`、`minecraft:mangrove_fence`、`minecraft:bamboo_fence`、`minecraft:crimson_fence`、`minecraft:warped_fence`，以及 `#minecraft:fences`。
- 栏杆：`minecraft:iron_bars`、`minecraft:copper_bars`，以及铜栏杆的 exposed、weathered、oxidized、waxed、waxed exposed、waxed weathered、waxed oxidized 变体。
- 锁链：`minecraft:iron_chain`、`minecraft:copper_chain`，以及铜锁链的 exposed、weathered、oxidized、waxed、waxed exposed、waxed weathered、waxed oxidized 变体。
- 玻璃板：`minecraft:glass_pane` 和全部 16 种染色玻璃板。
- `minecraft:end_rod`。

该标签由 `LivingEntityMixin.onClimbable` 使用。扩展攀爬检查仅在启用 `canClimbMoreBlocks` 且玩家不在 vanilla 状态时生效。单个带标签方块不够：玩家所处方块必须命中带标签方块，并且上方或下方堆叠同一方块。柱状方块必须使用 Y 轴，末地烛必须朝上或朝下，其他带标签方块不要求轴向。

## `#parkour:common_ignored_blocks`

该标签包含 `#parkour:climbable` 和 `#minecraft:climbable`。它作为墙跑前向碰撞、头/脚墙体传感器以及爬墙/墙跑脚步声材质查询的忽略方块集合。

## `#parkour:scaffolding_blocks`

该标签包含 `minecraft:scaffolding`。它用于蹬墙跳传感器选择 `UP` 跳型，以及垂挂眼位/顶位传感器的悬挂点检查。

三个标签都由数据驱动：数据包可以扩展或覆盖它们。

[返回首页](index)
