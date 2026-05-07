---
title: "Lava fishing"
navigation:
  title: "06 Lava fishing"
items:
  - better_rod:blaze_hook
---

# Lava fishing

Fit a fireproof hook and lava becomes fishable water. Three hooks qualify: **Blaze Hook**, **Nether Brick Hook** and **Netherite Spiked Hook**. Everything else burns up.

The bobber floats on lava and bobs exactly as it does on water, so the rhythm of casting and waiting is unchanged.

## The loot is structured like vanilla fishing

A successful lava catch rolls one of three sub-tables:

| Outcome | Weight | Quality |
|:---|---:|---:|
| Fish | **75** | −1 |
| Junk | 15 | −2 |
| Treasure | 10 | +2 |

Those quality values behave as they do in vanilla: **Luck of the Sea and the Lucky Clover push you away from junk and toward treasure.** With +5 Luck from a clover ([04 Accessories](04_accessories)) the treasure rate rises noticeably.

## The fish come out cooked

The fish table has three entries:

| Catch | Weight |
|:---|---:|
| Cooked Cod | 60 |
| Cooked Salmon | 25 |
| **Silmon** | **15** |

They arrive **already cooked** — lava does the work, so an Auto Smelter has nothing to do here.

That puts Silmon at **15 in 100 of the fish table**, and since the fish table is 75 of 100 overall, roughly **11 in 100 lava catches** are Silmon.

## Silmon

The mod's own fish, and **the only item with no recipe** — lava fishing is the sole source.

| Property | Value |
|:---|:---|
| Nutrition | 1 |
| Saturation | 0.1 |
| Eat time | 4 seconds |
| Always edible | yes |
| On eating | **Fire Resistance, 100 seconds** |

Read that table as a whole and the design becomes clear: **Silmon is not food.** One nutrition point is nearly nothing and the four-second eat time is twice a normal meal. What you are eating it for is a hundred seconds of fire resistance, with no brewing stand, no magma cream and no blaze powder involved.

Being always edible means you can take it at full hunger, so it works as an on-demand potion. A stack is a stack of fire resistance.

## The Nether changes the game

Outside the Nether, lava fishing gives loot. **Inside the Nether, a fireproof hook can pull up a living mob instead** — and how often depends entirely on which hook you fitted.

| Hook | Mob chance | Pulls |
|:---|---:|:---|
| Netherite Spiked | 15% | Magma Cube (size 4) |
| Blaze | 20% | Blaze |
| **Nether Brick** | **75%** | 20% Magma Cube (size 5), 40% Blaze, 40% **Wither Skeleton** |

The mob spawns just above your bobber and is dragged toward you, so it arrives already in reach.

**The Nether Brick Hook is the reason to care.** Three casts in four bring a mob, and 40% of those are Wither Skeletons — so a lava lake plus this hook is a wither-skull farm that needs no fortress and no spawner. Bring a way to fight what arrives: at 75% you will rarely get a quiet cast.

Note the trade-off between the two best options. The Nether Brick Hook has by far the best mob rate but does no damage of its own; the Netherite Spiked Hook deals the mod's top damage (7) and is fireproof but only pulls mobs 15% of the time. There is no hook that does both well.

## Turning it off

Lava fishing is gated behind a single server setting, on by default — turning it off removes this whole system. See [07 Good to know](07_technical_notes).

[Back to index](index)
