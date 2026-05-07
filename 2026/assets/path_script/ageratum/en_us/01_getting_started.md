---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - path_script:path_editor
---

# Getting started

## The dependency is declared properly

This mod needs **Touhou Little Maid**, and it says so: the metadata declares `touhou_little_maid` as a **required** dependency at version `[1.1.0,)` on both sides.

That is worth calling out because it means you get a proper "missing dependency" screen if you forget it, rather than a crash. Install Touhou Little Maid and Path Script works.

The Minecraft range is `[26.1.2,26.2)`, so it accepts 26.1.x but refuses 26.2 and later.

## The two items

| Item | Role |
|:---|:---|
| Path Editor | the tool — draw the path, edit nodes, dispatch a maid |
| Guide Sign | a finished path, ready to summon a disposable guide |

Both are single-item stacks. Everything the mod does is driven from these two.

## Obtaining them

The Path Editor and Guide Sign are in the **Path Script** creative tab.

The Guide Sign has no ordinary crafting recipe. Instead the mod adds its own **transfer** recipe type, which copies data from a source item onto a new Guide Sign. Three sources are accepted:

| Source | What carries over |
|:---|:---|
| Path Editor | the path you drew |
| Written Book or Book and Quill | (accepted as a source) |
| Touhou Little Maid's Smart Slab holding a maid | the path **and that specific maid** |

Combine the source with the sign **on an anvil**. The game tells you as much if you try to use an empty sign: *"No path data on this guide sign. Combine with a Path Editor on an anvil first."*

The smart-slab route is the interesting one — it bakes a particular maid into the sign, so the guide who appears is *that* maid rather than a fresh one. See [05 The guide sign](05_the_guide_sign).

## A five-minute first path

1. Take a Path Editor.
2. Right-click a block face. A node appears on the face you clicked — this is your **start node**.
3. Walk somewhere and right-click again. A second node appears, already connected from the first.
4. Repeat a few times to lay a route.
5. Right-click your maid with the editor. She starts walking it, and you follow.

That is the whole loop. Everything else — branches, actions, guide signs — builds on it. Read [02 Drawing a path](02_drawing_a_path) next.

[Back to index](index)
