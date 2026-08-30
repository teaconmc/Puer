---
title: Beyond
navigation:
  title: Beyond
---

# Beyond（我的肉鸽）

Beyond (mod id `beyond`, version 1.0.1) is a roguelike progression framework for Minecraft. The main class describes it as a stage system that brings roguelike gameplay into Minecraft: worlds are organised into safe zones, active zones and node encounters, with phases, encounters and progress definitions driven by data packs. It is developed under `org.galaxy.beyond` and targets Minecraft 26.1.2 with NeoForge 26.1.2.59-beta.

## Core concepts

- **Safe zone & active zone** — Beyond divides the rogue dimension into a safe zone and an expanding active zone; borders can be rendered on the client (`ZoneBorderRenderer` family).
- **Nodes** — `node_block` marks encounter nodes in the world; nodes expand the active zone when completed.
- **Encounters** — an encounter is one of 9 combinations of `NodeColor` (GREEN / ORANGE / RED) and `SceneType` (HARVEST / REPOSE / CLIMAX), e.g. `Green_Event`, `Red_BossShop`.
- **Phases** — `Phase` is an identifier carrier; the behavior has moved to `RogueCap` before `PhaseRunner`.
- **Data driven** — `ProgressDataPack` files and `DefinitionManager` supply progress and rogue definitions through datapacks.

## Registered content

- **Items** — `beyond:loot_bag`, `beyond:world_seed`, `beyond:test_item`.
- **Block** — `beyond:node_block` (metal sound, no occlusion).
- **Creative tab** — `beyond:beyond_tab` (key `itemGroup.beyond`, icon `loot_bag`) holds `node_block`, `loot_bag` and `world_seed`.
- **Commands** — the `/beyond` command with `teleport` (home / activeBoundary / node), `safezone <chunkSize>`, `unlockNode`, `config currentProgress`, and `playerPhase get/set` sub-commands.

## Reading path

- [Getting started](01_getting_started) — configuring the rogue dimension, items and commands.
