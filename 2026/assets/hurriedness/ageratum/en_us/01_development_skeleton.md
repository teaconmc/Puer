---
title: Development skeleton
navigation:
  title: Development skeleton
---

# Development skeleton

## Declared but unregistered content

The source defines several deferred registers and holders, but none of them are registered with the mod event bus:

| Declared ID | Kind | Location |
|:---|:---|:---|
| `hurriedness:example_block` | Block (stone map color) | `BLOCKS.registerSimpleBlock` |
| `hurriedness:example_block` | BlockItem | `ITEMS.registerSimpleBlockItem` |
| `hurriedness:example_item` | Food item (always edible, nutrition 1, saturation 2) | `ITEMS.registerSimpleItem` |
| `hurriedness:example_tab` | Creative tab after the combat tab, icon is `example_item` | `CREATIVE_MODE_TABS.register` |

## What is commented out

In the mod constructor:

- `BLOCKS.register(modEventBus)`, `ITEMS.register(modEventBus)`, `CREATIVE_MODE_TABS.register(modEventBus)` — registration of all deferred content.
- `NeoForge.EVENT_BUS.register(this)` — event bus subscription.
- `modEventBus.addListener(this::addCreative)` — creative tab contents.
- `modContainer.registerConfig(ModConfig.Type.COMMON, Config.SPEC)` — the common config file.

In the client class:

- `container.registerExtensionPoint(IConfigScreenFactory.class, ConfigurationScreen::new)` — the NeoForge config screen.
- The `onClientSetup` listener.

## Configuration (not active)

`Config` defines these keys but never registers a `ModConfigSpec` with the mod container, so no `hurriedness-common.toml` is created under the current source state:

- `logDirtBlock` (boolean, default `true`)
- `magicNumber` (int, default `42`)
- `magicNumberIntroduction` (string, default "The magic number is... ")
- `items` (list of item resource locations, default `["minecraft:iron_ingot"]`, validated against the item registry)

## Runtime impact

A server or client with this mod installed will load the class but perform no registrations: no blocks, items, creative tabs, config files or event handlers become active. Any behavior described in older branches or READMEs is not part of the current checkout.

[Back to index](index)