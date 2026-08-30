---
title: "获取开始"
navigation:
  title: "获取开始"
---

# 获取开始

## 没有原版合成路线

当前源码没有为模组的方块或工具注册合成、烧炼、锻造、战利品或获取配方。生成数据里只有厨具使用的自定义料理配方格式。如果在新世界测试，请从创造物品栏分类中拿取方块与物品，或使用自定义数据包；专用服务器也可以使用原版 `/give`。

## 主体物品 ID

物品命名空间为 `neo_mystias_izakaya:`。多数方块物品有意使用 `misc/` 前缀，而不是方块 ID。

| 物品 ID | 游戏内名称 |
|:---|:---|
| `neo_mystias_izakaya:misc/canteen` | 餐厅 |
| `neo_mystias_izakaya:misc/dining_table` | 餐桌 |
| `neo_mystias_izakaya:misc/store` | 河童电话 |
| `neo_mystias_izakaya:misc/cupboard` | 橱柜 |
| `neo_mystias_izakaya:misc/creative_cupboard` | 创造橱柜 |
| `neo_mystias_izakaya:misc/incubator` | 保温箱 |
| `neo_mystias_izakaya:misc/creative_incubator` | 创造保温箱 |
| `neo_mystias_izakaya:misc/mystias_hat` | 夜雀的帽子 |
| `neo_mystias_izakaya:misc/canteen_config` | 餐厅配置器 |
| `neo_mystias_izakaya:misc/recipe_book` | 食谱 |
| `neo_mystias_izakaya:misc/chrome_ball` | 土球 |

## 厨具与物品分类

厨具物品注册在 `neo_mystias_izakaya:cooker/...`，对应方块使用 `neo_mystias_izakaya:boiling_pot` 这类普通 ID：

- `neo_mystias_izakaya:cooker/boiling_pot`
- `neo_mystias_izakaya:cooker/cutting_board`
- `neo_mystias_izakaya:cooker/frying_pan`
- `neo_mystias_izakaya:cooker/grill`
- `neo_mystias_izakaya:cooker/steamer`

食材使用 `neo_mystias_izakaya:ingredient/...`，酒水使用 `neo_mystias_izakaya:beverages/...`，料理成品使用 `neo_mystias_izakaya:cuisines/...`。食材标签 `#neo_mystias_izakaya:ingredient` 还包含 11 个原版物品：河豚、南瓜、海带、棕色蘑菇、马铃薯、生猪排、生牛肉、鸡蛋、冰、蜂蜜瓶与可可豆。

## 必需与可选依赖

- 必需：`minecraft`、`neoforge`。
- 可选客户端：`jei`、`rei`、`kaguya`。
- 可选双端：`touhou_little_maid`。

可选的 JEI/REI 模块为自定义料理配方提供配方分类视图。Touhou Little Maid 允许女仆在餐桌入座。Kaguya 是本模组自定义 GUI 渲染使用的客户端辅助库。

[返回首页](index)
