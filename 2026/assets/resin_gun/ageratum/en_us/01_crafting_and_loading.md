---
title: "Crafting and Loading"
navigation:
  title: "01 Crafting and Loading"
---

# Crafting and Loading

## Crafting Resin Bullets

<recipe id="resin_gun:resin_bullet"/>

One glass bottle and one resin clump craft one Resin Bullet. Obtaining a resin clump for the first time unlocks both the bullet and gun recipes.

## Crafting the Resin Gun

<recipe id="resin_gun:resin_gun"/>

The Resin Gun uses a bowl, crossbow, glass bottle, and lever. The result is unstackable and starts unloaded.

## Loading Steps

1. For the intended non-Creative flow, keep at least one Resin Bullet in your inventory; Creative can skip this.
2. Hold the unloaded Resin Gun and keep using it.
3. Continue holding use for about `3.5` seconds, until the loading sounds finish.
4. The model and use state change when loading completes.

The normal non-Creative flow consumes one Resin Bullet. Creative passes the ammunition check and consumes none. An empty gun that has entered `reload:1b` is changed to its disabled loading state when bullets disappear.

An unloaded gun can enter the loading flow in either hand, but the current firing trigger checks only the main hand. A loaded offhand gun cannot fire by itself; move it to the main hand after loading.

::: warning
The current state machine has a free-reload defect. A newly crafted or just-fired empty gun carries `reload:0b` and a ready 3.5-second use remainder, so a non-Creative player can complete that reload with no Resin Bullet. Every shot creates this state again; ammunition checks cannot currently enforce survival balance.
:::

::: tip
Each gun holds one shot. After firing, the full loading action is required again.
:::

[Back to the Resin Gun index](index)
