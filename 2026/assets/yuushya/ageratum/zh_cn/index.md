---
title: "方块小镇（Yuushya Townscape）"
navigation:
  title: "方块小镇（Yuushya Townscape）"
---

# 方块小镇（Yuushya Townscape）

方块小镇（Yuushya Townscape）是一个面向 NeoForge 26.1 的数据驱动城建模组。它注册了大量建材、家具、店铺、交通道具、门窗、招牌、灯具与室内装饰，并通过蓝图与模板工具把创造模式物品栏整理成一套小镇搭建流程。

## 阅读路线

1. [蓝图与创造栏](01_getting_started)：模组如何整理内容，以及如何打开切石机式蓝图菜单。
2. [方块模板](02_block_templates)：模板物品如何按材质生成楼梯、台阶、立柱、围栏、家具等变体。
3. [建筑工具](03_building_tools)：形态扳手与方块更新刷。
4. [连接模型与形态](04_connected_forms)：方块如何与相邻方块连接并切换形态。
5. [坐下](05_seating)：通过 `ride_entity` 椅子实体坐椅子、长凳、沙发与自行车。
6. [结构生成器](06_structure_generators)：一键放置树木、载具与建筑结构的物品。
7. [穿戴物与帽子](07_wearables_hats)：帽子物品，以及把副手物品戴到头上的 Pilatory。
8. [客户端选项与资源包](08_client_options)：可选启动检查界面、客户端配置与内置资源包。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID | `yuushya` |
| 源码目标 | NeoForge / Minecraft 26.1 |
| 内容创造栏 | `extra_blocks`、`wood`、`stone`、`extra_shapes`、`window`、`furniture`、`fabric`、`lighting`、`electrical_appliance`、`living_being`、`signs`、`catering`、`store`、`infrastructure`、`traffic`、`structure` |
| 杂项创造栏 | `item`（工具、蓝图、帽子） |
| 蓝图合成 | 蓝图物品打开切石机式菜单；配方由数据生成器在构建时生成 |
| 工具 | `yuushya:form_trans_item`、`yuushya:blockstate_update_item`、`yuushya:pilatory` |
| 实体 | `yuushya:ride_entity`（隐形椅子） |
| 数据组件 | `yuushya:structure`、`yuushya:mode` |
| 客户端配置 | `showCheckScreen`，默认 `false` |
| 命令 | 未注册 |

::: note
模组从 `data/yuushya/register/*.json` 读取方块与物品目录。配方由 common 数据生成器生成，当前 26.1 检出中没有提交静态配方 JSON，因此本指南只描述生成的切石机工作流，不写死配方 ID。
:::
