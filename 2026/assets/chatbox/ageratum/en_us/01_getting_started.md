---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

ChatBox has nothing to craft and nothing to find in the world. It ships a renderer and a command; the conversations themselves come from datapacks.

## What the Mod Adds

- One command root, `/chatbox`, gated behind Game Master permission (`2`).
- Two server reload listeners that read dialogue and theme JSON from datapacks.
- One client dialogue renderer, with a screen mode and an overlay mode.
- One history-log screen, reachable from an in-dialogue button.
- One client config file, `chatbox_config`, edited through Cloth Config.
- One sound event, `chatbox:ciallo`, and a set of default GUI textures for dialogue boxes, options, buttons and key prompts.
- One saved data file per world, `chatbox:chatbox_trigger_count`, recording per-player trigger counts.

## What the Mod Does Not Add

- No items, blocks, entities, block entities, menus or particles — the registries are empty.
- No creative mode tab.
- No recipes, loot tables or tags.
- No world generation.

## The Two Datapack Folders

```
data/<namespace>/chatbox/dialogues/<name>.json
data/<namespace>/chatbox/theme/<name>.json
```

A **dialogue** file describes what is said, in what order, with which options and side effects. A **theme** file describes what the dialogue box, options, portraits and buttons look like. Both are plain JSON, both are re-read by `/reload`, and both are addressed by the usual `namespace:name` identifier derived from the file path.

The two loaders are registered as `chatbox:chatbox/dialogues` and `chatbox:chatbox/theme`.

## The Bundled Demo

The mod jar carries a `test` namespace with two dialogue files and two themes:

| Identifier | Purpose |
|:---|:---|
| `test:intro` | Feature tour, written against the default theme |
| `test:intro_gal` | The same tour styled for the `test:gal` theme |
| `test:default` | Default theme: dialogue box, options, four portrait types, function buttons |
| `test:gal` | Alternative visual-novel styling |

The fastest way to see the mod working is therefore:

```
/chatbox skip test:intro start
```

`start` is the group name inside the file. The tour walks through screen mode versus overlay mode, options, portraits, component render events and debug mode, so it doubles as a live reference while you write your own files.

To change the look without touching the dialogue, switch themes:

```
/chatbox theme test:gal
```

## Writing Your First Dialogue

1. Create `data/mypack/chatbox/dialogues/hello.json`.
2. Give it a `dialogues` object with one group — for example `start` — holding an array of lines.
3. Give each line a `dialogBox` with a `name` and `text`.
4. Run `/reload`, then `/chatbox skip mypack:hello start`.

The full field list is in [Dialogue Files](03_dialogue_files). If a line needs a portrait, an option, a sound or a command, everything is declared inside that same line object.

::: info
A dialogue file does not have to declare a theme. When `theme` is absent the client keeps whatever theme is currently active, which is why the bundled tour can be re-styled by a single `/chatbox theme` call.
:::

## Version and Metadata Facts

| Field | Value |
|:---|:---|
| Mod version | `1.1.4` |
| Minecraft | `26.1.2`, accepted range `[26,27)` |
| NeoForge | `26.1.2.43-beta`, dependency range `[26.1,)`, loader `[4,)` |
| Fabric | Fabric API `0.148.2+26.1.2`, loader `0.18.4` |
| Java toolchain | 25 |
| Authors | zhenshiz, Amotassic |
| License | `GPL-3.0 license` |
| Issue tracker | declared in the NeoForge metadata |

[Back to the ChatBox index](index)
