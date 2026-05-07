---
title: Beverages and Recipes
navigation:
  title: 03 Beverages and Recipes
---

# Beverages and Recipes

## The seven recipe types

All 158 recipes fall into seven types, and the distribution says a lot about the mod:

| Type | Count | What it does |
|:---|---:|:---|
| **`caupona:bowl`** | **88** | **Caupona's own type** — bowl dishes this mod adds |
| `convivium:beverage` | 28 | Brewing a drink |
| `convivium:grinding` | 16 | Grinding and squeezing |
| `convivium:relish_fluid` | 10 | Relish-bearing fluids |
| `convivium:relish` | 7 | Relishes |
| **`convivium:convertion`** | 6 | Fluid conversion — **note the spelling** |
| `convivium:basin` | 3 | Evaporation and concentration |

::: info
**The largest group is not this mod's own type.** 88 of 158 recipes are `caupona:bowl` — Convivium's biggest contribution by volume is new dishes for Caupona's existing bowl system, not new machinery. The beverage system is the mod's identity; the bowl dishes are its bulk.
:::

::: warning
**`convivium:convertion` is spelled that way in the source.** The correct English word is *conversion*, but the registered recipe type id is `convertion`. **Datapacks and any reference to it must use the misspelled form**, because that is the actual identifier. Do not "fix" it in a datapack — it simply will not match.
:::

## How a beverage recipe is matched

Beverage recipes are condition-based, not grid-based. Here is a real one, `ade.json`, in full shape:

```json
{
  "type": "convivium:beverage",
  "allowedRelish": ["seasons", "hearth"],
  "relish": [
    { "type": "and",
      "cond1": { "type": "contains", "relish": "seasons" },
      "cond2": { "type": "contains", "relish": "hearth" } }
  ],
  "required": [],
  "optional": ["#convivium:fruits", "#convivium:sweeteners"],
  "density": 0.0,
  "priority": 100,
  "time": 200,
  "removeNBT": false,
  "output": "convivium:ade"
}
```

Reading it field by field:

| Field | Meaning |
|:---|:---|
| `allowedRelish` | Which relishes this recipe tolerates at all |
| **`relish`** | **A condition tree** — here `and(contains seasons, contains hearth)` |
| `required` | Ingredients that must be present (empty here) |
| `optional` | Ingredients that may participate — **tags**, not fixed items |
| `density` | A numeric property of the result |
| **`priority`** | **Which recipe wins when several match** |
| `time` | Ticks to complete (200 = 10 seconds) |
| `removeNBT` | Whether component data is stripped |

## The two fields that decide your outcome

::: danger
**`relish` is a nested condition tree, and `priority` breaks ties.**

The `relish` field is an array of conditions, and conditions compose: `and` takes `cond1` and `cond2`, each of which can itself be another condition. So a recipe can express "contains Vesta **and** contains Vertumnus" — and by nesting, considerably more than that.

Because several recipes can match the same brew, **`priority` decides which one you actually get**. A recipe that is theoretically satisfiable may never appear if a higher-priority recipe also matches the same relish set.

The practical consequence is the same one the condition tree implies: **narrowing the relish set is how you steer the result, and removing a relish is often more effective than adding an ingredient.**
:::

::: info
If this structure feels familiar, it is the same shape as 577 `crockpot`'s requirement system — a scoring-and-matching model with a priority tiebreak, rather than a lookup table. Both mods reward understanding the matcher over memorising recipes.
:::

## Fluid conversion

`convivium:convertion` moves one fluid to another, with an optional heat requirement:

```json
{
  "type": "convivium:convertion",
  "fluidIn":  { "amount": 250, "ingredient": "convivium:berry_must" },
  "fluidOut": { "amount": 250, "id": "convivium:berry_juice" },
  "heated": true,
  "time": 200,
  "vairants": {}
}
```

Two things to note:

- **`heated: true`** means the conversion needs a heat source — this is where Caupona's hearth infrastructure comes in.
- **`vairants` is misspelled** (should be *variants*). Like `convertion`, it is the real field name, so a datapack must spell it the same wrong way.

::: warning
**This mod has two misspelled-but-real identifiers**: the recipe type `convivium:convertion` and the field `vairants`. Both are load-bearing. Documenting them with the correct spelling would be documenting something that does not exist — the same situation as `beecrasy`'s `hiveFloringRadius` config key.
:::

## Amounts are in millibuckets

`250` in the example is 250 mB — a quarter of a bucket. Fluid recipes throughout the mod work at this granularity, so a full bucket of must yields four conversions' worth.

[Back to index](index)
