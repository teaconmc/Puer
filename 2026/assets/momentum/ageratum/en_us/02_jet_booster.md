---
title: Jet Booster
navigation:
  title: Jet Booster
description: The mod's only item, its attributes, how it is detected, and what it unlocks.
---

# Jet Booster

`momentum:jet_booster` is the only item Momentum registers.

## Item properties

| Property | Value |
|:---|:---|
| Stack size | 1 |
| Rarity | Rare |
| Enchantability | 22 |
| Equipment slot | Leggings |
| Armor | +5.0 (`momentum:jet_booster_armor`, add value, legs) |
| Armor toughness | +2.0 (`momentum:jet_booster_toughness`, add value, legs) |
| Creative tab | vanilla Combat |

Because it is enchantable and occupies the leggings slot, it competes with real leggings — you gain the movement kit but give up whatever armour you would otherwise wear there, unless you route it through a Curios belt slot instead.

The in-game tooltip is injected at runtime and reads: increases movement speed, jump height and step height; enables mid-air dodge; prevents wall run descent; reduces all fall damage.

## How the mod detects it

Every tick the movement context checks, in order:

1. Is the item in the player's **leggings** slot?
2. Otherwise, if Curios is loaded, does a Curios slot hold it?

Either hit sets the internal `hasJetBooster` flag. When the flag changes, the attribute modifiers are re-applied immediately, so the transition is instant rather than waiting for a respawn or relog.

## What the booster changes

**Abilities that require it** — these do nothing without the booster, no matter how the config is set:

- Water skating (`enableWaterRun`)
- Slow falling (`enableFallSlow`)
- Air jump (`enableAirJump`)
- Dodging **while airborne** — the ground dodge does not need the booster

**Abilities it improves:**

- **Wall run** stops descending. Without the booster a wall run bleeds altitude; with it, upward speed is applied to hold the line.
- **Wall climb** gains a guaranteed minimum upward speed.
- **Fall damage** is reduced twice over: the effective fall distance drops by **12 blocks** and the damage multiplier is halved (**×0.5**). This stacks with the break-fall reduction described in [05 Air and water](05_air_and_water.md).
- **Stamina cost** is discounted by `boosterStaminaReduction`, which defaults to `1.0` — a complete waiver.

## Interaction with hunger

The server option `maneuverConsumeHunger` defaults to **`false`**, so maneuvering is free by default. When an operator enables it, each maneuvering tick drains `maneuverConsumeHungerAmount` (default `0.01`) of exhaustion, and the booster's `boosterStaminaReduction` discount applies on top.

## Curios integration

Curios is declared as an **optional** dependency with an unbounded version range. The compatibility layer checks `ModList` before touching any Curios class, so the mod loads cleanly without it. When Curios is present, the shipped tag file adds the booster to the belt slot, letting you keep real leggings on.

[Back to index](index)
