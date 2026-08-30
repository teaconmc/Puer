---
title: Convivium
navigation:
  title: Convivium
---

# Convivium

**Convivium** (mod id `convivium`, GPLv3, by khjxiaogu and Lyuuke) is a **required-dependency addon for Caupona** that adds a full beverage system: five taste dimensions, six relishes named after Roman deities, and a set of vessels and machines for turning fruit and grain into something worth serving at a feast.

The name is Latin for a banquet, and the mod is built around that idea rather than around bulk food production.

## Reading guide

- [01 Requirements and first steps](01_requirements_and_first_steps) — Caupona as a hard dependency, the built-in guide book, and where to begin.
- [02 Tastes and relishes](02_tastes_and_relishes) — the five taste axes and the six relishes, which is the core of everything else.
- [03 Beverages and recipes](03_beverages_and_recipes) — how a drink is matched, the condition tree, and why priority decides the outcome.
- [04 Equipment and good to know](04_equipment_fluids_and_technical_notes) — basins, the aeolipile, the vending machine, and what is unnamed on a Chinese client.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `convivium` |
| License | **GPLv3** |
| Authors | khjxiaogu, Lyuuke |
| Minecraft | `[26.1.2, 26.2)` |
| **Required dependency** | **`caupona` `[6.0.2,)`, side BOTH** |
| Blocks | **18** |
| Items | **70** |
| Recipes | **158** across 7 types |
| Loot tables | 16 |
| Mixins | 2 (`LivingEntityMixin`, `RecipeManagerMixin`) |
| Config entries | 10 |
| Commands | 2 |
| **Built-in guide** | **Yes — a bilingual Patchouli book, 6 categories** |
| Languages | `en_us` **177** keys / `zh_cn` **166** keys |

::: danger
**Caupona is a hard requirement, declared as `type = "required"` with version range `[6.0.2,)` on both sides.** This is not an optional integration — without Caupona installed the mod will not load. It is also the correct declaration: the dependency is real and the metadata states it plainly.
:::

## The one place it reaches into Caupona

The mod ships exactly **one file under `data/caupona/`**, and it is a precise, minimal touch:

```json
data/caupona/tags/block/chimney_ignore.json
{ "values": ["convivium:aeolipile"] }
```

That adds the mod's own **Aeolipile** to Caupona's "chimney ignores this block" tag. Everything else the mod contributes lives in its own namespace — including **88 `caupona:bowl` recipes**, which are declared under `data/convivium/recipe/` and simply use Caupona's recipe type.

::: info
That 88 is worth noting: **the single most numerous recipe type in this mod belongs to Caupona, not to Convivium.** The mod adds far more to Caupona's existing bowl-dish system than it does to any of its own machines.
:::

## The built-in book

The mod carries a **complete bilingual Patchouli book** (82 files) with six categories: `beverage_basics`, `beverage_menu`, `feast`, `mechanisms`, `misc` and `worldgen`. Both `en_us` and `zh_cn` trees are fully present.

So there is already an in-game reference. These pages are a **supplement** — they cover the mechanics the book explains, plus the source-level facts the book does not mention.
