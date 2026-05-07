---
title: "Client options and resource packs"
navigation:
  title: "08 Client options and resource packs"
---

# Client options and resource packs

## Client config

The mod registers one client config value:

- `showCheckScreen` (default `false`): when enabled, the title screen is replaced once per launch with the "Yuushya - Mod and Resource Pack Checking" screen.

## Check screen

The check screen lists missing resources and recommended add-ons in three sections: Resource Packs, Recommend Mods, and Connected Texture Mods. Each entry has download links. The "Stop showing" checkbox turns the config value off and saves it.

## Built-in resource packs

The mod registers three built-in resource packs through `AddPackFindersEvent`:

- **Yuushya Fusion Combine** (needs Fusion).
- **Yuushya Mcpatcher Feature** (recommended with OptiFine or Continuity).
- **Yuushya CTM Support** (needs ConnectedTexturesMod).

The check screen recommends Yuushya 16x, Yuushya Foliage Addon, Yuushya Modelling, OptiFine, Continuity, CTM and Indium depending on what is missing.

## Runtime surface

The current 26.1 source registers no commands and no key bindings. Its interaction surface is the creative tabs, the blueprint/template menus, the tool right-click behaviours and the client check screen.

[Back to index](index)
