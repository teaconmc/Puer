---
title: "兼容内容"
navigation:
  title: "08 兼容内容"
---

# 兼容内容

卡里普索的糖果工坊只在对应模组存在时注册可选内容。兼容模块向核心使用的 `ccw:sugar`、`ccw:flavor` 与 `ccw:formula` 注册表添加额外糖种（有时还有物品或香型）。

## Apotheosis

加载 Apotheosis 时，会注册四个带配方的物品：

- `ccw:malignant_berry`（恶性浆果）
- `ccw:knowledge_bottle`（智慧之瓶）
- `ccw:erosion_shell`（腐蚀壳）
- `ccw:vitality_berry`（活力浆果）

<recipe id="ccw:malignant_berry"/>

<recipe id="ccw:knowledge_bottle"/>

<recipe id="ccw:erosion_shell"/>

<recipe id="ccw:vitality_berry"/>

它们还对应四个新增糖种：`ccw:grievous`、`ccw:sundering`、`ccw:vitality` 与 `ccw:knowledge`。

## 农夫乐事

加载 Farmer's Delight 时，会注册 `ccw:glazed_meat_rice`（12 点饥饿值与农夫乐事滋养效果）和 `ccw:nourished` 糖种。烹饪配方存放在 `ccw:cooking/glazed_meat_rice`。

<recipe id="ccw:cooking/glazed_meat_rice"/>

## Fruits Delight

加载 Fruits Delight 时，会注册十六种水果糖种，分别使用 Fruits Delight 对应果冻作为主料：

`ccw:bayberry`、`ccw:blueberry`、`ccw:chorus`、`ccw:cranberry`、`ccw:durian`、`ccw:fig`、`ccw:hawthorn`、`ccw:kiwi`、`ccw:lemon`、`ccw:mango`、`ccw:mangosteen`、`ccw:orange`、`ccw:peach`、`ccw:persimmon`、`ccw:pineapple`、`ccw:snow_pear`。

## Kaleidoscope Cookery

加载 Kaleidoscope Cookery 时，会注册八种酱料物品：`ccw:sweet_and_sour_meat_sauce`、`ccw:fresh_veggie_sauce`、`ccw:lacto_bolt_red_sauce`、`ccw:sashimi_side_sauce`、`ccw:ultra_rich_marrow_cream`、`ccw:silenced_sauce`、`ccw:hearth_warm_marrow_cream` 与 `ccw:lamb_carrot_sauce`。当前源码没有为这些酱料生成合成配方；它们作为对应糖种的主料。该模块还注册了 `ccw:nutritious` 香型和这些糖种：

`ccw:sweet_and_sour_meat`、`ccw:veggie_fresh`、`ccw:lacto_bolt`、`ccw:sashimi`、`ccw:tallow`、`ccw:phanto_bye`、`ccw:broth_warm`、`ccw:mutton_dash`。

## Neapolitan

加载 Neapolitan 时，会注册六个糖种：`ccw:hoohoo_haha`、`ccw:hoohoo_smooth`、`ccw:mint`、`ccw:red_bean`、`ccw:vanilla` 与 `ccw:sugar_rush`。

## 东方之宴

加载 Youkai's Feasts 时，会注册五个糖种：`ccw:green_tea`、`ccw:white_tea`、`ccw:black_tea`、`ccw:oolong_tea` 与 `ccw:udumbara`。

## 东方归乡

加载 Youkai's Homecoming 时，会注册同样的茶/幻昙花糖种，外加 `ccw:youkai_coffee`：`ccw:green_tea`、`ccw:white_tea`、`ccw:black_tea`、`ccw:oolong_tea`、`ccw:udumbara` 与 `ccw:youkai_coffee`。

::: note
兼容 ID 只在对应模组加载时于运行时有效。没有搭档模组时，这些物品和糖种不会注册，对应公式文件也不会生效。
:::

[返回 CCW 首页](index)
