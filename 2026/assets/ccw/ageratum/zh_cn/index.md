---
title: "卡里普索的糖果工坊（CCW）"
navigation:
  title: "卡里普索的糖果工坊（CCW）"
---

# 卡里普索的糖果工坊（CCW）

卡里普索的糖果工坊（模组 ID `ccw`）把糖果化工做成一套 Minecraft 工作流：无痛取奶，在糖果工坊里把牛奶、糖粉、主料与香型精炼成风味软糖，再把软糖装进糖果弹匣或糖果涂抹器，最后到锻造台升级设备。核心软糖产出由数据驱动的公式注册表驱动，同一台糖果工坊可以产出大量“糖种 × 香型”组合。

## 阅读路线

1. [糖果工坊与抽屉台桌](01_candy_workshop)：精炼机、八个槽位，以及用于存储和补料的抽屉台桌。
2. [软糖与公式](02_gummies_and_formulas)：软糖如何产出、香型的作用，以及核心糖种效果表。
3. [糖粉与材料](03_sugar_and_materials)：下界/龙息糖粉、特殊食物与对应的材料链。
4. [牛奶生产线](04_milk_chain)：取奶器、盒装牛奶、牛奶凝胶、高钙牛奶与维修配方。
5. [糖果弹匣与涂抹器](05_candy_devices)：批量食用的弹匣与施加效果的涂抹器。
6. [锻造升级](06_upgrades)：两种设备的下界与终末等级。
7. [成就与统计](07_advancements)：13 个进度条目与两个自定义统计。
8. [兼容内容](08_compat)：仅在安装其他模组时注册的糖种、物品与香型。

## 速览

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID | `ccw` |
| 方块 | `ccw:sugar_refinery`、`ccw:plain_drawer_table`、`ccw:drawer_table` |
| 核心物品 | `ccw:gummy`、`ccw:milk_extractor`、`ccw:milk_packaging`、`ccw:carton_milk`、`ccw:milk_gelatin`、`ccw:nether_sugar`、`ccw:ender_sugar`、`ccw:gummy_magazine`、`ccw:gummy_glazer`，以及材料/食物物品 |
| 数据驱动注册表 | `ccw:sugar`、`ccw:flavor`、`ccw:formula` |
| 机器配方类型 | `ccw:refining`（序列化器 `ccw:common_refining`） |
| 设备等级 | PRIMARY、NETHER、ENDER |
| 按键绑定 | `Switch Glazer Mode`（默认 D，在容器中悬停涂抹器时切换） |
| 配置 | 无 |

::: note
软糖产出不是固定配方列表：匹配使用数据驱动的 `ccw:formula` 注册表，普通 JSON 精炼配方只有 `ccw:carametal` 一个。不要把公式组合当作普通合成配方。
:::
