---
title: A Better Foods
navigation:
  title: A Better Foods
---

# A Better Foods

A Better Foods (namespace `a_better_foods`) is a food-focused addon that registers a single creative tab full of edible items. It adds no blocks, no entities, and no commands — everything lives in the item registry. Each food restores hunger and saturation based on data-driven properties, and several special foods grant status effects when eaten, applied through a mod event handler.

## Reading order

- [01 Getting started](01_getting_started.md) — the item registry, the creative tab, food properties, and the special effect foods.

## At a glance

| Item group | Examples | Notes |
|:---|:---|:---|
| Pies | `apple_pie`, `golden_apple_pie`, `enchantment_golden_apple_pie` | 8 hunger, 0.36 saturation; golden variants always edible |
| Cereals | `cereal`, `potato_cereal`, `carrot_cereal`, `golden_cereal`, `enchantment_golden_cereal` | 3–7 hunger, 0.24–0.4 saturation; golden variants always edible |
| Soups & salad | `cod_soup`, `salmon_soup`, `cream_mushroom_soup`, `vegetable_salad` | Broth and salad dishes |
| Sundries | `cream`, `magic_potion` | `magic_potion` applies a broad effect set |
| Regional dishes | `cn-gd-*`, `cn-bj-*` | Chinese regional dishes |

The only creative tab is **A Better Foods** (`a_better_foods:abf_tab`), whose icon is the `apple_pie`.

[Back to top](#a-better-foods)
