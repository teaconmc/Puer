---
title: Development Skeleton
navigation:
  title: Development Skeleton
description: The declared but unregistered sample content, the template language file, and the config keys that never load.
---

# Development skeleton

## Declared but not registered

The source defines several deferred registers and holders, but none of them is ever attached to the mod event bus:

| Declared ID | Type | Declaration site |
|:---|:---|:---|
| `infinite_board_games:example_block` | Block (stone map colour) | `BLOCKS.registerSimpleBlock` |
| `infinite_board_games:example_block` | Block item | `ITEMS.registerSimpleBlockItem` |
| `infinite_board_games:example_item` | Food item (always edible, nutrition 1, saturation modifier 2) | `ITEMS.registerSimpleItem` |
| `infinite_board_games:example_tab` | Creative tab placed after the combat tab, icon `example_item` | `CREATIVE_MODE_TABS.register` |

Because these IDs are never registered, they cannot be obtained, given, referenced by a data pack, or found in the creative inventory.

## What is commented out

In the mod constructor:

- `BLOCKS.register(modEventBus)`, `ITEMS.register(modEventBus)`, `CREATIVE_MODE_TABS.register(modEventBus)` — registration of all deferred content.
- `NeoForge.EVENT_BUS.register(this)` — game event bus subscription.
- `modEventBus.addListener(this::commonSetup)` — the common setup listener.
- `modEventBus.addListener(this::addCreative)` — adding the block item to the vanilla building blocks tab.
- `modContainer.registerConfig(ModConfig.Type.COMMON, Config.SPEC)` — the common config file.

In the client class:

- `container.registerExtensionPoint(IConfigScreenFactory.class, ConfigurationScreen::new)` — the NeoForge config screen.
- The `@SubscribeEvent` annotation on `onClientSetup`, so the client setup listener never fires.

`onServerStarting` also keeps its `@SubscribeEvent` commented out and is never called.

## Configuration (inactive)

`Config` builds a `ModConfigSpec` with the following keys, but the spec is never registered with the mod container, so **no `infinite_board_games-common.toml` is generated** in the current source state:

| Key | Type | Default | Notes |
|:---|:---|:---|:---|
| `logDirtBlock` | boolean | `true` | "Whether to log the dirt block on common setup" |
| `magicNumber` | integer | `42` | Range `0` – `Integer.MAX_VALUE` |
| `magicNumberIntroduction` | string | `The magic number is... ` | Prefix for the magic-number log line |
| `items` | string list | `["minecraft:iron_ingot"]` | Validated against the item registry; may be empty |

Because `commonSetup` never runs, none of these values is ever read even if a file were supplied by hand.

## Language file

The only shipped resource is a template `assets/infinite_board_games/lang/en_us.json` containing MDK placeholder strings:

- `itemGroup.infinite_board_games` → "Example Mod Tab"
- `block.infinite_board_games.example_block` → "Example Block"
- `item.infinite_board_games.example_item` → "Example Item"
- Seven `infinite_board_games.configuration.*` keys for the config screen.

Two mismatches are worth recording:

- The creative tab is built with the title key `itemGroup.examplemod`, **not** `itemGroup.infinite_board_games`. Even if the tab were registered, its title would render as the raw untranslated key, and the shipped `itemGroup.infinite_board_games` string would stay unused.
- There is **no `zh_cn.json`**, so once content is registered its names will fall back to the English placeholders above.

## Runtime effect

A client or server that installs this mod loads the classes and performs no registration: no blocks, items, creative tabs, entities, commands, recipes, key binds, configuration file or event handlers become active. The mod appears in the mod list and does nothing else.

The data-driven board-game API described in `README.md` and in the mod description is not part of this checkout and must not be treated as current behaviour.

[Back to index](index)
