---
title: Tags, Tools and Fuel
navigation:
  title: Tags, Tools and Fuel
description: The two block tags, why you mine these with an axe, and the surprisingly high furnace fuel value.
---

# Tags, Tools and Fuel

## The two tags

The mod ships exactly two block tags, and **all 72 blocks are in both**:

| Tag | Entries | Effect |
|:---|:---|:---|
| `minecraft:mineable/axe` | 72 | These are mined with an **axe** |
| `minecraft:anvil` | 72 | Treated as anvils by anything that reads this tag |

There are **no item tags** and no mod-owned (`woodenanvil:`) tags at all.

### Mined with an axe, not a pickaxe

A vanilla iron anvil is in `mineable/pickaxe`. Wooden anvils are in `mineable/axe` instead — which is thematically right, but means **your pickaxe is the wrong tool**. Combined with strength `3.0`, an axe removes one quickly while a pickaxe is slow.

### The vanilla anvil tag

Being in `minecraft:anvil` means anything that keys off that tag treats a wooden anvil as an anvil. This is what makes them behave as real anvils to the rest of the game rather than merely looking like them.

## Furnace fuel — the big one

`WoodenAnvilEvents` subscribes to `FurnaceFuelBurnTimeEvent` and gives **every** wooden anvil block item a burn time of **3200 ticks**.

::: tip
**3200 ticks is coal-block tier.** For comparison: coal and charcoal burn 1600, a plank burns 300, a log burns 300, and a block of coal burns 16000 — so one wooden anvil smelts **16 items**, twice what a piece of coal does.
:::

Three consequences worth planning around:

- **Every stage burns the same.** A `damaged` anvil is worth exactly as much fuel as a pristine one, so a worn-out anvil is never wasted — burn it. This is the intended answer to the dead-end described in [Damage stages](03_damage_stages.md).
- **Stripped and normal burn the same.** Stripping changes nothing about fuel value.
- **Be careful with autocrafting and hopper-fed furnaces.** An anvil you meant to keep will be consumed silently if it reaches a furnace's fuel slot.

Whether 3200 is well-balanced against a recipe of 3 wood + 4 planks is a design question, but it is unambiguously what the code does.

## No commands, no config options

`Config` builds a `ModConfigSpec` and defines **zero options** — the spec is created and immediately built with nothing in it. There is no config file content to edit, and there are no commands registered anywhere in the mod.

So everything on this page is fixed behaviour: the fuel value, the tool, the tags and the damage chain cannot be tuned without a datapack (for the tags) or a code change (for the rest).

## Client side

`WoodenAnvilClient` exists but only holds standard client setup; there are no client-only mechanics, no key bindings and no HUD. The 75 block models and 72 blockstates are plain vanilla-style anvil variants, one per block plus a few shared parts.

[Back to index](index)
