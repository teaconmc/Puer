---
title: "GeometryNode"
navigation:
  title: "GeometryNode"
---

# GeometryNode

GeometryNode is a **visual scripting system** for Minecraft. It adds no items, no blocks and no mobs — instead it gives you a node-graph editor, a catalogue of roughly **295 node types**, and ways to attach the graphs you build to the world.

If you have used a node editor in Blender or a game engine, the model will be familiar: drag nodes onto a canvas, wire their ports together, group them, and the graph runs.

## Read this first

::: warning
**The English translation covers about a quarter of the mod.** The language files hold **138 English keys against 543 Chinese ones**, and the gap is almost entirely **node names and descriptions** — 275 of them exist only in Chinese.

Because the node catalogue *is* this mod's content, an English client shows raw translation keys where most node names should be. **In its current state the mod is usable in Chinese and largely unlabelled in English.** See [05 Technical notes](05_technical_notes).
:::

**Two other mods are required**, and both are properly declared: **ModernUI** (client only — it draws the entire editor) and **Architectury**.

## At a glance

| Item | Value |
|:---|:---|
| Mod ID | `geometry_node` |
| Version | 1.0.0 |
| License | **All Rights Reserved** |
| Required | **ModernUI** (client), **Architectury** |
| Node types | ~295 |
| Items / blocks / entities | **none** |
| Minecraft | `[26.1.2]` — one exact version |

At roughly fifty thousand lines this is by a wide margin the largest mod in this range, and almost all of that weight is the node catalogue.

## What you can build with it

| Area | Example capability |
|:---|:---|
| Events | react to a player, entity, block, item, inventory or world event |
| Actions | move, damage, spawn, give, place, display — 111 action nodes |
| Data | read entity attributes, containers, values, types |
| Logic and maths | branch, compare, vector and colour maths |
| Dialogue | build branching conversations |
| Shops | define trade offers |

## Scope of this documentation

This mod is large enough that documenting every node individually would run to hundreds of pages. These pages therefore cover **the framework, the editor, and the catalogue's structure** — every category and its size — rather than each node's ports one by one.

Where a subsystem has behaviour you cannot guess from its name (dialogue, blueprints, the shop editor), it gets its own section.

## Reading route

- [01 Getting started](01_getting_started) — dependencies, opening the editor, and the translation caveat
- [02 The editor](02_the_editor) — canvas, ports, connections, groups and undo
- [03 Node catalogue](03_node_catalogue) — all categories with their sizes
- [04 Graphs in the world](04_graphs_in_the_world) — blueprints, binding, dialogue and shops
- [05 Technical notes](05_technical_notes) — registries, config, and known rough edges
