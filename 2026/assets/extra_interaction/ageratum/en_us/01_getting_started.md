---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

There is nothing to craft, mine or unlock. Extra Interaction adds a client-side option list and the plumbing that fills it; the content in that list always comes from somewhere else.

## What the Mod Adds

- One key mapping: `key.extra_interact.interact`, bound to `F` by default, in the Gameplay category.
- One HUD element: the interaction option list, drawn after the rest of the GUI.
- One client config file: `extra_interaction_client.toml`, reachable from the mod list Config button.
- One server reload listener, `extra_interaction:entity_talk`, that loads interaction data from datapacks.
- Two network payloads used to run an interaction on the server and to sync talk data to clients.

## What the Mod Does Not Add

- No items, blocks, entities, block entities, menus or particles.
- No creative mode tab.
- No recipes, loot tables or tags.
- No commands. The mod never registers a command root of its own; it only *executes* commands that datapack authors write.
- No built-in interactions. The bundled example class (`TeaconExample`) is commented out in its entirety, so it contributes nothing at runtime.

## Seeing Your First Option

The mod ships one working example, in the `example` namespace, under `data/example/extra_interaction/entity_talk/example.json`. It attaches a talk interaction to `minecraft:player` and `minecraft:mannequin` for entities whose display name is `Zi_Min`, `Amotassic` or `zhenshiz`.

So the shortest path to a visible option is:

1. Place a mannequin, or have a second player join.
2. Give that entity one of the names above — for a mannequin, rename it; for a player, the account name must match.
3. Look at it. An option appears at roughly 70% screen width and 50% screen height, labelled with the entity's own name.
4. Press `F` to run it.

Two of the three names run `tellraw` commands and work anywhere. The `Amotassic` / `zhenshiz` entry runs a `chatbox …` command, which only exists when the separate ChatBox mod is installed — Extra Interaction declares no dependency on it, so without ChatBox that command simply fails.

## If Nothing Appears

The list stays empty in all of these cases, and none of them is a bug:

- No mod or datapack has registered an interaction for the block or entity you are looking at.
- You are not looking at anything (the crosshair misses).
- A screen or menu is open — the list is suppressed whenever a GUI screen is showing.
- The interaction exists but its condition is currently false, and you are not holding the force-display key. See [Option List and Controls](02_option_list_and_controls).

To populate the list with real content, either write an [entity talk datapack](03_entity_talk) or use the [developer API](06_developer_api).

## Version and Metadata Facts

| Field | Value |
|:---|:---|
| Mod version | `1.0` |
| Minecraft | `26.1.2`, accepted range `[26.1,27)` |
| NeoForge | `26.1.2.43-beta`, accepted range `[26.1,)` |
| Loader range | `[4,)` |
| Declared dependencies | `neoforge` and `minecraft` only |
| Authors | Amotassic |
| License | MIT, in both `gradle.properties` and the bundled `LICENSE` |

[Back to the Extra Interaction index](index)
