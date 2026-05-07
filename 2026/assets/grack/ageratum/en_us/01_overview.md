---
title: Overview
navigation:
  title: Overview
---

# Overview

Grack is not a content mod in the usual sense. It registers no items, blocks, entities, loot or recipes. Instead, it embeds the **Groovy** scripting language and exposes it through Minecraft commands, so that pack authors and developers can run scripts against the live game state.

## What it registers

The only dedicated registry object Grack adds is a custom **command-argument type**, `grack:gscript`, which accepts the id of a loaded Groovy script. Everything else is routes through NeoForge events:

- A server reload listener, `grack:server_script_library`, that loads scripts at (re)load time.
- Server commands registered on the normal command dispatcher.
- Client commands registered on the client-side dispatcher.

## Scripts and the script registry

Scripts live in a data-pack folder registered under the registry key `grack:script`. The library converts every file in `data/grack/script/` with the extension `.groovy` into a compiled script whose id is `grack:<file name>`. Each script is compiled with a base class that extends `GrackScript` (itself a Groovy `Script`), so a script can use `context` (a Brigadier command context) and `args` (an optional NBT tag) bound into its `Binding`.

Scripts are parsed through a shared `GroovyShell`; a script that fails to compile or load is skipped and logged rather than breaking the whole library.

[Back to index](index)
