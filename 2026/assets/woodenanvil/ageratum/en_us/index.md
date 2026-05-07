---
title: Twelve Wooden Anvil
navigation:
  title: Twelve Wooden Anvil
---

# Twelve Wooden Anvil

**Twelve Wooden Anvil** (namespace `woodenanvil`, version `1.0.1`, MIT) adds anvils made of wood. Twelve wood types, each in a normal and a stripped form, each with three damage stages — **72 blocks in total**.

A wooden anvil is a **fully functional anvil**: it opens the vanilla anvil menu and does everything an iron anvil does. What differs is how you get it, how it wears out, and what you can do with the remains.

## Reading guide

- [01 Getting started](01_getting_started.md) — the creative tab and all 24 crafting recipes.
- [02 The twelve woods](02_the_twelve_woods.md) — every wood type and its two forms.
- [03 Damage stages](03_damage_stages.md) — how wooden anvils degrade and what that means.
- [04 Stripping](04_stripping.md) — converting a placed anvil to its stripped form.
- [05 Tags, tools and fuel](05_tags_tools_and_fuel.md) — the two tags, the mining tool, and the fuel value.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / namespace | `woodenanvil` |
| Version / license | `1.0.1` / MIT |
| Minecraft | 26.1.2 (`[26.1.2]`) |
| NeoForge | 26.1.2.75 |
| Creative tab | `woodenanvil:wooden_anvils` |
| Blocks / block items | 72 / 72 |
| Recipes | 24 (base stage only) |
| Languages shipped | 10 |
| Commands / config options | **none** |

## What it is, in one paragraph

Each anvil is registered as a `WoodenAnvilBlock`, which **extends vanilla `AnvilBlock`**. Strength is `3.0 / 3.0` with `MapColor.WOOD` and the wood sound type — considerably weaker than an iron anvil. Because the class extends the vanilla anvil, the menu, the falling behaviour and the anvil-damage hook all come from vanilla; this mod only redirects *which block* the damage step produces.

## The one thing to know first

**The recipe does not use logs.** Despite ids like `woodenanvil:oak_log_anvil`, the crafting ingredient is the **wood** (all-bark) variant — `minecraft:oak_wood`, `minecraft:crimson_hyphae`, `minecraft:bamboo_block` — not the log. See [Getting started](01_getting_started.md) for the exact per-wood table.
