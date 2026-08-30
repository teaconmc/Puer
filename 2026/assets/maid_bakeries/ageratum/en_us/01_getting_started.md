---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - maid_bakeries:craft_list
---

# Getting started

## Dependencies — read this before installing

This mod cannot function alone, and its metadata does not say so.

| Mod | Actually required | Declared in metadata |
|:---|:---|:---|
| Touhou Little Maid | **yes** | **no** |
| Bakeries | **yes** | **no** |
| NeoForge, Minecraft | yes | yes |

The mod file declares only NeoForge and Minecraft as dependencies. In practice it reaches into both parent mods heavily — maid tasks, the maid entity, and Bakeries' oven, blender, dough crafting table, bagel and bread knife.

**Why this matters more than usual:** those references sit in code that runs while registries are being built, not behind an "is this mod loaded?" check. A missing parent mod therefore produces a class-loading crash during startup rather than the friendly dependency screen you would normally see. Install both parent mods first and the problem never arises.

The Minecraft version range is also **a single exact version**, `[26.1.2]`, so any other 26.x refuses to load.

## The two items

| Item | Purpose |
|:---|:---|
| Craft List | the editor — you build the work here |
| Craft Order | the written order you hand to a maid |

Both are single-item stacks. Neither is a machine; they are paperwork.

## The one recipe

Only the Craft List is craftable — paper around a book, with round bread above and a feather below:

<recipe id="maid_bakeries:craft_list"/>

Note that this recipe **needs an ingredient from Bakeries** (`bakeries:round_bread`), so even the one recipe this mod ships depends on the parent mod being present.

**The Craft Order has no recipe.** In the current build it comes only from the creative tab or a give command.

## Finding them in creative

Both items sit in one tab, **Maid's Bakeries**, with the Craft List as its icon.

## The shape of a session

1. Install Touhou Little Maid and Bakeries, then this mod.
2. Build the Bakeries machines you want the maid to use, and a maid to use them.
3. Craft a Craft List, open it, and describe the work — see [04 The craft list](04_the_craft_list).
4. Set your maid to the **Baking** task, then hand her a Craft Order — see [03 Giving an order](03_giving_an_order).

If you only want the simpler half of the mod, the **Cut** task needs no paperwork at all: give the maid a bread knife and she slices cakes and bread. See [02 Maid tasks](02_maid_tasks).

[Back to index](index)
