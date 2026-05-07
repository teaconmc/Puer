---
title: Configuration and compatibility
navigation:
  title: Configuration and compatibility
---

# Configuration and compatibility

## Dependencies

- On NeoForge (26.1.2), Mino++ depends on **YACL** (Yet Another Config Lib) `3.9.3+26.1-neoforge` for its configuration screens.
- On Fabric it depends on Fabric API and runs on fabric loader; multiple Minecraft versions are built (1.20.1, 1.21.1, 26.1.2) for both loaders via the `versions/` layout.

## Touhou Little Maid integration

Under `neoforge/compat/touhou_little_maid`, Mino++ integrates maids (Touhou Little Maid) as card-game players: `MaidPlugin` registers maid memory types, a `PoiRegistry` / `SeatPoiManager` exposes the card table as a POI, and maid tasks (`FindMinoTask`, `PlayMinoTask`, `MinoppTask`) let a maid find the table, sit and play.

## Sign Me Up integration

`neoforge/compat/signmeup/MinimapVisibility` adjusts the table's visibility on the Sign Me Up minimap while a game is active.

## Compatibility notes

- The `hand_cards` renderer uses BEWLR (block-entity-without-level-renderer); the `hand_cards_nobewlr` variant avoids that renderer for environments without BEWLR support.
- Game state and rewards are stored on the server side (`BlockEntityMinoTable`, `CardGame`); requiring the server to be authoritative for scoring and doubt resolution.

[Back to index](index)