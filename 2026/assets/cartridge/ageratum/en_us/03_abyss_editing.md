---
title: Abyss editing
navigation:
  title: Abyss editing
---

# Abyss editing

The Abyss system edits deep world terrain in an octree (`OctreeNode`, `ChunkAbyssData`), tracked by `AbyssManager` and synced through `AbyssInitPacket` / `AbyssUpdatePacket`.

## Tools

Six levels of create and remove tools let you sculpt abyss volumes:

- **Create** — `abyss_create_1`, `abyss_create_2`, `abyss_create_3`, `abyss_create_4`, `abyss_create_5`, `abyss_create_6`
- **Remove** — `abyss_remove_1`, `abyss_remove_2`, `abyss_remove_3`, `abyss_remove_4`, `abyss_remove_5`, `abyss_remove_6`

Each is an `AbyssEditToolItem` with an `Operation` (ADD for create, REMOVE for remove) and a level that scales the edit radius. Server-side `AbyssPlayerHandler` / `AbyssRendererServer` and client `AbyssRenderer` project the effect.

[Back to index](index)