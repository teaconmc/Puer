---
title: "Abilities"
navigation:
  title: "03 Abilities"
items:
  - valorant:jett_blade_storm_item
---

# Abilities

Twenty abilities, four per agent. The tables below describe what the implementation and its sound stages establish; exact numbers are not stated where the source does not fix them plainly.

## Raze

Four explosives, and the mod's most developed agent — every one has a full sound cycle.

| Ability | Item id | Behaviour |
|:---|:---|:---|
| Paint Shells | `leizhibomb_item` | thrown grenade; **beeps, then explodes** |
| Blast Pack | `blastpack_item` | thrown charge that **sticks** where it lands, hums, then explodes |
| Boom Bot | `boombot_item` | deployed robot that **moves under its own power**, then explodes |
| Showstopper | `bigbomb_item` | fired projectile; the ultimate, with the largest blast |

Blast Pack sticking rather than bouncing is the detail that matters in play: you can plant it on a wall or ceiling and it stays.

::: warning
**Raze's naming is inconsistent, and it will confuse you when reading files.** Internally the agent is **`leizhi`** — the sound folder is `sounds/leizhi/`, the item is `leizhibomb_item`, and the subtitle keys are `subtitles.valorant.leizhi.*`.

Meanwhile the sound subtitles use the official English names ("Raze throws Paint Shells"), but the **item display names use the internal ones**: `leizhibomb_item` shows as **"Leizhi Bomb"** and `bigbomb_item` shows as **"BigBomb"**, not "Paint Shells" and "Showstopper".

So the same ability has two different names depending on whether you read the item or the subtitle. Resource pack authors must use `leizhi`.
:::

## Sage

| Ability | Item id | Behaviour |
|:---|:---|:---|
| Healing Orb | `sage_heal_item` | heals a target |
| Barrier Orb | `sage_barrier_item` | places a solid wall that **fades** after a time; **two orientations** |
| Slow Orb | `sage_slow_item` | thrown; **bursts** into a slowing field |
| Resurrection | `sage_resurrection_item` | revives — **disabled by default** |

Two of these need their own explanation: the Barrier's orientation control and Resurrection's config gate. Both are in [04 Special mechanics](04_special_mechanics).

## Phoenix

| Ability | Item id | Behaviour |
|:---|:---|:---|
| Curveball | `phoenix_curveball_item` | thrown flash that **explodes** into light |
| Hot Hands | `phoenix_hot_hands_item` | thrown fire that burns an area |
| Blaze | `phoenix_blaze_item` | a fire wall that **persists, then ends** — it has a looping sound and an explicit end |
| Run It Back | `phoenix_run_it_back_item` | the ultimate; self-revival |

Blaze having a loop-and-end sound pair tells you it is a **duration effect** rather than an instant one, so expect a wall you can rely on for a while and then lose.

## Jett

| Ability | Item id | Behaviour |
|:---|:---|:---|
| Cloudburst | `jett_cloudburst_item` | thrown smoke |
| Updraft | `jett_updraft_item` | launches you upward; **consumes the item** |
| Tailwind | `jett_tailwind_item` | two stages — **ready**, then **dash**; consumes the item |
| Blade Storm | `jett_blade_storm_item` | throwing knives; **single throw or throw-all**, and the only ability with a real cooldown |

Tailwind being two-stage matters: activating it arms the dash, and the dash itself is a second event. Blade Storm is covered further in [04 Special mechanics](04_special_mechanics).

## Clove

The most mechanically unusual agent — three of the four do something no ordinary item does.

| Ability | Item id | Behaviour |
|:---|:---|:---|
| Ruse | `clove_ruse_item` | opens a **map screen**; you click the map to place smoke remotely |
| Meddle | `clove_meddle_item` | thrown; arms (**ready**), then **explodes** into a decay field |
| Pick-me-up | `clove_pick_me_up_item` | has a **proc** — it triggers on a condition rather than on use |
| Not Dead Yet | `clove_not_dead_yet_item` | usable **only from the death screen** |

Ruse and Not Dead Yet both get full treatment in [04 Special mechanics](04_special_mechanics).

## Which abilities consume the item

Confirmed from the source:

| Consumes on use | Notes |
|:---|:---|
| Clove Meddle | |
| Clove Pick-me-up | |
| Clove Ruse | taken from anywhere in your inventory |
| Jett Updraft | |
| Jett Tailwind | |
| Jett Blade Storm | **skipped in creative mode** |

The rest are not confirmed as consuming, so do not assume a stack lasts — test the specific ability you intend to rely on.

## Sound design is a real strength

Every agent has its own sound folder — **forty files across the five** — and the mod registers proper subtitle keys for all of them, including separate entries for a grenade's *beep*, *explode* and *stick* stages. Blade Storm even has three randomised throw sounds.

This is the most polished part of the mod, and it is worth turning subtitles on to see the ability states named as they fire. Note that **ten of those subtitles are missing from the Chinese translation** — see [05 Good to know](05_technical_notes).

[Back to index](index)
