---
title: "Parkour"
navigation:
  title: "Parkour"
---

# Parkour

Parkour is a movement mod for NeoForge 26.1.2 / Minecraft 26.1.2. It registers no items, blocks, entities, menus or recipes. Instead it changes player movement: the Roll/Slide key switches between crawl, slide and backstep; wall run, wall slide, wall climb, wall jump, armhang and speed vault extend vertical movement; water movement adds shallow swimming, boost, jump and freestyle; and block tags let data packs control climbable and sensor behavior.

## Reading order

1. [Overview and toggle](01_overview): mod id, local enable switch, key bindings and common movement restrictions.
2. [Ground movement](02_ground_movement): slide, crawl, backstep, landing roll and ground modifiers.
3. [Wall movement](03_wall_movement): wall run, wall slide, wall climb, wall jump, armhang and speed vault.
4. [Swimming movement](04_swimming_movement): shallow swimming, boost, jump, freestyle and idle stop.
5. [Climbable block tags](05_climbable_tags): the three generated block tags and how they are used.
6. [Configuration](06_configuration): client and server configuration keys with confirmed defaults.
7. [Multiplayer and good to know](07_multiplayer_and_limits): moves are server-checked, the toggle is not protection, and one config disables speed limits.
8. [Commands](08_commands): the client-only `/parkour debug` command tree.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `parkour` |
| Version | `1.0.3+mc26.1.2` |
| Registered content | None; no items, blocks, entities, menus or recipes |
| Custom registry | `parkour:parkour_state` (sync, default `parkour:default`) |
| Player attachments | `parkour:parkour_context`, `parkour:sensor_data_manager` |
| Sound events | `parkour:slide`, `parkour:landing_roll`, `parkour:wall_jump`, `parkour:armhang`, `parkour:support_wall_jump`, `parkour:speed_vault` |
| Block tags | `#parkour:climbable`, `#parkour:common_ignored_blocks`, `#parkour:scaffolding_blocks` |
| Main input | Roll/Slide key, default `V` |
| Commands | Client-only `/parkour debug ...`; no server command root |
| Config | NeoForge server config plus client `enableParkour` preference |
