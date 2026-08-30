---
title: "Node catalogue"
navigation:
  title: "03 Node catalogue"
---

# Node catalogue

Roughly **295 node classes**, organised into a taxonomy rather than a flat list. This page maps the whole structure with each category's size, so you can find the right drawer even when the labels are unreadable.

Individual nodes are **not** documented here — see the coverage note at the end.

## The five top-level kinds

| Kind | Nodes | What it does |
|:---|---:|:---|
| **Actions** | ~111 | changes the world |
| **Events** | ~74 | reacts to something happening |
| **Data** | ~55 | reads a value |
| Logics, Maths, Functions | ~22 | branches and computes |
| Dialogue | 6 | conversation flow |

A working graph almost always reads left to right through those three big kinds: an **Event** fires, **Data** and **Logic** decide, an **Action** happens.

## Actions — the largest group

| Category | Nodes |
|:---|---:|
| Entity | **42** |
| Item | 17 |
| Player | 10 |
| Display entity | 9 |
| Inventory | 9 |
| Block | 7 |
| Visual | 6 |
| World | 4 |
| AI | 4 |

**Entity actions dominate the entire mod** — 42 nodes, more than any other category anywhere. If you are building anything that moves, damages, spawns or modifies a mob, that is where the depth is.

**Display entity** having its own nine nodes is worth noticing: display entities are the vanilla feature used for floating models and text, so the mod treats in-world visual presentation as a first-class area rather than folding it into generic entity actions.

**AI** having only four nodes tells you the reverse — mob behaviour scripting is present but shallow compared with direct entity manipulation.

## Events — what a graph can wait for

| Category | Nodes |
|:---|---:|
| Entity | **28** |
| Player | 15 |
| World | 6 |
| Inventory | 5 |
| Item | 5 |
| Block | 4 |
| Server | 2 |
| Area | 1 |
| Dialogue | 1 |
| Display entity | 1 |

Again entity and player events carry the weight. The single **Area** event is the hook behind the area debugging command described in [04 Graphs in the world](04_graphs_in_the_world).

## Data — reading state

| Category | Nodes |
|:---|---:|
| Entity attribution | **23** |
| Type | 10 |
| Container | 9 |
| Value | 5 |
| Entity | 2 |
| Player | 1 |
| World | 1 |

**Entity attribution is the surprise here.** Twenty-three nodes for reading entity attributes — health, speed, armour and the rest — make it the third-largest category in the mod. Combined with 42 entity actions, the picture is clear: **this is primarily a tool for scripting mobs.**

The nine **container** nodes cover reading chests and inventories, which is what makes item-logistics logic possible.

## Logic, maths and functions

| Category | Nodes |
|:---|---:|
| Logics | 7 |
| Maths — vector | 3 |
| Maths — operation | 2 |
| Functions — colour | 3 |
| Functions — graph | 3 |
| Functions — time | 2 |
| Special | 1 |

This is the deliberately small part. Seven logic nodes and five maths nodes are enough for branching and arithmetic but not for heavy computation — the mod expects you to express intent through the large action and event vocabularies rather than by calculating.

**Functions — graph** is the interesting trio: nodes that operate on graphs themselves, which is how one graph calls or composes another.

## Dialogue

Six dedicated nodes, plus one dialogue event and its own command. Enough to build branching conversation, and covered in [04 Graphs in the world](04_graphs_in_the_world).

## Infrastructure nodes

Not content, but they appear on the canvas:

| Piece | Classes |
|:---|---:|
| Port | 6 |
| Value | 5 |
| Meta | 4 |
| Group | 3 |
| Reroute | 1 |

These implement the editor mechanics described in [02 The editor](02_the_editor) rather than doing anything in the world.

## Coverage note

::: info
**This page documents the catalogue's structure, not its 295 individual nodes.**

Two reasons. First, scale: documenting each node's ports and semantics would run to hundreds of pages for one mod. Second, and more decisive: **275 of the node names exist only in Chinese**, so an English page listing them one by one would be listing untranslated keys — accurate but useless.

What is documented here is verifiable from the source and stable: every category exists, and the counts are exact. The relative sizes are the genuinely useful information, because they tell you where the mod is deep (entities, entity attributes, player events) and where it is thin (AI, maths).

To browse the actual nodes, open the editor and work through the category tree. With the game language set to 简体中文 the names are complete.
:::

[Back to index](index)
