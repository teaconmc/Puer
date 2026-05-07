---
title: "Getting started"
navigation:
  title: "Getting started"
---

# Getting started

## Prerequisites

- Anisum is installed on both the server and the client; the server builds the tab data, and every client rebuilds its creative tab list from the synced payloads.
- The content comes entirely from data: a datapack that ships Anisum tab JSONs plus loot tables, and the items those loot tables produce (vanilla items or items from other mods). Anisum itself registers no items.
- Install JEI for the best experience with data-driven item variants; Better Creative Tabs is supported as well.

## Tab definitions

Each Anisum tab is a JSON file under `data/<namespace>/anisum/` (the file name becomes the tab path). The JSON loader applies data-pack conditions, so conditionally included tab files work like other conditional data. Supported fields:

- `location` — the identifier of the tab, used as its registry key.
- `name` — the display name as a JSON text component; resource packs usually provide matching `itemGroup.*` translations.
- `icon` — an item stack template shown as the tab icon, defaulting to a barrier.
- `include` — list of loot-table patterns whose items belong to this tab.
- `sort` — optional list of patterns defining the display order of the included items.

## Matching and ordering

The server only looks at loot tables that are not in the `minecraft` namespace and that contain exactly one pool with exactly one `LootItem` entry. The rolled item stacks are attached to every tab whose `include` patterns match the table location; tables matching no `include` pattern are not shown anywhere.

Patterns support three forms: full paths (`namespace:path1/path2/location`), wildcards (`namespace:path1/path2/*_cell`), and regular expressions (`namespace:path1/path2/.*_cell`). The `sort` list orders items inside a tab with the same syntax; items matching no sort entry go last, ties are broken by identifier.

## Client configuration

The client config file `anisum-client.toml` exposes one entry:

- `placeSideBySideInventoryAndCreativeTabs` — experimental, off by default. When enabled, the Creative inventory screen becomes a side-by-side layout: the creative tab panel on the left and a full player inventory panel on the right (hotbar, main inventory, armor slots, offhand and a destroy slot). The vanilla inventory tab is blocked from selection in this layout.

## Network sync

The mod communicates over channel version `1` on `anisum` with two payload types: `AnisumSyncStartPayload` announces how many tab payloads the client should expect, and `AnisumTabSyncPayload` carries each tab's location, name, icon and ordered item stacks. After receiving all expected payloads, the client preserves existing non-Anisum tabs, registers the Anisum tabs before the Tools & Utilities tab, and fires the tab clear/loaded events.

## Integrations

- JEI: item subtypes are registered through the item-model data component (except a vanilla list such as potions, tipped arrows and enchanted books), the real width of the side-by-side layout is reported to avoid panel overlap, and tab ingredients are added or removed at runtime.
- Better Creative Tabs: its internal index is invalidated after each tab rebuild.
- Events: `AnisumTabClearEvent` (before the old tabs are removed) and `AnisumTabLoadedEvent` (after the new tabs are registered) are posted on the NeoForge event bus for other mods to hook.

[Back to index](index)