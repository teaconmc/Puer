---
title: "美食世界"
navigation:
  title: "美食世界"
---

# 美食世界

美食世界（DelicacyWorld）是一款基于 NeoForge 的餐厅经营模拟。放置一台收银机后，它会成为餐厅控制器；员工摆放入口、餐桌、椅子、冰箱和烹饪设备，购买或寻找食谱物品，然后开启一场有时限的营业。顾客实体（`delicacyworld:customer`）会进场、入座、点单，只有在端上对应熟食后才结账离开。

## 阅读路线

1. [搭建餐厅](01_setting_up)：放置控制器、入口与出口标记、冰箱、座椅、储物柜和食谱槽位。
2. [餐厅区域与知名度](02_restaurant_area)：了解扫描范围、星级限制和装饰评分。
3. [营业流程](03_business_session)：参与人、准备阶段、顾客、上菜、结算与升级。
4. [烹饪设备](04_cooking_devices)：蒸笼、煮锅、炒锅、饮品搅拌器和洗手池的流程。
5. [菜品与食谱](05_dishes_and_recipes)：全部 16 道菜、食谱物品和真实合成配方。
6. [品质与知名度](06_quality_and_popularity)：品质元数据、新鲜度与电器加成、惩罚和定价。
7. [服务方块与工具](07_service_blocks)：托盘、出票机与黑板、菜单牌、冰箱、储物柜、垃圾和工具。
8. [命令](08_commands)：`/restaurantcraft` 命令族与管理员权限。

## 快速说明

| 主题 | 当前实现 |
|:---|:---|
| 模组 ID | `delicacyworld` |
| 主方块 | `delicacyworld:restaurant_management_block`（收银机） |
| 实体 | `delicacyworld:customer` |
| 菜品 | 16 道，每道均有 `<dish>_recipe`、`raw_<dish>`、`cooked_<dish>` 物品 |
| 合成配方 | 16 个无序 `raw_<dish>` 配方 |
| 宝箱食谱战利品 | 9 个，按原版结构宝箱分层 |
| 烹饪设备 | `steamer`、`boiling_pot`、`wok`、`drink_mixer`，另有 `sink` |
| 命令 | `/restaurantcraft`（管理员权限） |

::: warning
当前检出的源码注册了十种模组材料（`salt`、`white_pepper`、`pepper_powder`、`black_pepper_sauce`、`spicy_sauce`、`soy_sauce`、`chili`、`chrysanthemum`、`shiitake`、`milk_bottle`），但没有合成、世界生成或战利品来源。它们用于生食配方，生存整合包需要自行提供获取途径。
:::
