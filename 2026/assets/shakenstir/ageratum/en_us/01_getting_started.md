---
title: Getting Started
navigation:
  title: Getting Started
items:
  - shakenstir:bartender_spawner
---

# Getting Started

This page walks you through opening your first bar with Shake n Stir.

## Build the Bar

Place a **bar counter** (`bar_counter`) where guests will be served, then use the **bartender spawner** (`bartender_spawner`) to summon a **Bartender** NPC. The Bartender uses its AI to keep the bar running: it works at the counter, watches for unserved customers, reads its assigned recipes and produces the drinks they order. Round out the room with a **cabinet** for storage, a **bar menu** (`bar_menu`) and **recipe scroll**s (`recipe_scroll`) to choose what to make.

## Gather Spirits and Mixers

- **Spirits** come in bottles — `gin`, `whisky`, `vodka`, `rum`, `tequila`, `brandy`, plus an empty `bottle`. Each bottle/block holds its matching spirit fluid.
- **Mixers** — `bubbles` (bubble water), `tonic`, `bitters`, sugar syrup, honey, and juices/lemonade fill out the rest of a recipe.
- **Fresh ingredients** — grow leavened botanicals: `mint`, `stacked_mint` and `mint_seed`, a lemon tree (`lemon_log`, leaves, `lemon_sapling`), `lemon` and `lemon_slice`, `ice_cube`, and `ineberry_grass`. A `squeezer` makes juice.

## Make Your First Drinks

Cocktails are produced through three methods recorded as recipe types: **shaking** (`shake_recipe` in the `shaker` with its `shaker_lid`), **stirring** (`stir_recipe`), and **distilling** (`distiller_recipe` in the `distiller`). Pour the finished cocktail into a `long_drink_glassware` or `short_drink_glassware`, and the `bartender_glove` helps handle hot work.

## Effects & Recovery

Drinking applies effects such as `drunk`, `fall_down`, `lemon`, `paralysis`, `misdirection`, `miss_step` and `dodge`. When the night runs long, `sobering_tea` helps you sober up. Progress triggers (such as `first_drunk`) unlock the advancement tree.

## Configuration

`shakenstir-common.toml` holds `debug_mode`; `shakenstir-server.toml` holds `enable_wrong_fluid_in_bottle` (default true) and `shaker_animation_upload_distance` (default 256).

[Back to index](index)
