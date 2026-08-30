---
title: "Legacy Prime Skills"
navigation:
  title: "Legacy Prime Skills"
---

# Legacy Prime Skills

Legacy Prime (`olru:legacy_prime`) is the aggressive mobility gauntlet. Its tooltip calls it “Aggressive mobility, burst damage, and aerial finishers.”

| Skill | Key | Resource | Default values |
|:---|:---|:---|:---|
| Hand Cannon | Left-click | 4 charges, 12 ticks per charge | 20 block range, 8 damage |
| Rocket Punch | Right-click hold | 80 tick cooldown | up to 45 blocks, 7-18 damage |
| Rising Uppercut | `Left Shift` | 80 tick cooldown | 5 block / 60 degree cone, 10 damage |
| Seismic Slam | `V` | 140 tick cooldown | 10 block / 95 degree impact, 4-10 damage |
| Meteor Strike | `X` | 1% ultimate charge per damage point | 4/10 block radii |

All damage uses the `olru:legacy_prime_*` damage types listed in the registry page.

## Hand Cannon (normal attack)

Fires a hitscan shot along the player’s look direction with 20 block reach. The nearest selectable living entity whose expanded bounding box intersects the ray takes 8 damage. Players are valid targets. A CRIT particle trail is spawned whether or not the shot hits, and an impact burst is spawned on hit.

The ammo pool starts empty and gains one charge every 12 ticks, capped at 4. After consuming from a full pool the next charge starts a new 12-tick refill.

## Rocket Punch (skill one)

Hold right-click to charge up to 40 ticks; `chargePercent` is the fraction of 40 ticks. While holding, the player is set to no-gravity and zero velocity. On release the server assigns a Rocket Punch movement task:

- Launch direction is the horizontal look direction.
- Launch speed scales to `2.25` blocks/tick and distance to `45` blocks at full charge.
- Mob damage scales from `7` to `18`; the launched mob’s knockback speed scales to `3.0` blocks/tick.
- A wall impact adds `1.5` extra damage and uses `olru:legacy_prime_rocket_punch_wall_impact`.

The client simulates the horizontal sweep and reports collision. Valid hit entities take `legacy_prime_rocket_punch` damage, have invulnerability time reset, and are assigned a server-side knockback task. While dashing, pressing the jump key ends the punch early and converts it into a short upward jump-out arc.

## Rising Uppercut (skill two)

Press `Left Shift` to assign yourself an upward push (`1.2` blocks/tick over a 2-block push distance) and strike every living entity inside the front cone: 5 blocks range and 60 total degrees. Struck entities take 10 `legacy_prime_rising_uppercut` damage and are pushed upward at `1.0` blocks/tick. The cone includes players, and friendly targets are not filtered.

## Seismic Slam (skill three)

Press `V` to leap forward at `0.6` blocks/tick horizontally and `0.65` blocks/tick upward, with `0.12` downward acceleration, for at most 60 ticks. When the client reports landing, the server damages entities in a forward impact cone of 10 blocks and 95 degrees:

- Damage scales from 4 at almost no airtime to 10 after 40 air ticks.
- Each hit target receives Slowness I for 80 ticks.
- Impact particles are spawned by the server; the client only reports position, facing, wall hit and elapsed ticks.

## Meteor Strike (ultimate)

Meteor Strike is a `ConditionalChargeState` ultimate. It gains `1%` progress for every point of `LivingDamageEvent.Post` damage dealt while the main hand is Legacy Prime, regardless of whether the target is hostile. At 100% the ultimate is usable.

Using it teleports you to `world max Y - 5` and starts a server-controlled hover for 60 ticks:

- Horizontal movement is client-driven but clamped to a radius around the hover start; the server forces the hover height and rolls back collisions.
- The camera is forced to look straight down and a marked landing target follows your horizontal position.
- Left-click or the timeout starts the fall.

The fall moves downward at `4.0` blocks/tick. On impact, entities within the inner 4-block radius take damage equal to their max health times the `1.0` inner multiplier; entities between 4 and 10 blocks take lerped damage from 40 down to 5. The player is excluded. `EXPLOSION_EMITTER` particles mark the landing.

**Note:** Legacy Prime skill damage does not check friendliness. Hand Cannon, Rising Uppercut, Seismic Slam and Meteor Strike can hit other players and teammates, and Meteor Strike charge also accumulates from such hits.

[Back to index](index)
