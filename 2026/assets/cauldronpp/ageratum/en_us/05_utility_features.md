---
title: "Utility features"
navigation:
  title: "05 Utility features"
---

# Utility features

Besides brewing, the Cauldron (Legacy) keeps and extends the vanilla cauldron's cleaning duties, and adds a dyeing system that vanilla does not have.

## Cleaning

These operations require water in the cauldron and consume 1 level each:

| Item | Result |
|:---|:---|
| Any dyed leather armour or leather horse armour | Removes its dye |
| Any banner | Removes its topmost pattern layer |
| Any shield | Removes its banner patterns and base colour |
| Any coloured shulker box | Returns it to an uncoloured shulker box |

Cleaning a leather item only works when the cauldron holds plain water — coloured water dyes it instead. Cleaning a shield requires plain water as well.

## Dyeing the water

This is the mod's own addition. Right-click a cauldron of water with any of the 16 dyes, or with bone meal, lapis lazuli, cocoa beans, or an ink sac, and the water becomes **coloured water**.

Adding more dye to already-coloured water mixes the colours: the mod averages the two RGB values and then rescales the result towards the brighter of the two, so repeated dyeing shifts the shade rather than simply overwriting it. Dye is consumed unless you are in creative mode.

Dyeing does not consume a level — it changes the liquid type in place.

## Dyeing leather with coloured water

Once the cauldron holds coloured water, right-clicking it with leather armour or leather horse armour applies that colour and consumes 1 level. If the item already has a colour, the two are blended with the same mixing rule used for the water, so you can build up a shade across several dips.

## Interaction summary

| Cauldron contents | Leather item behaviour |
|:---|:---|
| Water | Strips the dye |
| Coloured water | Applies or blends in the water's colour |
| Potion, lava, powder snow, empty | No interaction |

Coloured water still behaves like water for entity contact: it extinguishes burning entities at the cost of one level.

[Back to index](index)
