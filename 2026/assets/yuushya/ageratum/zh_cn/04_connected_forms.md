---
title: "连接模型与形态"
navigation:
  title: "04 连接模型与形态"
items:
  - "yuushya:oak_table"
  - "yuushya:oak_foldable_table"
  - "yuushya:sticky_note"
  - "yuushya:books"
  - "yuushya:white_windows_diagonal"
  - "yuushya:sign_12"
---

# 连接模型与形态

## 连接套件

注册数据中的方块通过状态套件决定连接方式与生成变体数量。当前使用的套件包括 `normal`、`line`、`line_corner`、`line_cross`、`line_cross_simple`、`face`、`compact`、`column`、`pole`、`attachment`、`tri_part`、`VanillaStairBlock`、`VanillaDoorBlock`、`VanillaSlabBlock`、`VanillaSnowLayerBlock` 与 `HalfSlabBlock`。

- `line` 方块沿水平一行连接（例如长凳、货架、边框与围栏）。
- `face` / `compact` 方块沿表面网格连接（例如桌面会在相邻桌子之间延伸）。
- `column` / `pole` 方块沿垂直方向连接。
- 门使用原版门属性；楼梯与台阶使用原版楼梯/台阶属性。

## 形态

许多方块定义多个形态，当条目带 `cycle_forms` 交互字段时可右键循环。已确认的示例包括折叠桌（`oak_foldable_table`、`acacia_foldable_table`）、便签（`sticky_note`）、`chalk_box`、书本（`books`）与杂志堆（`sorted_magazine`）。

形态扳手也可以直接循环暴露出的形态属性；放置或移除相邻方块后，方块更新刷可帮助刷新连接状态。

[返回首页](index)
