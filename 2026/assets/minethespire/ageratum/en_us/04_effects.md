---
title: "Mob effects"
navigation:
  title: "Mob effects"
---

# Mob effects

Mine the Spire registers 11 custom mob effects. Most of them are thin wrappers that attach an attribute modifier; a few carry real logic in event listeners.

## Registry overview

| Effect ID | Category | Colour | Shows level | Mechanism |
|:---|:---|:---|:---|:---|
| `minethespire:mind_bloom` | Harmful | `#461255` | no | event logic |
| `minethespire:fairy_blessing` | Beneficial | `#17D8B3` | no | event logic |
| `minethespire:focus_boost` | Beneficial | `#D4B6FF` | yes | attribute modifier |
| `minethespire:plasma_charge` | Beneficial | `#B875FF` | yes | attribute modifier |
| `minethespire:barricade` | Beneficial | `#8FA6AA` | no | attribute modifier |
| `minethespire:intangible` | *(none set)* | `#74F0C8` | no | event logic |
| `minethespire:quick_block` | Beneficial | `#70836F` | no | instantaneous + modifier |
| `minethespire:serpent_speed` | Beneficial | `#69B95A` | no | attribute modifier, **deprecated** |
| `minethespire:vulnerable` | Harmful | `#C85A5A` | no | event logic |
| `minethespire:venin` | Harmful | `#4E8D34` | yes | event logic |
| `minethespire:vigor` | Beneficial | `#FFCB48` | yes | attribute modifier + event logic |

`intangible` is the only effect registered without calling `isBeneficial()` or `isHarmful()`, so it uses the builder's default category rather than an explicitly chosen one.

## Attribute-driven effects

| Effect | Attribute | Amount | Operation |
|:---|:---|:---|:---|
| Focus Boost | `minethespire:focus` | +1.0 (flat, level-independent) | add value |
| Plasma Charge | `minethespire:orb_passive_speed` | +0.5 (flat, level-independent) | add value |
| Barricade | `minethespire:blocking_value_change_rate` | +0.5 (flat) | add value |
| Quick Block | `minethespire:blocking_value_change_rate` | `amplifier + 1.5` | add value |
| Serpent Speed | `minecraft:movement_speed` | +30 % | multiply total |
| Vigor | `minecraft:attack_damage` | `amplifier + 1` | add value |

Note that **Focus Boost and Plasma Charge use a fixed value, not a per-level one**, even though both are registered with `renderLevel()` so the game displays a level number. Focus Boost II therefore grants the same +1 Focus as Focus Boost I, and the Strong Potion of Focus is functionally identical to the normal one.

Barricade's +0.5 exactly cancels the default `blocking_value_change_rate` of −0.5, which is what freezes Blocking Value decay. See [07 Blocking Value & HUD](07_hud_and_blocking).

Serpent Speed is marked `@Deprecated` in the source and is not applied by anything — Ring of the Snake now grants vanilla Speed II instead.

## Mind Bloom

The harshest effect in the mod.

- While you have Mind Bloom, **all healing is cancelled** (`LivingHealEvent`).
- Mind Bloom **cannot be removed or expire**: both `MobEffectEvent.Remove` and `MobEffectEvent.Expired` are cancelled while the entity is not dead or dying. Milk, `/effect clear`, and the duration running out are all ineffective.
- The only intended way out is `/mts clearMindBloom`, which sets a static flag telling the listener to allow removal for the duration of the command.
- When the server config `fierce_mind_bloom` is enabled (**default `true`**), two extra restrictions apply:
  - `LivingUseTotemEvent` is cancelled, so a Totem of Undying will not save you.
  - Even health-setting sources that bypass normal healing are blocked, so effects from other mods cannot sidestep it either.

The `ON_CMD_CLEAR` flag is a plain static `volatile boolean` on the effect class, shared by the whole server. It is set immediately before and cleared immediately after the removal loop.

## Fairy Blessing

A single-use death save. When you would die:

1. Fairy Blessing is removed.
2. Health is set to **30 %** of max health.
3. Vanilla Resistance IV is applied for 40 ticks.
4. `TOTEM_USE` plays, with 80 firefly and 60 happy-villager particles.

Fairy Blessing also cancels `LivingUseTotemEvent` unconditionally, so while it is active a Totem of Undying is suppressed in favour of the weaker Fairy Blessing save. Fairy Blessing is checked **before** Lizard Tail in the death listener, so if you have both, Fairy Blessing is consumed first.

Obtain it from the Bottled Fairy potion — see [05 Potions & brewing](05_potions_and_brewing).

## Intangible

While Intangible, any incoming damage greater than `1.0` is clamped to exactly `1.0`. The only exception is `minecraft:generic_kill`. Damage of 1.0 or less passes through unchanged.

This is a flat cap, not a percentage: it makes you almost immune to single large hits while still leaving you vulnerable to rapid small ones. Obtain it by eating **Spirit** (5 minutes).

## Vulnerable

Multiplies incoming damage by `1 + 0.25 × (amplifier + 1)`.

| In-game level | Multiplier |
|:---|:---|
| I (amplifier 0) | ×1.25 |
| II (amplifier 1) | ×1.5 |
| III (amplifier 2) | ×1.75 |

It is applied in `LivingDamageEvent.Pre` *before* Blocking Value absorption, so the amplified damage is what your Blocking Value has to soak.

## Venin

A stacking damage-over-expiry poison. When a Venin instance expires:

1. It deals `amplifier + 1` points of vanilla `minecraft:magic` damage.
2. If that level was greater than 1 and the entity survived, it **re-applies itself** at one level lower for 100 ticks and cancels the expiry event.

So Venin III deals 3 damage, then 2, then 1, over successive 5-second windows — 6 total damage across roughly 15 seconds. The damage is dealt at expiry only, never per tick.

## Vigor

Adds `amplifier + 1` flat attack damage. It is **consumed by attacking**: `tryRemoveVigorOnAttack` runs on `LivingIncomingDamage` and removes Vigor from both the damage source's owning entity and its direct entity.

Akabeko grants `Vigor` at amplifier 7 (displayed as Vigor VIII, i.e. +8 attack damage) with **infinite duration** (`-1`), so it persists until your next attack spends it.

Because the removal checks the direct entity too, a projectile you fired can also consume the Vigor of whatever launched it.

## Quick Block

An `InstantenousMobEffect`. Applying it schedules a real Quick Block instance whose duration is `max(1, floor(5 × scale))` ticks — a very short burst of rapid Blocking Value regeneration rather than a lasting buff. The Potion of Blocking registers it with duration 5 and amplifier 19.

[Back to index](index)
