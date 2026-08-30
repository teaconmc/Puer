---
title: "Getting started"
navigation:
  title: "01 Getting started"
items:
  - better_rod:iron_spiked_hook
---

# Getting started

## There is no Better Rod item

The mod attaches its three slots to the **vanilla fishing rod**. Any rod you already own — including an enchanted one — gains them automatically. Enchantments keep working: Luck of the Sea and Lure are still read when you cast.

Hold a rod and read its tooltip. It lists three lines:

```
[Empty Line]
[Empty Hook]
[Empty Accessory]
Right click a accessory to apply
```

(The grammar in that last line is the mod's own.)

## Fitting a part

The gesture is an inventory action, not a right-click in the world:

1. Open any inventory screen.
2. **Pick the rod up onto your cursor** — it must be a single rod, not a stack.
3. **Right-click the part** sitting in a slot.

The part goes into the rod and whatever was in that slot of the rod comes back out into the inventory slot, so fitting is a **swap** rather than a one-way install. The part is placed in its own slot automatically — a hook always goes to the hook slot.

## Removing a part

Same gesture, but **right-click an empty slot** while holding the rod on your cursor.

**Removal order is fixed, and this is the part that surprises people.** The rod always gives up its **line first**, then its **hook**, then its **accessory**. There is no way to pull the hook out while a line is still fitted — strip the line, then the hook.

So swapping just the hook on a fully fitted rod means: remove line, remove hook, fit new hook, refit line.

## The creative tab

**Better Rods**, placed just before the Combat tab, with the iron spiked hook as its icon. It lists baits, then hooks, then lines, then accessories, then **one tipped hook for every potion in the game** — including potions added by other mods — and finally Silmon.

## Recipes

Twenty of the twenty-one items are craftable. The hooks are cheap nugget-and-ingot shapes:

<recipe id="better_rod:crafting/iron_spiked_hook"/>

The other three tiers follow the same shape in gold, diamond and netherite, and the netherite one is a **smithing** upgrade rather than a crafting recipe.

| Group | Count | Recipe kind |
|:---|---:|:---|
| Shaped crafting | 14 | standard grid |
| Shapeless crafting | 4 | any arrangement |
| Smithing transform | 1 | smithing table |
| Transmute | 1 | keeps components |
| **Bucket filling** | 4 | a **custom** recipe type used by the Auto Filler |

**Silmon has no recipe at all.** It is a fish, and lava is where you find it — see [06 Lava fishing](06_lava_fishing).

The four bucket-filling recipes are a recipe type of the mod's own rather than a vanilla one, so they are not shown as a recipe here; what they do is described in [04 Accessories](04_accessories).

## A sensible first loadout

| Slot | Suggestion | Why |
|:---|:---|:---|
| Hook | Iron Spiked Hook | cheapest damage that beats gold |
| Line | Elastic Line | forgiving; pulls the catch toward you |
| Accessory | Quick Clock | far more bites per minute |

Then read [05 Baits and chumming](05_baits_and_chumming) — bait is what makes fishing fast, and it works differently from what its numbers suggest.

[Back to index](index)
