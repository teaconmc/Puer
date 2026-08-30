---
title: "The editor"
navigation:
  title: "02 The editor"
---

# The editor

The editor is a ModernUI screen, opened with **G**. It is a conventional node canvas, and the feature set is more complete than most Minecraft scripting mods manage.

## The pieces

| Element | What it is |
|:---|:---|
| Node | one operation, with input and output **ports** |
| Connection | a wire between two ports |
| Reroute | a pass-through point used to route a wire tidily |
| Frame | a labelled box drawn around nodes, for organisation |
| Node group | a subgraph collapsed into a single node |

## Node groups are the serious feature

Frames are cosmetic — they box nodes together and carry a label. **Node groups are structural**: they take a selection of nodes and fold it into one node that you can reuse, with **virtual ports** standing in for the connections that crossed the group boundary.

You can add and remove those virtual ports, rename them, and set properties on the group node. **Dissolving** a group unpacks it again and restores the original wiring.

Two observations from the implementation that tell you how central this is: grouping and dissolving are by a wide margin the **two largest editor operations in the codebase**, and they are the only ones that have to rebuild connections across a boundary. If something in the editor is going to behave unexpectedly, this is where to look first.

## Everything is undoable

Every canvas change goes through a command object, and there are **twenty-two of them**:

| Group | Operations |
|:---|:---|
| Nodes | add, remove, move, set positions, paste |
| Connections | connect, disconnect, insert a reroute on a connection |
| Branches | add branch, remove branch |
| Frames | add, remove, group into frame, set property |
| Node groups | group into, dissolve, add/remove virtual port, rename port, set property |
| Values | change an input value |
| Hierarchy | change parent |

Because each is a discrete command rather than a direct mutation, the whole editor supports undo and redo uniformly — including the complex group and dissolve operations.

**Insert a reroute on a connection** is worth knowing about specifically: rather than deleting a wire and drawing two new ones, you drop a reroute onto an existing connection and it splits in place.

## Ports carry types

Ports are typed, and the mod has more translation keys for ports than for anything except nodes — 78 in English, plus another 53 that exist only in Chinese. Types include values, vectors, colours, entities, containers and world references.

Connecting incompatible ports is rejected, which is why the connect operation is one of the larger ones: it validates before it wires.

## The asset browser

The editor includes an asset browser with configurable **quick-access paths** — shortcuts to folders on disk where your graphs live. Graphs are files, so you can keep drafts locally and organise them in folders.

::: warning
The quick-access paths that ship in the config are **the original developer's own folders**, including an absolute path into their IDE project directory alongside `C:\`, `D:\` and `E:\`. On your machine that first entry points at nothing.

Replace them with your own paths — see [05 Technical notes](05_technical_notes).
:::

## Appearance settings

Two cosmetic values are configurable rather than hardcoded: the canvas **grid size** (default 15) and the **corner radius** of node boxes (default 1.5). Both live in the same JSON config as the quick-access paths.

## Remote graphs

The editor is not limited to local files. The mod ships network packets for **listing and downloading graphs from the server**, with matching commands — so a server can host a library of graphs that players pull down into their own editor. See [04 Graphs in the world](04_graphs_in_the_world).

[Back to index](index)
