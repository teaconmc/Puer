---
title: "参考与兼容"
navigation:
  title: "参考与兼容"
---

# 参考与兼容

## 按键与界面

- `K` 是客户端按键“显示餐厅信息”。它会使用已装备夜雀的帽子上的餐桌坐标打开端菜菜单。
- 餐厅 HUD 在营业期间显示已绑定的厨具与餐桌。
- 端菜界面显示所有已绑定餐桌的料理/酒水槽，以及橱柜和保温箱 HUD。
- 厨具界面也会嵌入橱柜 HUD，用于食材与酒水转移。

## 土球

土球（`neo_mystias_izakaya:misc/chrome_ball`，中文名“土球”）是可投掷物品，使用时有雪球式投掷音效。使用会消耗一个物品并生成 `neo_mystias_izakaya:chrome_ball` 弹射物。命中时显示物品粒子；当前实现没有自定义伤害或效果。

## 兼容模组

- JEI 与 REI：可选客户端依赖。模组为自定义料理配方注册了配方分类视图。
- Touhou Little Maid：可选双端依赖。女仆可以通过入座任务使用餐桌，评价信息可以显示在女仆聊天气泡中。
- Kaguya：可选客户端依赖。商店、食谱与物品列表组件使用 Kaguya 绘制辅助实现自定义 GUI。

## 数据与注册表参考

- 自定义配方监听器：`data/<数据包命名空间>/neo_mystias_izakaya/recipe/**`。
- 标签监听器：同一 `neo_mystias_izakaya/` 子目录下的 `item_positive_tags` 与 `item_negative_tags`。
- 客人文件：`common_customer/customer/**` 与 `rare_customer/customer/**`；生成数据包含 47 个普通客人与 59 个稀客文件。
- 经济默认值：`economy/default.json`。
- 数据组件：`item_tag_list`、`price`、`canteen_config`、`recorded_recipe`。
- 玩家附件：`balance`、`menu`、`order`、`transaction`、`combo`。

## 当前行为说明

当前源码没有为模组方块、工具和物品提供原版合成或进度文件。调试命令不做权限检查。餐厅相关的当前行为、烹饪消耗与付款注意事项分别见[餐厅搭建](04_canteen_setup)、[厨具与烹饪](02_kitchenware_cooking)与[点单与服务](05_orders_and_service)。

[返回首页](index)
