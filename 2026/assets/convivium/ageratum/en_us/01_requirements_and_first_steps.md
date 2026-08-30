---
title: Requirements and First Steps
navigation:
  title: 01 Requirements and First Steps
---

# Requirements and First Steps

## Caupona is mandatory

| Dependency | Type | Range | Side | Ordering |
|:---|:---|:---|:---|:---|
| `caupona` | **required** | `[6.0.2,)` | BOTH | NONE |
| `neoforge` | required | `[26.1.2,)` | BOTH | AFTER |
| `minecraft` | required | `[26.1.2, 26.2)` | BOTH | NONE |

There is nothing to work around here — Convivium is an addon, and the declaration is honest about it. Install Caupona 6.0.2 or newer first.

::: info
The metadata has one small quirk worth knowing if you compare files: **`version` is `${file.jarVersion}`** rather than a Gradle property, while `modId`, `displayName` and `authors` are all hardcoded literals in the toml. That means the mod version you see in game comes from the jar manifest, not from `gradle.properties`.
:::

## Read the built-in book first

Before these pages, open the mod's own Patchouli book. It is bilingual and complete, with six categories:

| Category | What it covers |
|:---|:---|
| `beverage_basics` | Relishes, sways, the sway list, and tastes |
| `beverage_menu` | The individual drinks |
| `feast` | Serving and banquet content |
| `mechanisms` | The machines |
| `misc` | Everything else |
| `worldgen` | What the mod adds to the world |

These Ageratum pages deliberately do not restate the recipe walkthroughs the book already gives. They cover the **system behind them** and the source-level details the book leaves out.

## What you will be building toward

The chain runs roughly:

1. **Grow or gather** the inputs — the mod adds worldgen (2 files) plus tags like `#convivium:fruits` and `#convivium:sweeteners`.
2. **Process them** — grinding and squeezing (16 recipes) turns solids into musts and juices.
3. **Concentrate or convert fluids** — the basin handles evaporation and concentration (3 recipes); fluid conversion handles the rest (6 recipes).
4. **Brew a beverage** — 28 beverage recipes, matched by relish conditions rather than by a fixed grid.
5. **Serve it** — five vessel types (bowl, cup, jug, mug, bottle), or a **Beverage Vending Machine**.

Steps 2–4 are where the actual system lives; see [Tastes and relishes](02_tastes_and_relishes) and [Beverages and recipes](03_beverages_and_recipes).

## The vessels

A finished beverage exists in five presentations, each with its own display name pattern:

| Item | Display when filled |
|:---|:---|
| `convivium:beverage` | `Bottle of %s` |
| `convivium:beverage_bowl` | `Bowl of %s` |
| `convivium:beverage_cup` | `Cup of %s` |
| `convivium:beverage_jug` | `Jug of %s` |
| `convivium:beverage_mug` | `Mug of %s` |

::: warning
**All five of those base item names, plus the taste tooltip abbreviations, are missing from `zh_cn`.** On a Chinese client the empty-vessel names and the taste readout fall back to raw keys. Details in [Equipment and good to know](04_equipment_fluids_and_technical_notes).
:::

## Two JEI categories

If you have JEI installed, two custom categories appear:

- **Evaporation & Concentration** — the basin
- **Grinding & Squeezing** — the grinder

Beverage matching itself is condition-based rather than grid-based, which is why it does not reduce to a simple JEI page the way a shaped recipe does.

[Back to index](index)
