---
title: "配方与标签"
navigation:
  title: "配方与标签"
---

# 配方与标签

## 自定义料理配方

料理配方不是原版 Minecraft 配方 JSON。它们由专用的 NMI 重载监听器从 `data/<数据包命名空间>/neo_mystias_izakaya/recipe/**/*.json` 加载。生成数据放在 `data/neo_mystias_izakaya/neo_mystias_izakaya/recipe/`，配方 ID 形如 `neo_mystias_izakaya:cuisines/against_the_world`。

每个配方包含：

- `input`：一个或多个原版或模组物品条目。
- `kitchenware`：必须匹配厨具的方块标签，例如 `neo_mystias_izakaya:boiling_pot`。
- `output`：物品栈模板，通常是 `neo_mystias_izakaya:cuisines/...`。
- `time`：以 tick 计的烹饪时长。

共有 165 个生成料理配方，其中包括 38 个煮锅、36 个料理台、36 个油锅、17 个烤架、37 个蒸锅与 1 个通用厨具配方。

## 食谱

食谱（`neo_mystias_izakaya:misc/recipe_book`）一次记录一个配方。在空气中右键打开配方浏览器，可以浏览料理、酒水和客人数据，并在任意一只手持有时使用记录操作。物品的 `recorded_recipe` 数据组件会保存选中的配方 ID。

手持已记录的食谱右键厨具方块：

- 如果食谱的厨具标签匹配且方块空闲，会从玩家背包提取食材。
- 普通右键只放入食材，不会开始烹饪。
- 潜行右键会在放入食材后立即开始烹饪。

## 物品标签与提示文本

标签数据从 `data/neo_mystias_izakaya/neo_mystias_izakaya/item_positive_tags/**` 与 `item_negative_tags/**` 加载。生成数据定义了 43 个正向料理标签、23 个负向料理标签和 21 个正向酒水标签。

有代表性的料理标签包括 `premium`、`spicy`、`vegetarian`、`grilled`、`soup`、`sea_delicacy`、`signature` 与 `sweet`。酒水标签包括 `beer`、`sake`、`cocktail`、`no_alcohol`、`high_alcohol` 与 `soda`。提示文本会用 `+` 渲染正向标签、用 `-` 渲染负向标签，并在可用时显示 EN 价格。

## 额外食材与暗物质

额外食材指放入厨具、但不在所选配方输入中的物品。它们的正向标签会加入成品，厨具自身的标签也会被自动加入。

如果任一额外食材的正向标签出现在该料理的负向标签列表中，系统判定冲突，结果变成 `neo_mystias_izakaya:cuisines/dark_matter`。`dark_matter` 同时也是一个真实的通用配方：输入五个屏障、目标为通用厨具标签，因此也可以在创造测试中直接制作。

[返回首页](index)
