---
title: Getting Started
navigation:
  title: Getting Started
description: Everything is crafted at the maid altar, everything is an item, and nothing is a block.
---

# Getting started

## Everything comes from the maid altar

All fifteen items are crafted with the **parent mod's altar** recipe type — `touhou_little_maid:altar`. There is no workbench, no custom machine and no vanilla crafting recipe for any of them.

Sixteen of the addon's twenty-two recipes are altar recipes. If you can already use Touhou Little Maid's altar, you can make everything here.

Two of the fifteen items are worth calling out for having **more than one route**:

| Item | Routes |
|:---|:---|
| `logistics_guide` | two different altar recipes |
| `progress_pad` | two altar recipes plus a reuse recipe |

## Nothing in this addon is a block

The item registry holds fifteen entries; **there is no block registry at all**. Every piece of this mod is an item you carry, wear, hand to a maid, or hang in an item frame.

That is also the answer to a question you would otherwise ask: the mod ships **zero loot tables**, and that is **correct rather than a gap** — there are no blocks that could drop anything.

## The fifteen items

Grouped by what they are for:

| Group | Items |
|:---|:---|
| **Marking storage** | `storage_define_bauble`, `allow_access`, `no_access`, `change_flag` |
| **Inventories** | `inventory_list`, `written_inventory_list` |
| **Requests** | `request_list`, `virtual_request_list`, `filter_list` |
| **Logistics** | `logistics_guide`, `work_card` |
| **Crafting** | `craft_guide`, `portable_craft_calculator_bauble` |
| **Monitoring** | `progress_pad` |
| **Communication** | `configurable_communicate_terminal` |

Two of them are **baubles** — `storage_define_bauble` and `portable_craft_calculator_bauble` — meaning they are worn rather than held.

## Reusing paper: copy and reset

Beyond the altar, the addon registers **two custom recipe types** of its own, and both exist to save you re-configuring things:

**`maid_storage_manager:copy`** — duplicate an already-configured item. Available for `change_flag`, `craft_guide`, `filter_list` and `request_list`. Configure one list carefully, then copy it as many times as you need.

**`maid_storage_manager:list_clear`** — wipe a used item so it can be filled in again. Available for `inventory_list`, `progress_pad` and `request_list`.

So a request list is not consumable stationery: you write it, copy it for other maids, and reset it when the job changes.

## Three toggle recipes

Three more recipes are registered under the `minecraft` namespace rather than the addon's own:

| Conversion | Effect |
|:---|:---|
| `no_access` → `allow_access` | flip an access marker |
| `allow_access` → `no_access` | flip it back |
| `storage_define_bauble` → itself | reset the bauble |

They work, and the namespace choice is a datagen detail rather than something you interact with.

## A note on recipe display

This guide deliberately does **not** embed recipe widgets. Every recipe in this addon is a custom type — the parent mod's altar, or the addon's own copy and clear types — and custom machine recipes are not shown with the standard recipe component. Use JEI or EMI in game; both are declared optional dependencies and the addon integrates with them.

## The shortest path to a working maid

1. Craft a **`storage_define_bauble`** at the altar and wear it.
2. Mark the chests you want managed — see [02 Marking storage](02_storage_marking).
3. Craft a **`request_list`**, write what you want on it, and hand it to a maid.
4. Craft a **`progress_pad`**, put it in an item frame, and watch her work — see [05 The Progress Pad](05_progress_pad).

[Back to index](index)
