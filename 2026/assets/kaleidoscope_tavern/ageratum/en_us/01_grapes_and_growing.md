---
title: "Grapes and Growing"
navigation:
  title: "01 Grapes and Growing"
---

# Grapes and Growing

## Four grape varieties

The crop line is built on grapes, and there are four distinct ones:

| Item | Notes |
|:---|:---|
| `kaleidoscope_tavern:grape` | The baseline |
| `kaleidoscope_tavern:ice_grape` | Has its own crop and trellis blocks |
| `kaleidoscope_tavern:gold_grape` | Has its own crop and trellis blocks |
| `kaleidoscope_tavern:green_grape` | |

All four are registered into the **`diet:fruits`** tag, and `grape` additionally goes into the convention tag **`c:fruits/grapes`** — so other food mods can see them without either side coding for the other.

## Crops and trellises are separate blocks

The mod registers both `*_grape_crop` and `*_grapevine_trellis` block families. That distinction matters for the seasonal integrations below, because the two halves are classified differently.

## Three seasonal-mod integrations, and they disagree

This is the most interesting part of the growing system: **three different mods classify these plants, and each gets its own tag file**.

**SereneSeasons** — the crop and the trellis land in *different* seasons:

| Tag | Contents |
|:---|:---|
| `sereneseasons:tags/block/autumn_crops` | `grape_crop` |
| `sereneseasons:tags/block/spring_crops` | `grapevine_trellis` |

**Ecliptic Seasons** (entry 531 in this same competition) — a moisture classification instead of a season:

```
eclipticseasons:tags/block/crops/average_moist
  grapevine_trellis, ice_grapevine_trellis, gold_grapevine_trellis,
  grape_crop, ice_grape_crop, gold_grape_crop
```

All six growing blocks are declared as **average-moisture crops**.

::: tip
**Two competition entries integrating with each other is worth noticing.** 523 writes a tag into 531's namespace, so if you run both, the grapes participate in Ecliptic Seasons' moisture system correctly. Neither mod declares a dependency on the other, and neither needs to — the tag is inert when the target is absent.
:::

::: info
**SereneSeasons and Ecliptic Seasons are both supported simultaneously, with different models.** SereneSeasons asks "which season?" and gets autumn for the fruit, spring for the vine; Ecliptic Seasons asks "how much moisture?" and gets "average" for everything. The mod answers each on its own terms rather than forcing one classification.
:::

## Wild generation

There is a Ponder scene named `grapevine/wild_generation`, so grapes occur naturally as well as under cultivation. A second scene, `grapevine/planting`, covers deliberate planting — see [Playing with other mods](04_integrations_and_technical_notes) for what Ponder scenes are and when you can see them.

## Grapevine has two by-products

Beyond fruit, the vine itself is useful, and both uses are declared through **NeoForge data maps** rather than recipes:

| Data map | Entry |
|:---|:---|
| `neoforge:data_maps/item/furnace_fuels` | `grapevine` → **burn time 200** |
| `neoforge:data_maps/item/compostables` | `grapevine` → 0.25 chance |

So vine trimmings burn like a plank-tier fuel and compost at a low rate.

## Composting rates

The compostables map also covers the fruit:

| Item | Compost chance | Villager may compost |
|:---|---:|:---|
| `grape` | 0.5 | yes |
| `gold_grape` | 0.5 | yes |
| `green_grape` | 0.5 | yes |
| `grapevine` | 0.25 | — |

::: info
`can_villager_compost: true` on the fruits means **villagers will use them**, which matters if you farm grapes near a village with composters.
:::

## Where the grapes go

Grapes feed the two processing machines — the pressing tub and the barrel — which is where wine comes from. See [Fermenting and pressing](02_fermenting_and_pressing).

[Back to index](index)
