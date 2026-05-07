---
title: "新夜雀食堂"
navigation:
  title: "新夜雀食堂"
---

# 新夜雀食堂

新夜雀食堂是一个面向 Minecraft 26.1.2 的 NeoForge 餐厅经营模组。它包含五种厨具方块、大量食材与酒水、165 道料理、相互关联的餐厅网络、餐桌、储物方块，以及以 EN（円）结算的商店经济。

## 模组包含的内容

- 五种共用烹饪界面的厨具方块，以及自定义料理配方表。
- 49 种食材、46 种酒水、165 道料理，另有主体、杂项与方块物品。
- 由 MAIN/EXTENSION 两部分组成的餐厅控制器、餐桌、橱柜、保温箱及其创造变体。
- 用于绑定和扫描餐厅网络的餐厅配置器、食谱，以及客户端商店界面。
- 47 个普通客人与 59 个稀客数据文件，基于标签计算喜好。
- 可选的 JEI/REI 配方浏览，以及可选的东方 Little Maid 入座联动。

## 阅读路线

- [获取开始](01_getting_started) - 注册表概览、主体物品与获取方式。
- [厨具与烹饪](02_kitchenware_cooking) - 五种厨具、槽位布局、烹饪界面与计时。
- [配方与标签](03_recipes_and_tags) - 自定义配方加载、食谱、标签与暗物质。
- [餐厅搭建](04_canteen_setup) - 控制器摆放、配置器绑定、扫描、菜单与营业开关。
- [点单与服务](05_orders_and_service) - 餐桌、客人订单、评价、EN 结算与连击。
- [储物与菜单流程](06_storage_and_menu_flow) - 橱柜、保温箱与聚合储物 HUD。
- [商店与 EN](07_store_and_en) - 货币、商店界面、购买与调试命令。
- [参考与兼容](08_reference_and_compat) - 注册表、按键、命令、依赖与当前行为说明。

## 参考快照

| 项目 | 值 |
|:---|:---|
| 模组 ID | `neo_mystias_izakaya` |
| 目标环境 | Minecraft `26.1.2`、NeoForge `26.1.2.71` |
| 模组版本 | `26.1.4` |
| 许可证 | GPL-3.0-or-later |
| 方块 | 12 个：`boiling_pot`、`grill`、`frying_pan`、`steamer`、`cutting_board`、`canteen`、`dining_table`、`store`、`cupboard`、`creative_cupboard`、`incubator`、`creative_incubator` |
| 注册物品 | 共 276 个：49 种食材、46 种酒水、165 道料理与 16 个额外物品定义 |
| 实体 | 1 个：`chrome_ball` |
| 菜单类型 | 2 个：`kitchenware`、`dish_serving` |
| 数据组件 | 4 个：`item_tag_list`、`price`、`canteen_config`、`recorded_recipe` |
| 玩家附件 | 5 个：`balance`、`menu`、`order`、`transaction`、`combo` |
| 自定义料理配方 | `data/neo_mystias_izakaya/neo_mystias_izakaya/recipe/` 下 165 个 JSON |

当前源码没有为模组方块和工具提供原版合成、烧炼、锻造或进度文件。模组唯一的配方系统是[配方与标签](03_recipes_and_tags)所述的自定义料理配方格式。
