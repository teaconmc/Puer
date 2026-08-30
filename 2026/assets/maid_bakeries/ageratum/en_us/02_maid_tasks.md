---
title: "Maid tasks"
navigation:
  title: "02 Maid tasks"
---

# Maid tasks

The mod adds **two** tasks to a maid's task list: **Cut** and **Baking**. Everything else the mod does happens *inside* the Baking task rather than as a separate task.

## Cut — slicing cakes and bread

The simplest half of the mod. Set a maid to **Cut**, give her a knife, and she will move to cakes and bread nearby and slice them.

| Detail | Value |
|:---|:---|
| Task icon | Bakeries' bread knife |
| Condition shown in the task list | *has a bread knife in hand* |
| Accepted tools | Bakeries' bread knife, **or anything in the `c:tools/knives` tag** |

The tag is worth knowing: any knife from another mod that joins the common knives tag works too, so you are not locked to the Bakeries knife.

Two behavioural notes:

- The maid **stops looking around and wandering randomly** while on this task, so she stays put and works instead of drifting.
- **She also stops eating.** The task explicitly disables eating, so a maid left on Cut for a long time will not feed herself. Check on her, or switch her off the task when the work is done.

## Baking — running an order

This is the task that does the machine work. On its own it does nothing: you must also hand the maid a Craft Order describing what to make. See [03 Giving an order](03_giving_an_order).

| Detail | Value |
|:---|:---|
| Task icon | Bakeries' bagel |
| Ambient sound | the maid's furnace-work sound, at half volume |

Like Cut, Baking **disables looking around and random walking**. Unlike Cut, it does not disable eating.

Because the mod only listens for orders when the maid is **already on the Baking task**, handing a Craft Order to a maid set to anything else does nothing at all — no message, no effect. If your order seems to be ignored, check the task first.

## Four craft modes, not four tasks

Inside a Baking order each step names one of four modes:

| Mode | Machine used |
|:---|:---|
| Oven | Bakeries oven |
| Blender | Bakeries blender |
| Dough Crafting Table | Bakeries dough crafting table |
| Crafting Table Shapeless | vanilla crafting table, shapeless recipes |

So a single Baking task can walk a maid through several different machines in sequence. Which machines she can find is governed by points of interest — see [05 Technical notes](05_technical_notes).

## Names you may see that do not exist

The language files still contain entries for tasks named **Oven**, **Drink**, **Blender** and **Eat Cake**, along with conditions mentioning an "oven note" and a "drink note".

**None of those are registered.** The maid's task list will only ever offer Cut and Baking, and no sticky-note items exist in this build — the Craft Order replaced them. If you find those names in a translation file or an older guide, treat them as leftovers rather than features to look for.

[Back to index](index)
