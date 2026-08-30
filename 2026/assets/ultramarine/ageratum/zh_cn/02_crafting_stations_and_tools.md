---
title: "制作台与工具"
navigation:
  title: "制作台与工具"
---

# 制作台与工具

三座功能工作台与一组工具支撑了群青的大部分制作流程。`ultramarine:tools` 创造页签收纳工具、工作台与青花瓷工具组。

## 工作台

| 方块 | 用途 |
|:---|:---|
| `ultramarine:woodworking_workbench` | 运行 `woodworking` 配方类型，把原木与零件加工成木板与结构构件。 |
| `ultramarine:brick_kiln` | 运行 `composite_smelting` 配方（例如烧制砖与屋面瓦）。它有方块实体（`brick_kiln_block_entity`）与自己的菜单（`ultramarine:brick_kiln`）。 |
| `ultramarine:chisel_table` | 运行 `chisel_table` 配方，将模板与染料组合刻出彩绘装饰。 |

每台工作台都定义了自己的配方序列化器与配方类型：`woodworking`、`composite_smelting` 与 `chisel_table`。带物品栏的容器式装饰方块共用 `container_decorative_block_entity` 方块实体与菜单家族（`ultramarine:container_decorative_block_menu_generic_9x1`、`_9x3`、`_9x6`，以及食物用的 `_9x3` / `_9x6` 变体）。

## 工具

- `ultramarine:wooden_mallet` —— 图标工具（也是该页签的图标物品），用于轻型木作。
- 青花瓷工具阶 —— `ultramarine:blue_and_white_porcelain_sword`、`ultramarine:blue_and_white_porcelain_shovel`、`ultramarine:blue_and_white_porcelain_pickaxe` 与 `ultramarine:blue_and_white_porcelain_axe`，均使用青花瓷工具材料。
- `ultramarine:blue_and_white_porcelain_upgrade_smithing_template` —— 用于升级到青花瓷阶的锻造模板。

`seat` 实体为椅子和床提供坐姿，并注册了 `ultramarine:travelling_merchant` 生物实体（`cook` 村民职业与 `cooking_poi`、`trade_poi` 两种兴趣点类型关联）。

[返回索引](index)
