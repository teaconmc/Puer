---
title: Getting Started
navigation:
  title: Getting Started
description: Craft the Jet Booster, equip it, and switch maneuver mode on.
---

# Getting started

## Turning maneuver mode on

Momentum is gated by a per-player switch stored in the `momentum:momentum_enabled` data attachment. Press **`Shift`+`M`** to toggle it; the server answers with an action-bar line, either "Momentum enabled" or "Momentum disabled". The same line is shown once when you log in, so you always know which mode you joined in.

While the switch is off the state machine parks in its `Original` state, every modded physics override stands down, and you move exactly as in vanilla. The attachment is saved with the player, survives death (`copyOnDeath`) and is synced to the client. Its initial value for a brand-new player comes from the server option `defaultEnableManeuver`, which defaults to `true` — so a fresh player is already in maneuver mode.

## Getting the Jet Booster

The only item in the mod is crafted on a normal crafting table:

<recipe id="momentum:jet_booster"/>

The pattern is iron ingot / gunpowder / iron ingot, blaze powder / leather / blaze powder, piston / redstone block / piston. In creative you will find the booster in the vanilla **Combat** tab — the mod does not register a tab of its own.

## Equipping it

The booster counts as equipped in either of two places:

- The vanilla **leggings** slot. The item is `equippable(LEGS)`, so it goes on like a pair of trousers.
- A Curios **belt** slot, when Curios is installed. The mod ships `data/curios/tags/item/belt.json` adding the booster to that tag.

Both routes set the same internal flag, and the mod re-checks the flag every tick, so swapping the booster in or out takes effect immediately.

## Do you need the booster?

Mostly no. The server option `allowManeuverWithoutThruster` defaults to **`true`**, which means the full state machine is available bare-handed. Four abilities are still booster-only regardless of that option — water skating, slow falling, the air jump, and dodging while airborne — and the booster also improves several others. See [02 Jet Booster](02_jet_booster.md).

If a server operator sets `allowManeuverWithoutThruster` to `false`, then **no** maneuver works without the booster equipped.

## First things to try

1. Sprint on flat ground and hold **`C`** — you drop into a slide.
2. Sprint at a wall and hold the forward key with the jump key — you run up it, then climb.
3. Sprint alongside a wall holding the direction into it — you run along its face.
4. Fall a few blocks while holding **`C`** — you land in a break fall instead of taking the full hit.
5. Press **`Shift`+`N`** if the on-screen key hints get in your way.

## Reading on

- Ground actions: [03 Ground movement](03_ground_movement.md)
- Wall actions: [04 Wall movement](04_wall_movement.md)
- Air and water actions: [05 Air and water](05_air_and_water.md)

[Back to index](index)
