---
title: "Lines"
navigation:
  title: "03 Lines"
---

# Lines

The line changes what happens *between* you and the bobber. Two of the four are weapons that work on whatever the line passes through.

## The taut-line effect

The two vine lines share a mechanism worth understanding, because it is not a radius:

Every second, the mod draws a segment from the bobber to a point **1.5 blocks above you** — roughly your chest — and applies an effect to every living entity whose hitbox that segment **passes through**. It is a proper line-versus-box test, not a distance check.

So a vine line is a clothesline. Cast past a mob and the line itself does the work; the bobber never has to touch anything.

| Line | Effect applied every second |
|:---|:---|
| Twisting Vines Line | **Poison II**, 1 second |
| Weeping Vines Line | **Weakness I + Slowness I**, 1 second |

Both effects are reapplied each second, so holding the line across a target keeps them up continuously. Poison II is the damage option; weeping vines is the control option.

::: warning
**A bug limits this.** The entity filter contains a clause that checks whether the *hooked* entity is a player, rather than whether each *candidate* entity is. The result: if you have a **player** on your hook and the server's `bypassPlayer` setting is on (it is by default), the filter rejects **everything** and the vine line does nothing at all — not even to nearby mobs.

The intent was clearly to spare players from the effect. As written, hooking a player switches the line off entirely. With nothing hooked, or a mob hooked, the line works normally.
:::

## Elastic Line — a shorter cast that pulls

Two changes, and they work together:

**Your cast is shorter.** The bobber leaves the rod at 75% of normal velocity, so you cannot reach as far.

**The line pulls.** Every tick, if the bobber is more than 5 blocks from you, whatever is on the hook — or the bobber itself if nothing is — is nudged toward you.

The result is a rod that fights you on range and helps you on retrieval. It is the forgiving option: a hooked mob drifts steadily closer instead of needing repeated reels, and combined with a spiked hook the constant pull keeps the victim slow enough not to tear free.

## Ender Line — a horizontal yank

On reel-in the Ender Line **teleports** the hooked entity toward you, with an enderman teleport sound at both ends.

Two details decide how it feels:

**It moves the target about half the distance to you**, not all the way. One pull closes the gap; it does not deliver the mob to your feet.

**It is horizontal only.** The vertical component of the jump is multiplied by zero, so a mob below you stays below you and one above stays above. The teleport does search upward for a non-solid space so the target is not stuffed into a wall, but it will not lift anything up to your level.

That makes the Ender Line good for closing distance across flat ground and useless for hauling something out of a ravine.

## Choosing

| You want | Line |
|:---|:---|
| Damage over time along the line | Twisting Vines |
| To slow and weaken a group | Weeping Vines |
| Reliable retrieval, forgiving play | Elastic |
| To close horizontal distance fast | Ender |

Remember all four are also just fishing lines — none of them prevents ordinary fishing.

[Back to index](index)
