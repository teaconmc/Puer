---
title: "Orbs"
navigation:
  title: "Orbs"
---

# Orbs

Orbs are small entities that circle your head, act automatically on a timer (**passive**), and can be spent for a bigger one-off effect (**evoke**). They are stored in a per-entity attachment (`minethespire:orb_manager`) that holds an ordered, capacity-limited list of orb UUIDs.

Any `LivingEntity` can own orbs, not only players.

## The four orb types

The enum `OrbType` has exactly four values, and their names are capitalised in the source (`Lightning`, `Frost`, `Dark`, `Plasma`) — this matters for the `/mts orb channel` argument.

| Entity ID | Item that channels it | Passive action | Evoke action |
|:---|:---|:---|:---|
| `minethespire:lightning_orb` | `minethespire:lightning_orb` | 3 damage to a hostile (in combat only) | 8 damage projectile |
| `minethespire:frost_orb` | `minethespire:frost_orb` | +5 Blocking Value | +20 Blocking Value, then dissipate |
| `minethespire:dark_orb` | `minethespire:dark_orb` | +3 stored charge (in combat only) | projectile dealing its full charge |
| `minethespire:plasma_orb` | `minethespire:plasma_orb` | none | grants stacking Plasma Charge |

All damage and Blocking Value numbers above are passed through `focusAdjusted`, which adds the `minethespire:focus` attribute value and clamps the result at 0.

## Shared orb behaviour

Every orb is a non-gravity, non-colliding entity with a hitbox of `0.3125 × 0.3125`. It cannot be attacked, cannot be hit by projectiles, and `hurtServer` always returns `false`.

| Property | Value |
|:---|:---|
| Orbit radius | `1 + 0.15 × sin(orbTick × 0.07)` blocks |
| Orbit rotation speed | `0.08` radians per owner tick |
| Orbit plane | perpendicular to the owner's look direction, centred on the eye position |
| Owner leash range | 48 blocks — beyond that the orb dissipates |
| Evoked lifetime cap | 200 ticks (10 s) |
| Client tracking range | 8 chunks, update interval 1 tick |

Orbs dissipate (with an `AMETHYST_BLOCK_BREAK` sound and white smoke) when the owner dies, leaves the level, moves out of range, or when the orb is no longer in the owner's sequence.

## Capacity and eviction

| Attribute | Default | Range |
|:---|:---|:---|
| `minethespire:max_charge_ball` | 1 | 0 – 16 |
| `minethespire:orb_attack_range` | 8 | 0 – 64 |
| `minethespire:orb_passive_speed` | 0.5 | 0.01 – 20 |

The capacity is the floor of `max_charge_ball`, so by default you can hold exactly **one** orb. `cracked_core` and `defect_mask` each add +2.

The orb list is FIFO. Channelling an orb while at capacity **evokes the oldest orb** rather than discarding it — you still get its evoke effect. If `max_charge_ball` drops (for example when you unequip Cracked Core), the surplus orbs at the tail of the list dissipate without evoking.

## The passive timer

The passive cycle length is `ceil(20 / orb_passive_speed)` ticks — **40 ticks at the default 0.5**. Orbs of the same type share the cycle and are phase-spread across it, so three Frost Orbs act at evenly spaced offsets instead of all at once.

A Plasma Orb adds a transient `+0.2` modifier to `orb_passive_speed` for as long as it exists, which shortens the cycle for *all* of your orbs (0.5 → 0.7 gives a 29-tick cycle).

## Targeting

Passive and evoked attacks pick their target with `CombatState.getRandomHostileIn`: a **random** entity from your Combat State hostile set that is within `orb_attack_range`. This has two consequences worth knowing:

- Orbs will not attack anything you are not already in combat with. Channelling a Lightning Orb next to a passive cow does nothing until that entity is registered as a hostile.
- The target is re-rolled each time an action fires, so attacks spread randomly across your current hostiles rather than focusing one.

If an orb is evoked with no valid target, Lightning and Dark Orbs launch straight along the owner's look direction at `0.7` blocks per tick. With a target they home in at the same speed.

## Type details

### Lightning Orb

- Passive: only fires while the owner is in combat; deals `focus + 3` damage of type `minethespire:orb_lightning`, drawing a spark/end-rod particle line to the target.
- Evoke: becomes a homing projectile; the first entity it hits takes `focus + 8` damage, then the orb dissipates.
- Out of combat it starts a countdown of `400–599` ticks and dissipates when it expires. Re-entering combat resets the countdown.

### Frost Orb

- Passive: grants the owner `focus + 5` Blocking Value with a chain-fall sound and snowflake particles. This works whether or not you are in combat.
- Evoke: grants `focus + 20` Blocking Value and dissipates immediately.
- A Frost Orb is created with a random lifetime of `400–599` ticks that counts down **unconditionally**. Unlike the Lightning Orb, being in combat does not extend it, so Frost Orbs always expire after roughly 20–30 seconds.

### Dark Orb

- Starts with `6.0` stored charge, shown as a number rendered next to the orb.
- Passive in combat: charge increases by `focus + 3`.
- Passive out of combat: charge decreases by `max(charge × 0.2, 1.0)`, and the orb dissipates once charge reaches 0.
- Evoke: becomes a homing projectile dealing damage equal to its **current charge** as `minethespire:orb_dark`. Focus is not applied again at impact — it was already folded into each charge tick.

### Plasma Orb

- Has no passive action at all; its `passiveAction` only calls the empty base implementation.
- While alive it grants the `orb_passive_speed` bonus described above, so its real purpose is accelerating your other orbs.
- Evoke: reads your current **Plasma Charge** effect, removes it, and re-applies it at `amplifier + 1` for 600 ticks — so repeated evokes stack the level indefinitely. The orb is then removed with `discard()` instead of `dissipate()`, so it produces no smoke or break sound.

## Channelling items and Dualcast

The four orb items channel their matching orb. `minethespire:dualcast` copies your first orb, mirrors the copy to the opposite side of your view axis, then evokes **both** the original and the copy, with a beacon sound and electric-spark particles at each position. For a Dark Orb the copy inherits the original's charge.

## Commands

`/mts orb` can clear or channel orbs directly. See [08 Commands & configuration](08_commands_and_config).

[Back to index](index)
