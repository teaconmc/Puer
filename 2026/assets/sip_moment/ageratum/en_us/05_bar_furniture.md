---
title: Bar Furniture
navigation:
  title: Bar Furniture
description: The bar table, the chair you can sit on, glassware, and the one block you cannot obtain.
---

# Bar furniture

## Bar table

`sip_moment:bar_table` is built from oak plank properties and faces the player when placed. Its collision shape is a genuine table: a **tabletop** filling the upper three sixteenths and a **central pillar** below it, so the space under the rim is open.

Right-clicking it opens the wine list — that is its whole function, and it is documented in [02 The wine list](02_the_wine_list).

## Bar chair

`sip_moment:bar_chair`, also oak-plank based, is **sittable**. The mod registers a dedicated seat entity for it: right-clicking spawns the invisible rider that carries you, in the same way most furniture mods handle chairs. Dismount as you would any mount.

Because the seat is an entity rather than a block state, a chair that is occupied and then broken frees its rider rather than trapping them.

## Glassware

Two empty vessels exist as both item and block:

| Id | What it is for |
|:---|:---|
| `goblet` | receives Kyoho wine poured from the bottle |
| `champagne_glass` | receives champagne poured from the bottle |

Both are built from vanilla glass properties and can hold a **stack of up to four** in a single block space, like the served drinks. They are the only two vessels the wine list sells, and pouring is covered in [03 Drinks and sipping](03_drinks_and_sipping).

## Every drink is furniture too

All ten drinks are placeable blocks with a `facing` and a `pile` state. Placed glassware sits low — a flat box occupying the bottom quarter of the block — so a row of drinks along a bar top reads correctly rather than floating. Placement plays the glass sound.

The pile ceilings are worth memorising when dressing a set: **served glasses go four high, bottles and the two soft drinks only two**.

All of this furniture is in the **axe-mineable** tag, so an axe is the fast tool.

## The block you cannot get

`sip_moment:beverage_display_block` is fully implemented — it has a block, a block entity, a dedicated renderer and render state, and the pile item logic references it — but:

- **it has no item form.** No block item is registered for it, so it appears in no creative tab and cannot be held.
- **it has no loot table.** Even if you place it, breaking it drops nothing.

The only way to place it is `/setblock sip_moment:beverage_display_block`. Treat it as an unfinished or internal feature rather than content: the machinery to render drinks displayed on it exists, but the route for a player to ever own one does not.

## Breaking things back

Thirteen of the fifteen blocks drop themselves. The two that do not are the **beverage display block** and **orange juice** — both are destroyed permanently when broken, in survival and creative alike. See [Good to know](07_technical_and_limits).

[Back to index](index)
