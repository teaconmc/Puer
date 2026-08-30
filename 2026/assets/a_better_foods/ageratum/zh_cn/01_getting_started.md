---
title: 快速上手
navigation:
  title: 快速上手
---

# 快速上手

## 命名空间与入口

模组 id 为 `a_better_foods`，主类为 `ABetterFoods`。注册内容极少：只接入了 `ModItems.ITEMS`（物品注册表）与 `ModCreativeTabs.CREATIVE_MODE_TABS`（一个创造页）。没有方块、实体、命令或配置文件。

## 物品注册表

所有物品都由 `ModItems` 中一段对 `FOOD_DATA` 的数据驱动循环注册。每个条目提供名称、营养值、饱和度修正、"始终可食用"标记，以及（注释中）可选效果。因为每个物品都是带食物属性的普通 `Item`，它们都会出现在创造页 **A Better Foods**（`a_better_foods:abf_tab`）中，图标为 `apple_pie`。

食物属性通过 `FoodComponents.createBaseProperties(nutrition, saturation, alwaysEdible)` 构建，对应 `nutrition`（饥饿值，单位鸡腿×2）、`saturationModifier`（饱和度修正）以及是否能在满饥饿时食用。

## 值得注意的物品

| 物品 | 饥饿 | 饱和度 | 始终可食用 | 说明 |
|:---|:---|:---|:---|:---|
| `apple_pie` | 8 | 0.36 | 否 | 创造页图标 |
| `golden_apple_pie` | 8 | 0.36 | 是 | 施加吸收、速度、生命恢复 |
| `enchantment_golden_apple_pie` | 8 | 0.36 | 是 | 稀有、带光效；更强效果集 |
| `golden_cereal` | 3 | 0.4 | 是 | 施加吸收、速度、急迫、生命恢复 |
| `enchantment_golden_cereal` | 3 | 0.4 | 是 | 稀有、带光效；更强效果集 |
| `magic_potion` | 0 | 0 | 是 | 史诗、始终可食用；施加极广效果集 |

稀有度通过专门集合设置：`magic_potion` 为**史诗**；`enchantment_golden_cereal` 与 `enchantment_golden_apple_pie` 为**稀有**。光效（附魔流光）强制施加于 `enchantment_golden_cereal`、`enchantment_golden_apple_pie` 与 `magic_potion`。

## 效果食物

食用效果并**不**烘焙进食物组件，而是由 `ModFoodEvents`（通过 `LivingEntityUseItemEvent.Finish` 的 `onFoodEaten`）施加。当吃下的物品名称命中 `EFFECTS_MAP` 中的键时，所列 `MobEffectInstance` 便会施加于食用者。示例：

- `golden_apple_pie` → 吸收 II、速度 I、生命恢复 II
- `enchantment_golden_apple_pie` → 速度、吸收 III、生命恢复、抗火、抗性提升
- `golden_cereal` → 吸收 II、速度、急迫、生命恢复 II
- `enchantment_golden_cereal` → 速度 II、急迫 II、夜视、吸收 III、生命恢复、抗火、抗性提升
- `magic_potion` → 一长串效果（村庄英雄、海豚的恩惠、潮涌能量、抗火、缓降、急迫、抗性提升、力量、吸收、生命恢复、水下呼吸、速度、跳跃提升、夜视、隐身、不祥之兆、发光、黑暗、凋零、反胃、缓慢、饥饿、悬浮、失明、挖掘疲劳、虚弱、潮涌之息、寄生、渗浆、盘丝、风袭、袭击之兆、试炼之兆、中毒）——一种混乱的全效果饮品
- `cream_mushroom_soup` → 速度

## 地方菜

除具名物品外，注册表还以数据驱动 id（`cn-gd-*` 代表广东菜系、`cn-bj-*` 代表北京菜系）提供一大批中国地方菜，每道均为 5 饥饿 / 0.12 饱和度、不始终可食用。它们与其它食物一同出现在同一个创造页中。

[返回首页](index)
