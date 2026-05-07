---
title: "Current Content"
navigation:
  title: "01 Current Content"
items:
  - "lendandregret:icon_item"
---

# Current Content

## Registered content

The current source exposes only two related registry entries to players:

| Type | ID | In-game name or purpose |
|:--|:--|:--|
| Creative mode tab | `lendandregret:main` | Lend & Regret |
| Item | `lendandregret:icon_item` | Lend & Regret; also used as the tab icon |

A deferred block registry exists, but it contains no blocks. The common and client injection lists in the mixin configuration are empty as well.

## Obtaining the icon

Open the Lend & Regret tab in the creative inventory. With sufficient command permission, the item can also be obtained with:

`/give @s lendandregret:icon_item`

The source creates it through `registerSimpleItem`, with no additional properties, data components, or custom item class. It therefore has no use, attack, placement, container, or networking behavior, and it has no recipe. Its current purposes are collection, display, and identification of the mod's creative tab.

## Features not currently present

- No loan, collateral, repayment, deadline, balance, or debt-collection data.
- No diamonds-for-fish exchange; the description is not a recipe or quest hint.
- No blocks, entities, menus, screens, or saved gameplay state.
- No player commands, key mappings, or configuration options.
- No recipe data directory and no recipe ID that an Ageratum recipe component could reference.

## Version boundary

This page follows the currently checked-out `0.0.1` source. The mod name, description, and future ideas do not override registry facts. If a later version adds gameplay, confirm its new items, blocks, recipes, and interactions before adding chapters or item bindings.

[Back to index](index)
