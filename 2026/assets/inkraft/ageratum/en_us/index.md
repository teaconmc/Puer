---
title: "Inkraft"
navigation:
  title: "Inkraft"
---

# Inkraft

Inkraft (`inkraft`) embeds the **ink** narrative scripting language in Minecraft. You write a branching story in ink, compile it, ship it in a datapack, and Inkraft runs it for a player: lines of prose, choices, variables that persist, and story functions that reach into the game world.

It registers no items, no blocks and no recipes. It is an engine plus two commands.

## Reading Route

1. [Getting Started](01_getting_started): who this engine is for, the two commands, and why you should ask before bundling it.
2. [Stories and Datapacks](02_stories_and_datapacks): where stories live, the compiled `.ink.json` requirement, and reload behaviour.
3. [Commands and Permissions](03_commands_and_permissions): both command trees and the exact permission gate on every branch.
4. [Story Functions](04_story_functions): the full catalogue your ink script can call.
5. [Variables and Storage](05_variables_and_storage): value types, persistence and the variables command.
6. [Security and Server Notes](06_security_and_server_notes): what a story script is allowed to do to your server.

## Quick Facts

| Item | Current implementation |
|:---|:---|
| Mod ID / namespace | `inkraft` |
| Display name | Inkraft |
| Version | `1.2.0` |
| Author | qyl27 |
| Declared licence | `PolyForm Shield 1.0.0` |
| Platforms | **Fabric and NeoForge** (Architectury multi-loader) |
| Minecraft | `26.1.2` |
| Registries added | **1** — `inkraft:story_functions` |
| Items / blocks / entities / recipes | **none** |
| Commands | 2 roots — `/inkraft` and `/variables` |
| Story source path | `data/<namespace>/inkraft_story/**.ink.json` |
| Ink engine | blade-ink `1.3.2` |
| Text layer | Adventure platform `6.9.0` (a declared dependency) |
| Bundled stories | **none** — the `.ink` files in the repo are docs and tests only |

::: warning
A fresh install gives you **nothing playable**. Inkraft is a runtime for stories that someone else authors; without a datapack supplying a compiled story there is no content at all. Plan for it the way you would plan for a scripting API, not a gameplay mod.
:::

::: danger
Story scripts can execute arbitrary commands, and two of the four command functions run at **owner level (4)** regardless of who triggered the story — one of them with output suppressed. Read [Security and Server Notes](06_security_and_server_notes) before installing this on a server where you do not personally control every datapack.
:::
