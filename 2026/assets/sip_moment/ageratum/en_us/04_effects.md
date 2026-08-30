---
title: Effects
navigation:
  title: Effects
description: The four mob effects, the hidden alcohol-tolerance roll, and the crit-driven escalation chain.
---

# Effects

Four effects are registered: `drunk`, `edgerunners`, `furious` and `sincerely_for_you`.

## Drunk — and your alcohol tolerance

Drinking any **wine** applies `sip_moment:drunk`, a **harmful** effect, for **30 seconds**. Drinking again while still drunk **removes and re-applies it one level higher**, capped at amplifier 9 (Drunk X). The timer resets to 30 seconds each sip, so a steady drinker climbs the ladder rather than sobering off.

The first time any living entity drinks wine, the mod rolls a hidden **alcohol tolerance** and stores it as a data attachment on that entity. Players are told theirs immediately via an action-bar message showing a number **from 1 to 9** in gold. The value is rolled once and kept — it is a per-entity trait, not a per-session one.

The effect class itself is deliberately empty: it declares no attribute modifiers. Everything you see and feel from being drunk is produced elsewhere — the drunk particle and the client handler read both the effect level and your tolerance, which is why two players at the same Drunk level can be affected differently.

Note that only **wines** do this. The soft drinks — Black Star Coffee, Orange Juice, Butter Beer — do not make you drunk.

## Edgerunners → Furious

This is the mod's one real combat chain, and it starts with a cocktail.

| Step | What happens |
|:---|:---|
| Drink **David Martinez** | Grants `edgerunners` for **5 minutes** (beneficial) |
| Land a **critical hit** while it is active | **10% chance** to grant or escalate `furious` |
| `furious` is granted | **12 seconds**, starting at level I |
| Land another crit while Furious is up | Refreshes to 12 seconds and steps up one level, **capped at level III** |

`furious` is categorised beneficial and carries three attribute modifiers, all scaling with the level:

| Attribute | Change per level |
|:---|:---|
| Attack damage | **+10** |
| Max health | **−5** |
| Knockback resistance | **+0.5** |

At level III that is roughly +30 attack damage, −15 max health and +1.5 knockback resistance. The trade is the point: it is a cyberpsychosis mechanic, so it makes you dramatically more lethal and dramatically easier to kill at the same time. Because escalation is tied to landing crits, the effect rewards staying aggressive and punishes it simultaneously.

Two practical notes:

- The chance is rolled **per critical hit**, not per attack, so a build that crits often escalates fast.
- Losing Furious drops your max health cap back — if your current health was above the reduced maximum you simply lose the surplus, so cycling in and out of Furious is not free.

## Sincerely For You — the spear key

Drinking **Orange Juice** grants `sincerely_for_you` for **60 seconds**. It is registered as beneficial and, like Drunk, carries **no attribute modifiers at all**.

Its entire purpose is to act as a **gate**: while it is active, throwing a vanilla trident throws the **Spear of Longinus** instead. That is the only thing it does, and nothing in the game tells you so. See [06 Spear of Longinus](06_spear_of_longinus).

## Summary

| Effect | Category | Source | Duration |
|:---|:---|:---|:---|
| `drunk` | harmful | any wine | 30 s, stacks to X |
| `edgerunners` | beneficial | David Martinez | 5 min |
| `furious` | beneficial | crits while Edgerunners is active | 12 s, up to III |
| `sincerely_for_you` | beneficial | Orange Juice | 60 s |

[Back to index](index)
