---
title: "Baits and chumming"
navigation:
  title: "05 Baits and chumming"
items:
  - better_rod:mixed_bait
---

# Baits and chumming

Baits are not fitted to the rod. You **drop them in water** and they draw fish toward the spot.

## The three baits

| Bait | Range | Minimum interval |
|:---|---:|---:|
| Salmon Bait | 20 | 100 ticks |
| Cod Bait | 40 | 160 ticks |
| Mixed Bait | 30 | 100 ticks |

Cod Bait reaches furthest but works least often; Salmon Bait is the opposite; Mixed Bait sits between them on range and matches Salmon Bait on interval, which makes it the general-purpose choice.

::: warning
**The attraction probability does not work.** Each bait carries an attract *rate* — 0.05, 0.03, 0.05 — but the code that rolls for attraction returns the **range** value instead (20, 40, 30) and compares it against a random number between 0 and 1. Since those are all far above 1, **every eligible fish in range is always attracted**, and the three rates are dead values that never affect anything.

The practical effect is that baits are considerably stronger than their numbers suggest, and the only real differences between them are **range** and **interval**. That also means Cod Bait's low rate is not a drawback — it never applied.
:::

## What counts as a fish

Attraction is driven by an entity tag, and here is the detail that matters for datapack authors: **the tags live in the `minecraft` namespace, not `better_rod`**. The mod ships them at `minecraft:fish_bait` and extends that.

Two further tags exist — `minecraft:insect_bait` and `minecraft:seed_bait` — with data files of their own. **No registered bait uses either of them.** All three baits point at the fish tag. The insect and seed categories are groundwork with nothing wired to them yet, so do not expect an item that attracts bees or birds.

To make a mob attractable, add its entity type to `minecraft:fish_bait`.

## Chumming — spawning fish, not just calling them

If a bait ticks and finds **no eligible entity at all** in its range, and the server allows it, the bait **spawns one**.

The rules are specific and they shape how you use it:

- It makes up to **five attempts** per tick cycle.
- The spawn point is a random offset **within the bait's range but never closer than 10 blocks**, and **always below** the bait — up to 10 blocks down.
- The block there must be **water**. Anything else and the attempt fails.
- **The attempt is skipped if any player is within 15 blocks** of the chosen point.

So chumming stocks water *away from you and below you*, never at your feet. In practice: drop bait, back off, and fish appear in the deeper water nearby. In a shallow pond with no water 10+ blocks out, chumming will simply never succeed.

Note that chumming only fires when the area is **empty**. Once fish are present the bait switches to attracting them instead, so a stocked pond stops producing new spawns.

## Using bait well

1. Pick a spot with **deep, wide water** — chumming needs water at range and below.
2. Drop **Mixed Bait** unless you specifically want reach.
3. Step back and let it work; standing on top of the spot suppresses spawning.
4. Cast into the gathered fish.

Bait pairs naturally with the Auto Filler ([04 Accessories](04_accessories)), since chumming produces live bucketable fish rather than loot.

Note that attraction always succeeds regardless of bait — see [07 Good to know](07_technical_notes).

[Back to index](index)
