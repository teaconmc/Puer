---
title: Hurriedness
navigation:
  title: Hurriedness
---

# Hurriedness（急）

Hurriedness is a Minecraft mod by maxpixel (`cn.maxpixel.mods`) targeting Minecraft 26.1.2 with NeoForge 26.1.2.76. The current source checkout is version `0.1` under the MIT license and uses the mod id `hurriedness`.

## Current source state

This checkout is a framework skeleton: all functional wiring is commented out. The fields and classes for example content exist, but nothing is actually registered when the mod loads.

- `HurriednessMod` declares deferred registers for blocks, items and creative tabs.
- `EXAMPLE_BLOCK` (`hurriedness:example_block`), `EXAMPLE_BLOCK_ITEM` and `EXAMPLE_ITEM` (`hurriedness:example_item`, a food item with nutrition 1 and saturation modifier 2) are defined as fields.
- `EXAMPLE_TAB` (`hurriedness:example_tab`) is defined as a creative tab placed after the combat tab.
- `Config` defines `logDirtBlock`, `magicNumber`, `magicNumberIntroduction` and an `items` list, but the config is never registered with a `ModConfig` type.

Because the constructor comments out `BLOCKS.register(...)`, `ITEMS.register(...)`, `CREATIVE_MODE_TABS.register(...)`, `NeoForge.EVENT_BUS.register(this)`, the creative-content listener and `modContainer.registerConfig(...)`, none of these registrations take effect. The client class also comments out its config screen extension point and client setup listener.

## What actually runs

In practice only the constructor executes; no blocks, items, tabs, configs or event handlers are active. The commented sample code logs a message and, if `Config.LOG_DIRT_BLOCK` were loaded, would log the dirt block key; none of that runs under the current registration state.

## Reading path

- [01 Development skeleton](01_development_skeleton) — the declared but unregistered sample content and why it is inactive.
