---
title: Requests and Logistics
navigation:
  title: Requests and Logistics
description: Request lists, filters, virtual requests and the logistics guide.
---

# Requests and logistics

## Request lists

`request_list` is the central instruction item: you write what you want on it and hand it to a maid.

It is unusually well served by the addon's reuse recipes — it is the only item with **all three**:

| Recipe type | Effect |
|:---|:---|
| `touhou_little_maid:altar` | craft a fresh one |
| `maid_storage_manager:copy` | duplicate a configured list |
| `maid_storage_manager:list_clear` | reset a used list |

That combination is the intended workflow for running more than one maid: write one list properly, **copy** it for each maid, and **reset** copies when the job changes. You should rarely need to craft a second one.

## Virtual request lists

`virtual_request_list` is a separate item from `request_list`, and notably it is **the only one of the fifteen items with no recipe of its own** — it does not appear among the twenty-two recipes.

That means it is not something you craft. It is produced by the mod during operation, which fits its name: a request that exists as a working artefact rather than as stationery you write.

## Filters

`filter_list` describes what to include or exclude. It has a **copy recipe**, so one carefully built filter can be duplicated across maids and stations.

Filtering is backed by a dedicated filterable-storage abstraction in the code, which is why filters apply to storage access rather than only to the request itself.

## The Logistics Guide

`logistics_guide` is the item that turns a marked set of containers into actual movement of goods.

It is the only item in the mod with **two distinct altar recipes** — the plain one and a second variant. Two recipes for one item usually means two ingredient paths at different costs, so check both in JEI or EMI and use whichever suits your stage of the game.

Logistics retries are bounded generously:

| Option | Default |
|:---|:---|
| `behavior.max_logistics_tries` | **50** |

Fifty attempts is far more than the three allowed for plain storing, which reflects that a logistics run has many more ways to be temporarily blocked — a full destination, an occupied path, a container being used by someone else.

## Speed is configurable, per activity

The `speed` section exposes six separate multipliers rather than one global speed, each in the range `0.0`–`3.0`:

| Option | Default | Governs |
|:---|:---|:---|
| `speed.collect` | 0.5 | gathering items |
| `speed.place` | 0.5 | putting items away |
| `speed.view` | 0.3 | inspecting a container |
| `speed.view_change` | 0.5 | switching between containers |
| `speed.follow` | 0.5 | following you |
| `speed.crafting` | 0.5 | crafting |

All six default to well below `1.0`, which is a deliberate pacing choice: maids are meant to look like they are working, not to teleport goods. **`speed.view` is the slowest at `0.3`** — inspecting is the bottleneck by design. If your logistics feel sluggish, that is the number to raise first, and raising it costs you the visual sense of the maid actually reading a chest.

## Container access is patched for a reason

One of the addon's mixins, `ContainerOpenersCounterPatch`, touches vanilla's container-opener counting. That is the machinery behind chest lids opening and closing and behind blocks that care whether a container is currently in use. A maid opening containers programmatically has to be counted correctly, or lids stick open and observers misfire.

It is invisible in play, and it is the sort of thing that only shows up as a bug if it is *not* done.

[Back to index](index)
