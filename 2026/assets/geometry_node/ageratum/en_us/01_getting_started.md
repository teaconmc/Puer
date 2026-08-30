---
title: "Getting started"
navigation:
  title: "01 Getting started"
---

# Getting started

## Dependencies

Two other mods are required, and both are correctly declared in the metadata:

| Mod | Side | Why |
|:---|:---|:---|
| **ModernUI** | **client only** | draws the entire node editor |
| **Architectury** | both | platform abstraction |
| NeoForge, Minecraft | both | |

ModernUI being client-only tells you something useful: **the editor is a client program**. A dedicated server runs the graphs but never needs the editing interface.

The Minecraft range is a **single exact version**, `[26.1.2]`, so no other 26.x will load.

## There is nothing to find in creative

The mod registers **no items, no blocks, no entities and no creative tab**. Searching the creative menu for anything called "GeometryNode" will turn up nothing, and that is correct behaviour rather than a broken install.

The only thing it registers with the game is an internal attachment type. Everything you interact with is a screen.

## Opening the editor

Press **G**.

That is the mod's one bound key, in a keybind category of its own. It opens the node editor as a full ModernUI screen.

## The ten blueprint keys are unbound

Alongside the editor key, the mod registers **ten "blueprint skill" keys** in a second category — and **every one of them ships with no default binding**.

That is deliberate rather than broken, but it has a consequence worth stating plainly: **out of the box there is no key that runs a graph.** Until you assign keys in Controls, blueprints can only be triggered by whatever events their graphs listen for.

If you intend to use graphs as activated abilities, binding those ten keys is a setup step you must do yourself.

## About the English text

::: warning
Most node names have no English translation. The mod ships **138 English keys against 543 Chinese ones**, and the missing ones are overwhelmingly the node catalogue itself — 275 node entries exist only in Chinese.

In practice an English client shows raw keys like `geometry_node.node.…` in the node browser. The editor works, the graphs work, but **you will be choosing nodes by position and shape rather than by name**.

If you can read the Chinese names, switching the game language to 简体中文 makes the mod dramatically easier to use. This is the single biggest usability fact about the current build.
:::

## A realistic first session

1. Install ModernUI and Architectury alongside the mod.
2. Press **G** to open the editor.
3. Add an **event** node — something that fires, such as a player event.
4. Add an **action** node and wire the event's output to it.
5. Save the graph, then bind it or attach it to the world — see [04 Graphs in the world](04_graphs_in_the_world).

The catalogue is organised by category rather than alphabetically, which helps considerably when the names are unreadable. [03 Node catalogue](03_node_catalogue) maps out every category and its size so you know where to look.

[Back to index](index)
