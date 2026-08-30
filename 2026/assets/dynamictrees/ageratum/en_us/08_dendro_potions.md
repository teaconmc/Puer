---
title: "Dendro Potions"
navigation:
  title: "08 Dendro Potions"
---

# Dendro Potions

The `dendro_potion` item is a brewable potion. All potion types share the same item ID and differ by a baked-in type; the creative tab shows only the currently active types.

## The brewing chain

Potion effect types are listed in the `DendroPotion` enum. The brewing handler first brews the configured **biochar base** (default `minecraft:thick`) with charcoal to produce the **Biochar Agent**, then every active type after it is brewed from the previous agent:

| Agent | Index | Ingredient | Effect |
|:---|:---|:---|:---|
| Biochar | 0 | charcoal over the thick potion base | Base of the chain; charcoal ingredient, no direct substance effect of its own |
| Depletion | 1 | slime ball | Removes 15 fertility from the target rooty soil |
| Mega | 2 | brown mushroom | Converts an eligible tree to its mega species, keeping fertility |
| Burgeoning | 3 | bone block | Intended to refill fertility and repeatedly grow the tree over time |

## Using agents

Apply a Dendro agent by right-clicking a dynamic tree or its rooty soil. The item is consumed (or replaced by an empty bottle when applied like a normal potion). Effects:

- **Depletion Agent** — immediately reduces soil fertility by 15 (to a minimum of 0), useful for slowing or stopping a tree.
- **Mega Agent** — replaces the species and rooty soil with the matching mega species while preserving fertility.
- **Burgeoning Agent** — in the current source it immediately refills fertility to 15. The intended lingering loop (a growth pulse every 24 ticks until the soil is depleted again) is part of the Growth substance design, but see the note below.

::: note
Current-source caveats: the `lingering_effector` entity's data and tick logic are commented out in `LingeringEffectorEntity`, and the substance `update` loop is only reachable from that commented code. In practice the **Burgeoning Agent currently performs the immediate fertility refill only** — the repeated growth pulses do not run. The **Harvest Agent** (index 4) exists in the enum and has supporting code, but it is not `active` (no brewing entry, not in the creative tab) and its update loop is likewise not executed, so it cannot be obtained through normal brewing and does not accelerate harvests in the current build.
:::

[Back to the Dynamic Trees index](index)