---
title: "Effect transfer"
navigation:
  title: "04 Effect transfer"
---

# Effect transfer

This is the mod's signature mechanic. A spit is not just a projectile: it is a courier for your own status effects.

## You pay with your buffs

At the moment the spit is created, the mod:

1. Takes a snapshot of **every** active effect on you.
2. Removes **all** of your effects.
3. Loads the spit with copies of those effects, each lasting **100 ticks (5 seconds)**.
4. Gives you your effects back, each with **100 ticks subtracted** from its remaining duration.

So spitting costs you 5 seconds off every buff you are holding. Amplifier, ambient, visibility, and icon flags are all preserved on both copies.

Two consequences worth planning around:

- **Short effects are effectively consumed.** If an effect has 100 ticks or less remaining, the subtraction bottoms out at a floor of 1 tick, so you get it back only for an instant.
- **Every effect goes at once.** You cannot choose which buffs to load; the spit always carries your whole active set.

## The target receives them

On hitting a living entity, the spit applies all carried effects to that entity, attributed to you as the source. The target therefore gets a 5-second copy of whatever you were running — including your debuffs, which is why spitting while poisoned is a genuine tactic.

## Four effects do something extra

Beyond simply applying, these carried effects trigger a special result at the impact point:

| Carried effect | Extra result on hit |
|:---|:---|
| Wind Charged | A wind-charge style explosion at the target — knockback and gust particles, and it can move blocks that wind charges move |
| Weaving | A cobweb block is placed at the target's position |
| Oozing | 0–3 slimes spawn on the target, each at a random size, already targeting it |
| Infested | 0–3 silverfish spawn on the target, already targeting it |

The slime and silverfish counts are rolled randomly and **can come out as zero**, so these two are unreliable by design. The spawned mobs are immediately hostile to the entity you hit.

The wind-charge explosion is created with you as the source and does not damage terrain generally — it uses the wind-charge block interaction list, so it affects the same blocks a vanilla wind charge would.

## Practical notes

- Effects are stored on the projectile itself and survive save/load, so a spit in flight keeps its payload.
- Because your effects are stripped and re-added, external sources that continuously reapply effects (such as a beacon) will restore theirs on their own schedule.
- Firing repeatedly drains your buffs quickly: each shot is another 5 seconds off everything.

[Back to index](index)
