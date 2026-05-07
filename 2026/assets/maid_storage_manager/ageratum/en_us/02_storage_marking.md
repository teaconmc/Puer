---
title: Marking Storage
navigation:
  title: Marking Storage
description: Telling maids which containers they may use, and which are off limits.
---

# Marking storage

Before a maid can manage anything, she has to know which containers are hers. That is what this group of items is for.

## The Storage Define Bauble

`storage_define_bauble` is a **worn** item rather than a held one. It is the tool you use to define storage, which is why it occupies a bauble slot instead of your hand — you keep it on while you walk the room marking containers.

It has a **reset recipe**: a conversion registered under the `minecraft` namespace turns the bauble back into itself, clearing whatever it has accumulated. If your definitions have gone wrong, reset rather than re-craft.

## Access markers

Two items form a matched pair:

| Item | Meaning |
|:---|:---|
| `allow_access` | this container may be used |
| `no_access` | this container is off limits |

They are **interconvertible**: two conversion recipes flip one into the other in either direction. So you do not need to craft both — make one and toggle it as needed.

## The Change Flag

`change_flag` marks something as changed, and it is one of the four items with a **copy recipe**. Configure one, then duplicate it as many times as your setup needs rather than repeating the configuration.

## Work Card

`work_card` assigns work. Like most items here it is crafted at the altar and has no other route.

## Inventory lists

Two related items:

| Item | State |
|:---|:---|
| `inventory_list` | blank, ready to be filled |
| `written_inventory_list` | filled in |

The blank form has a **`list_clear` recipe**, so a used list can be wiped and reused instead of discarded. That pattern — write, copy, clear — runs through the whole mod and is worth internalising early.

## One config switch changes everything

In `behavior`, a single option governs how far a maid will roam:

| Option | Default | Effect |
|:---|:---|:---|
| `behavior.use_all_storage` | **`false`** | when enabled, a maid may visit **all** storages rather than only the ones defined for her |

Left at its default, marking is mandatory: a maid touches only what you gave her. Turning it on trades control for convenience, and on a shared base that is a decision to make deliberately rather than by accident.

## What the maid does with a marked container

Storage handling is implemented as a set of functions the maid's task system calls — finding and marking storage, querying what a storage holds, and fetching from it. Those same functions are what the AI skills expose to natural language, which is covered in [06 AI skills and communication](06_ai_skills_and_communication).

Retry behaviour is bounded by configuration:

| Option | Default |
|:---|:---|
| `behavior.max_store_tries` | 3 |
| `behavior.max_logistics_tries` | 50 |

So a maid that cannot store something gives up after three attempts rather than looping forever. If items are being left on the floor, that ceiling is the first thing to raise.

[Back to index](index)
