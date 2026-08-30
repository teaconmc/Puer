---
title: "ChatBox"
navigation:
  title: "ChatBox"
---

# ChatBox

ChatBox (`chatbox`) adds a visual-novel dialogue system to Minecraft. Datapacks describe conversations — speaker names, text, portraits, options, sounds, videos, animations and commands — and the mod renders them either as a full interactive screen or as an overlay you can keep playing under.

The mod registers **no items, blocks, entities, recipes or creative tabs**. Everything is driven by one command root, two datapack folders, and a client-side renderer.

## Reading Route

1. [Getting Started](01_getting_started): what the mod does, what it needs, and the bundled demo.
2. [Commands](02_commands): the complete `/chatbox` tree.
3. [Dialogue Files](03_dialogue_files): the `chatbox/dialogues` JSON format, line by line.
4. [Themes and Components](04_themes_and_components): the `chatbox/theme` format, portrait types and layout fields.
5. [Events and Conditions](05_events_and_conditions): render events, triggers, and the full event-type list.
6. [MVEL and Placeholders](06_mvel_and_placeholders): inline expressions, target placeholders, exposed methods and variables.
7. [Player Controls](07_player_controls): screen mode, overlay mode, keys, buttons, history and debug mode.
8. [Triggers and Persistence](08_triggers_and_persistence): advancement criteria, trigger counts and saved data.
9. [Configuration and Compatibility](09_configuration_and_compat): client options, loaders and optional mods.
10. [Networking and Server Notes](10_networking_and_server_notes): payloads and what a server operator must know first.

## Quick Facts

| Item | Current implementation |
|:---|:---|
| Mod ID / namespace | `chatbox` |
| Mod version | `1.1.4` |
| Items / blocks / entities / recipes / creative tab | none registered |
| Command root | `/chatbox`, requires Game Master permission (`2`) |
| Dialogue data | `data/<namespace>/chatbox/dialogues/*.json` |
| Theme data | `data/<namespace>/chatbox/theme/*.json` |
| Reload listeners | `chatbox:chatbox/dialogues`, `chatbox:chatbox/theme` |
| Saved data | `chatbox:chatbox_trigger_count` |
| Client config | `chatbox_config` (Cloth Config / AutoConfig) |
| Loaders | Fabric and NeoForge from one common source set |
| Minecraft | `26.1.2`, accepted range `[26,27)` |
| Required dependency | `cloth_config` (declared `required` on NeoForge) |
| Optional dependency | `watermedia` (video playback only) |
| License | `GPL-3.0 license` |
| Authors | zhenshiz, Amotassic |

::: danger
Before installing on a public server, read [Networking and Server Notes](10_networking_and_server_notes). Two client-to-server packets accept a string and act on it without any permission check: one runs commands at Game Master level, the other compiles and evaluates an MVEL expression on the server.
:::
