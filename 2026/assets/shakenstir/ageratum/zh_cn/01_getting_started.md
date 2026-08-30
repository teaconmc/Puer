---
title: 快速开始
navigation:
  title: 快速开始
items:
  - shakenstir:bartender_spawner
---

# 快速开始

本页带你搭建第一家酒吧（Shake n Stir）。

## 搭建酒吧

在待客的位置放置**吧台**（`bar_counter`），然后使用**调酒师生成器**（`bartender_spawner`）召唤一位**调酒师**（Bartender）NPC。调酒师依靠 AI 维持酒吧运转：在吧台劳作、留意未上桌的顾客、读取分配的配方并制作客人点的饮品。再用**酒柜**（`cabinet`）存货、放上**酒吧菜单**（`bar_menu`）与**配方卷轴**（`recipe_scroll`）来决定要调制哪些饮品。

## 收集烈酒与调和物

- **烈酒**以酒瓶/酒块形式出现：`gin` 金酒、`whisky` 威士忌、`vodka` 伏特加、`rum` 朗姆、`tequila` 龙舌兰、`brandy` 白兰地，以及空瓶 `bottle`。每瓶/每块都承载对应的烈酒流体。
- **调和物**——`bubbles` 气泡水、`tonic` 汤力水、`bitters` 苦精、糖浆、蜂蜜与各类果汁/柠檬汁，补齐配方剩余部分。
- **新鲜配料**——种植植物原料：`mint` 薄荷、`stacked_mint` 与 `mint_seed` 薄荷种子、柠檬树（`lemon_log` 木、多组树叶、`lemon_sapling` 树苗）、`lemon` 柠檬与 `lemon_slice` 柠檬片、`ice_cube` 冰块，以及 `ineberry_grass` 醉浆草。用 `squeezer` 榨汁器榨取果汁。

## 调制第一杯酒

鸡尾酒通过三种配方类型制作：**摇合**（`shake_recipe`，在 `shaker` 摇酒壶配合 `shaker_lid` 壶盖）、**搅拌**（`stir_recipe`）、**蒸馏**（`distiller_recipe`，在 `distiller` 蒸馏器中）。成品倒入 `long_drink_glassware` 长饮杯或 `short_drink_glassware` 短饮杯，`bartender_glove` 调酒师手套可协助处理高温操作。

## 效果与恢复

饮酒会施加`drunk`醉酒、`fall_down`摔倒、`lemon`、`paralysis`麻痹、`misdirection`、`miss_step`与`dodge`等效果。长夜越喝越多时，`sobering_tea`解酒茶帮你清醒。进度触发器（如`first_drunk`首醉）会解锁成进度树。

## 配置

`shakenstir-common.toml` 含 `debug_mode`；`shakenstir-server.toml` 含 `enable_wrong_fluid_in_bottle`（默认开启）与 `shaker_animation_upload_distance`（默认 256）。

[返回首页](index)
