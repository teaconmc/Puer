---
title: Getting Started
navigation:
  title: Getting Started
description: How to obtain anything at all, and the single tool that assembles a Zhen Bus.
---

# Getting started

## There are no crafting recipes

The mod's 35 recipe files are all of its **own** type, `magic_io:zhen_block` — machine recipes that a zhen block runs. A check across every recipe file finds **zero** `minecraft:crafting_shaped` or `minecraft:crafting_shapeless` entries.

So the only routes to any block or item are:

- the creative tab, or
- `/give`.

## The creative tab

One tab is registered, under the id `example_tab` with the title key `itemGroup.magic_io` ("MagicIO Tab"), positioned before the Combat tab and iconed with the example item. It contains:

- `example_item`
- **all 138 zhen block items**
- `zhen_bus`
- `grid_cell_panel`

Note what is **missing**: `coal_coke` is registered but is **not** in the tab. That is intentional in effect if not by design — coal coke is a **product**, the output of the `unstable/cinder` zhen recipe, so you obtain it by running a machine rather than by taking it from a menu.

`example_item` is additionally injected into the vanilla **Building Blocks** tab, so it appears twice.

## Nothing drops when broken

There is no `loot_table/blocks/` directory. The three loot tables that do exist — `random_treasure`, `sift_metal_drop` and `zhen_loot` — are all declared `minecraft:empty` type and are used as **recipe drop outputs**, not as block drops.

The consequence is blunt: **every block in this mod is destroyed permanently when broken**, in creative as well as survival. Place carefully, and expect to re-take blocks from the tab rather than relocating them.

## The example item is the assembly tool

Despite its name, `example_item` is not a leftover — it is **the only way to install a processor onto a Zhen Bus**, which makes it load-bearing gameplay.

It has two actions:

| Action | Effect |
|:---|:---|
| **Right-click in the air** | cycles a stored face through UP → DOWN → NORTH → SOUTH → WEST → EAST and reports it |
| **Right-click a Zhen Bus** | installs an **unstable sieve** processor on the stored face |

If no face has been stored yet, using it on a bus tells you to right-click air first.

Two honest observations about it:

- Its messages are **hardcoded English literals with colour codes**, not translation keys — for example `§a[Example] Installed sieve on UP`. They will not translate, in any language.
- It always installs an **unstable sieve** specifically. There is no way to choose a different processor with it.

## Optional integrations

Both are declared properly in the mod metadata and backed by service files, so neither is a hidden runtime dependency:

| Mod | Version range | What you get |
|:---|:---|:---|
| **JEI** | `[29.5.0.0,)` | a dedicated zhen recipe category, including a loot-table hint for recipes whose output is a loot table |
| **Jade** | `[26.1.0,)` | six providers showing Zhen Bus contents — items and fluids, client and server side |

If you are going to explore this mod, install JEI. With 138 zhen blocks and 35 recipes, the recipe browser is how you find out which machine does anything at all.

## A realistic first session

1. Give yourself a `zhen_bus`, an `example_item`, and an `unstable_sieve_zhen` block.
2. Place the bus. Right-click air with the example item until it reads the face you want.
3. Right-click the bus to install the sieve on that face.
4. Feed items into that face with a hopper or pipe — see [04 Zhen Bus and IO](04_zhen_bus_and_io).
5. Consult JEI for what an unstable sieve actually accepts; only 4 of the 35 recipes are at the unstable tier.

[Back to index](index)
