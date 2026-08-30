---
title: "The craft list"
navigation:
  title: "04 The craft list"
---

# The craft list

The Craft List is the editor. Right-click it in your hand to open it, and describe the work you want done. It holds **six slots**.

## The four modes

Every entry names one craft mode, which decides both the machine the maid walks to and the recipe book she is allowed to use:

| Mode | Recipes drawn from |
|:---|:---|
| Blender | Bakeries blender recipes |
| Oven | Bakeries oven recipes |
| Dough Crafting Table | Bakeries dough crafting table recipes |
| Crafting Table Shapeless | vanilla **shapeless** crafting recipes |

Note the last one is **shapeless only**. A maid on Crafting Table Shapeless cannot follow a shaped recipe, so anything that needs a specific grid arrangement is out of reach.

## The controls are unusual

Two of the three controls use the **middle mouse button scroll wheel**, which is worth knowing before you go hunting for buttons:

| Control | How to use it |
|:---|:---|
| Crafting Mode | **scroll the middle mouse button** |
| Item Requirement Count | **scroll the middle mouse button** |
| Item ID | type it into the text box |

The text box takes an **item ID**, not a display name — so `minecraft:bread`, not "Bread". The hint in the box says as much. This means you need to know the ID of what you want, which for Bakeries items means the `bakeries:` namespace.

The requirement count is how many of that item you are asking for; it becomes the target count the maid works toward.

## Validation happens later

The editor will let you write an entry that cannot actually be made. The check that a result is really producible by the chosen mode happens when you **hand the order to a maid**, not while you type — so a wrong mode or a typo'd ID looks fine here and is silently dropped later.

If a maid accepts an order but skips part of the work, the entries she skipped are the ones that failed that check. See [03 Giving an order](03_giving_an_order).

## Six slots, five steps

The list holds six slots, but a maid's queue is **capped at five steps**. A full six-entry list therefore loses its last entry when handed over, with no warning.

Treat five as the real working limit.

## Clearing it

Clearing the list resets all six slots and wipes the stored text, giving you a blank sheet without needing to craft a new one. The Craft List is a reusable tool, not a consumable.

[Back to index](index)
