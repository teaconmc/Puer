---
title: The Crafting Engine
navigation:
  title: The Crafting Engine
description: A dependency-graph solver, a portable calculator, and a patched altar that can output more than one item.
---

# The crafting engine

This is the most substantial piece of machinery in the addon, and the least visible.

## Two graph solvers, not one

The code carries **two separate node-graph packages**, and the split tells you how the system works:

| Package | Node types |
|:---|:---|
| **Generator** | `CraftNode`, `IngredientNode`, `ItemNode`, `SpecialCraftNode`, `Node` |
| **Solver** | `CraftNode`, `CraftNodeBasic`, `ItemNode`, `ItemNodeBasic`, `SimCraftNode`, `SimItemNode`, `Node` |

The generator side builds a graph of what depends on what. The solver side walks it — and note the **`Sim` prefixed nodes**: there is a **simulation layer** that works out whether a plan would succeed before a maid is sent to execute it.

That is why asking for a deep recipe chain works: the mod does not blindly try the final recipe and fail. It resolves the tree, simulates it against what you actually have, and only then produces work.

## The Craft Guide

`craft_guide` is the item that carries a crafting instruction. Like the request list, it has both an altar recipe and a **copy recipe** — configure one guide, duplicate it for every maid that should know how to make that thing.

## The Portable Craft Calculator

`portable_craft_calculator_bauble` is **worn**, not held. It is the player-facing face of the solver: rather than sending a maid and finding out, you carry the calculator and get an answer.

Being a bauble matters practically — it works while your hands are free, which is the whole point of a tool you consult constantly while building a request.

## The altar was taught to output more than one item

Touhou Little Maid's altar spawns a single result. This addon needs recipes that produce several things at once, so it patches `AltarRecipe.spawnItem`:

- if the recipe's result carries the addon's own **`TO_SPAWN_ITEMS`** data component,
- it spawns **every** stack in that list,
- strips the component from each copy so the marker does not propagate,
- and **cancels** the vanilla single-spawn.

So a single altar recipe can yield **several different items at once**, which the parent mod's altar could not do on its own.

This mechanism has been actively fixed for **quantity** problems, so if you saw wrong output counts in an older version, that is the area that changed.

## Crafting retries are the highest ceiling in the mod

| Option | Default |
|:---|:---|
| `behavior.max_craft_tries` | **600** |
| `behavior.max_store_tries` | 3 |
| `behavior.max_logistics_tries` | 50 |

**Six hundred** attempts for crafting against three for storing. That asymmetry is the single most informative number in the configuration: a crafting job is expected to be a long chain of many steps, each of which may need to wait for an earlier one, so the ceiling has to accommodate the whole tree rather than a single action.

If a maid appears to give up on a long chain, this is the number to check — and if she appears to loop forever on something impossible, this is the number to lower.

`speed.crafting` defaults to `0.5`, the same as most other activities.

## Recipe transfer from JEI

JEI's recipe transfer is supported — the "+" button that fills a crafting grid from a recipe view works with this addon's own crafting interfaces, so you can push a recipe straight to a maid.

Both JEI and EMI are supported, and ingredient requests from either work by default; see [Playing with other mods](07_integrations).

## What this means in practice

1. Wear the **calculator** while you plan.
2. Write a **craft guide** for anything a maid should be able to make.
3. Put the request on a **request list** and hand it over.
4. The solver resolves the tree, simulates it, and the maid executes — for up to 600 attempts.

You do not need to break a recipe down by hand. That is what the two node packages are for.

[Back to index](index)
