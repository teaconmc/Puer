---
title: Recipes
navigation:
  title: Recipes
description: The custom zhen recipe format, its datapack constraints, its reload behaviour, and its gaps.
---

# Recipes

## A fully custom recipe system

Zhen recipes do not use the vanilla recipe manager. The mod ships its own type, `magic_io:zhen_block`, with its own loader, manager, serializer and sync payload.

A recipe looks like this:

```json
{
  "type": "magic_io:zhen_block",
  "zhen_type": "magic_io:abundant_conflux_zhen",
  "inputs": {
    "item_input_all": [{"item": "minecraft:stone", "count": 1}]
  },
  "outputs": {
    "item_output_all": [{"item": "minecraft:cobblestone", "count": 8}],
    "drop_output": [{"loot_table": "magic_io:ore_attract"}]
  },
  "processing_time": 200
}
```

Three things to notice:

- **`zhen_type` names a specific tiered block**, prefix included. A recipe written for `abundant_conflux_zhen` does not run on `archaic_conflux_zhen`.
- **Inputs and outputs are keyed by slot zone**, not slot index — the same zone names the face access map uses. See [04 Zhen Bus and IO](04_zhen_bus_and_io).
- **An output can be a loot table** rather than a fixed stack, via `drop_output`. That is what the JEI category's "± Loot" hint refers to: such an output is a roll, not a guarantee.

## Loading, reloading and syncing

The loading path is hand-rolled and worth understanding because it has real consequences:

- Recipes are collected by **scanning the `recipe` directory for JSON files whose namespace is `magic_io`**. This happens on server start and again through a registered reload listener.
- **`/reload` works.** The reload listener clears the manager and re-reads everything, so iterating on recipes does not require a restart.
- Loaded recipes are **pushed to clients** with a sync payload, both when the server starts and when a player logs in. That is how JEI knows about them.
- **Vanilla furnace recipes are injected** into the zhen recipe manager during load, so smelting recipes become available to zhen machines without being rewritten.
- A malformed recipe is caught per file, logged, and skipped — one bad JSON does not take down the rest.

### The datapack constraint

Because the scan filters on the **`magic_io` namespace**, a datapack that adds zhen recipes must place them under **`data/magic_io/recipe/`**. Recipes placed under your own namespace are never seen, no matter how correct the JSON is.

This is the single most important thing for a pack author to know, and nothing in the game reports it — an ignored recipe simply never appears.

## What ships

35 recipe files, organised into directories by tier:

| Tier | Recipes |
|:---|--:|
| Unstable | 4 |
| Stable | 7 |
| Sturdy | 8 |
| Abundant | 8 |
| Archaic | 7 |
| Primeval | **1** |

Set against **138 zhen blocks**, this is a sample rather than full coverage. Most zhen types have nothing to process, and the Primeval tier — 37 blocks — has exactly one recipe.

One concrete product worth knowing: **`coal_coke` is the output of the `unstable/cinder` recipe**, which is why it is a registered item that does not appear in the creative tab.

## Two loot table references are broken

The mod contains three loot tables: `random_treasure`, `sift_metal_drop` and `zhen_loot`.

Recipes reference **four**:

| Referenced | Exists | Referenced by |
|:---|:---|:---|
| `magic_io:random_treasure` | ✔ | |
| `magic_io:sift_metal_drop` | ✔ | |
| **`magic_io:ore_attract`** | ✘ **missing** | `abundant/conflux` |
| **`magic_io:ore_fragment`** | ✘ **missing** | `abundant/quake` |

So the drop outputs of the **Abundant Conflux** and **Abundant Quake** zhen recipes point at loot tables that do not ship. Those two recipes still produce their ordinary item outputs; the bonus roll simply yields nothing.

Note also that `zhen_loot` exists but is not referenced by any recipe, and that all three tables are declared with the `minecraft:empty` type.

If you are building a pack around this mod, supplying `ore_attract` and `ore_fragment` as datapack loot tables restores the intended bonus drops.

[Back to index](index)
