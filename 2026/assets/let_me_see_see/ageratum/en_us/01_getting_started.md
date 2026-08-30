---
title: Getting Started
navigation:
  title: Getting Started
items:
  - let_me_see_see:scanner
description: The three items, why none of them are craftable, and the setup that unlocks the useful half of the mod.
---

# Getting Started

## Obtaining the tools

The mod has **no `data/` directory**, which means no recipes, no loot tables and no tags. All three items come from one of two places:

- The creative tab **`let_me_see_see:tab`** (display name "LetMeSeeSee(YourCode)"), which sits after Food & Drinks / Ingredients / Spawn Eggs and contains exactly three entries.
- `/give <player> let_me_see_see:scanner` and friends.

The tab's icon is the scanner. All three items stack to 1.

## The three items

| Item | Interaction | Side |
|:---|:---|:---|
| `scanner` | **Right-click a block or a mob** | Analysis runs **client-side only** |
| `explorer` | **Right-click in the air** (use) | Opens a client screen via a server → client packet |
| `item_data_exporter` | **Right-click in the air** (use) | Opens a client screen via a server → client packet |

The two screen items share one base class (`GUIItem`), so they behave identically as items — the difference is entirely in which screen opens.

## Setup: two config options

The config spec has exactly **two** entries, both of which you will probably want to fill in:

| Key | Default | Why it matters |
|:---|:---|:---|
| `idea_path` | `""` (empty) | Path to `idea64.exe` (or any program that opens `.class` files). Enables the "OpenInIDEA" button. |
| `languages` | `["en_us", "zh_cn"]` | Which languages to write item names in when exporting item data. |

::: tip
Both are optional in the sense that the mod loads without them, but leaving `idea_path` empty simply greys out a feature — the screen will tell you "Not configured the IDEA path." There is an **Open Config File** button inside the GUI so you do not have to hunt for the TOML.
:::

## The decompiler needs no setup at all

Class preview works out of the box. The mod **bundles its decompiler** — `org.vineflower:vineflower:1.10.1` is packed jar-in-jar and invoked in-process, so there is nothing to download and no path to configure.

::: warning
There is a leftover string in the language files reading *"You need set the path of Fernflower to use class preview."* **Ignore it.** Its key (`preview.no_fernflower`) is referenced nowhere in the source, and no config option for a decompiler path exists — the message can never be shown. Do not go hunting for a Fernflower jar. See [Decompiling and the IDE](04_decompiling_and_ide).
:::

## Setup: the Java agent

The Class Explorer enumerates *loaded* classes, which requires `java.lang.instrument.Instrumentation`. The mod supplies this itself via its own jar manifest (`Agent-Class` / `Launcher-Agent-Class` / `Can-Retransform-Classes`) and self-attaches at runtime.

When that fails, you get the dedicated **Class Explorer Unavailable** screen rather than a crash or a silent empty list. Details in [Troubleshooting](06_technical_notes).

## What is not here

No blocks, no block entities, no entities, no menus registered to the vanilla menu registry, no commands, no advancements, no sounds, no world generation. The mod is three items plus a set of client screens.

[Back to index](index)
