---
title: "Brewing and Recipes"
navigation:
  title: "05 Brewing and Recipes"
---

# Brewing and Recipes

## Brewing chain

The current source starts with a **Thick Potion**, not an Awkward Potion:

1. Thick Potion + Nestle item -> Potion of Nestle, lasting `5` seconds.
2. Potion of Nestle + Slime Ball -> Potion of Desire Nestle, lasting `5` seconds.
3. Potion of Nestle + Cactus -> Potion of Nestle Resistance, lasting `3` minutes.
4. Potion of Nestle Resistance + Redstone -> extended resistance, lasting `8` minutes.
5. Potion of Nestle + Rotten Flesh -> Potion of Disgust Nestle, lasting `3` minutes.
6. Potion of Disgust Nestle + Redstone -> extended disgust, lasting `8` minutes.

::: warning
If an older description says Awkward Potion or gives different output details, follow the registrations listed here. Brewing mixes are not crafting-table recipes, so they are not rendered by the recipe components below.
:::

## Basic items

<recipe id="nestle:nestle"/>

<recipe id="nestle:nestle_compass"/>

<recipe id="nestle:nestle_lead"/>

<recipe id="nestle:nestle_bound"/>

## Functional blocks

<recipe id="nestle:nestle_block"/>

<recipe id="nestle:nestle_resistance_block"/>

## Clearing a binding

Craft one Nestle Bound by itself to produce a fresh item without the binding component. The data generator writes this real recipe into the `minecraft` namespace:

<recipe id="minecraft:unbind_nestle_bound"/>

This is not a typo; the current resource path is `data/minecraft/recipe/unbind_nestle_bound.json`.

[Back to the Nestle index](index)
