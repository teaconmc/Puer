---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

## Namespace and entry point

The mod id is `a_better_foods` and the main class is `ABetterFoods`. Registration is minimal: it only wires up `ModItems.ITEMS` (item registry) and `ModCreativeTabs.CREATIVE_MODE_TABS` (one creative tab). There are no blocks, entities, commands, or config files.

## The item registry

All items are registered by a single data-driven loop over `FOOD_DATA` in `ModItems`. Each entry provides a name, nutrition, saturation modifier, an "always edible" flag, and (in comments) an optional effect. Because every item is a plain `Item` with food properties, all of them appear in the creative tab **A Better Foods** (`a_better_foods:abf_tab`), whose icon is the `apple_pie`.

Food properties are built with `FoodComponents.createBaseProperties(nutrition, saturation, alwaysEdible)`, mirroring the pattern `nutrition` (hunger shanks ×2), `saturationModifier`, and whether it can be eaten at full hunger.

## Notable items

| Item | Hunger | Saturation | Always edible | Notes |
|:---|:---|:---|:---|:---|
| `apple_pie` | 8 | 0.36 | no | Creative tab icon |
| `golden_apple_pie` | 8 | 0.36 | yes | Grants absorption, speed, regeneration |
| `enchantment_golden_apple_pie` | 8 | 0.36 | yes | Rare, glint; stronger effect set |
| `golden_cereal` | 3 | 0.4 | yes | Grants absorption, speed, haste, regeneration |
| `enchantment_golden_cereal` | 3 | 0.4 | yes | Rare, glint; stronger effect set |
| `magic_potion` | 0 | 0 | yes | Epic, always edible; applies a very broad effect set |

Rarity is applied through dedicated sets: `magic_potion` is **epic**; `enchantment_golden_cereal` and `enchantment_golden_apple_pie` are **rare**. Glint (enchantment shimmer) is forced on `enchantment_golden_cereal`, `enchantment_golden_apple_pie`, and `magic_potion`.

## Effect foods

Eating effects are **not** baked into the food component; they are applied by `ModFoodEvents` (`onFoodEaten` via `LivingEntityUseItemEvent.Finish`). When the eaten item's name matches a key in the `EFFECTS_MAP`, the listed `MobEffectInstance`s are applied to the eater. Examples:

- `golden_apple_pie` → absorption II, speed I, regeneration II
- `enchantment_golden_apple_pie` → speed, absorption III, regeneration, fire resistance, resistance
- `golden_cereal` → absorption II, speed, haste, regeneration II
- `enchantment_golden_cereal` → speed II, haste II, night vision, absorption III, regeneration, fire resistance, resistance
- `magic_potion` → a long list of effects (village hero, dolphins grace, conduit power, fire resistance, slow falling, haste, resistance, strength, absorption, regeneration, water breathing, speed, jump boost, night vision, invisibility, bad omen, glowing, darkness, wither, nausea, slowness, hunger, levitation, blindness, mining fatigue, weakness, breath of the nautilus, infested, oozing, weaving, wind charged, raid omen, trial omen, poison) — a chaotic all-effects drink
- `cream_mushroom_soup` → speed

## Regional dishes

Beyond the named items, the registry also ships a large set of Chinese regional dishes using data-driven ids (`cn-gd-*` for Guangdong-style and `cn-bj-*` for Beijing-style dishes), each matching `nutrition` 5 / `saturation` 0.12 and not always edible. These are plain foods in the same creative tab.

[Back to index](index)
