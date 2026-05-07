---
title: "Compatibility and registry"
navigation:
  title: "04 Compatibility and registry"
---

# Compatibility and registry

## Registry surface

Bonded Peaks currently registers no items, blocks, block entities, entities, recipes, advancements, sounds, creative tabs, config files or network payloads. Its source tree contains an empty mixin config and an empty interface-injection file, so the gameplay is limited to the command tree and team state described on the other pages.

## Dependencies

The build targets Minecraft 26.1.2 with NeoForge and bundles the AnvilLib network/config libraries. The mod metadata only declares required dependencies on NeoForge and Minecraft; there is no separate config screen or runtime configuration for teams.

## Middle Key Ping integration

The `middle_key_ping` mod (463) ships an integration for `bonded_peaks`. When both mods are present and the integration applies, Middle Key Ping replaces its default server forwarding rule so that:

- the sender always receives their own ping;
- other players receive position or entity pings only when they are in the same Bonded Peaks team;
- a sender without a team has no other recipients.

This makes Bonded Peaks usable as a visibility boundary for cooperative markers, without changing the team commands themselves.

## Runtime condition note

The Middle Key Ping integration lives in that mod's source and is loaded through its integration manager; it is not part of this mod's command surface. If you are testing this integration, verify that both mods are installed together.

[Back to the Bonded Peaks index](index)
