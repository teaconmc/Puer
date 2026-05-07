---
title: Rail editing and trains
navigation:
  title: Rail editing and trains
---

# Rail editing and trains

## Rail editors

Two tools edit the geometry and appearance of existing MTR rails. Both stack to at most 1 and persist their settings with the `mtrsteamloco:tool_tag` data component.

- **Visual editor** (`rail_editor_visual`) — adjust the visual appearance of rails.
- **Geometry editor** (`rail_editor_geometry`) — set node poses, vertical curves, radii and section batch-apply options through its screen (`gui.mtrsteamloco.rail_editor_geometry.*`), and save settings back into the tool.

Working with the geometry editor requires free rail nodes (`gui.mtrsteamloco.rail_editor_geometry.not_free_node`); radius values can be set, capped (`radius_set_max`) or cleared (`radius_set_none`), and angles can be derived from the connected track (`derive_angle`).

## Bridge creator

`bridge_creator_1` builds a bridge along a MTR rail; the item model switches to a selected variant (`bridge_creator_1_selected`) while a creation is active.

## Air cables and custom rails

Rails use model packs under `assets/mtrsteamloco/rails/` (`builtin.json` lists built-in rail models, `catenaries.json` defines overhead catenary types). Appearance can be overridden per rail via NTE's rail model registry (`data/RailModelRegistry`) so that a single MTR rail node displays a custom model.

## Scripted trains

Scripted custom trains load their models and behavior from model files (`models/atlas/*.json` for the DK3 / D51 families shipped in the mod); trains render with the scripted renderer and can be driven virtually.

## Virtual driving

While riding a train, `/mtrnte virtdrive` starts virtual driving of the train you are riding (`TrainVirtualDrive`); `atpcutout` toggles the ATP cut-out for it, and `/mtrnte stat` prints the current render status to chat. Network packets keep virtual-drive state in sync between clients and the server (`PacketVirtualDrive`, `PacketUpdateRail`, etc.).

## Scripts and integration

Custom eye-candy and train scripts run in a dedicated scripting context (`render/scripting`); `SowcerModelAgent` and `DynamicTrainModelLoader` integrate external Sowcer models and dynamic train models with MTR's renderer.

[Back to index](index)