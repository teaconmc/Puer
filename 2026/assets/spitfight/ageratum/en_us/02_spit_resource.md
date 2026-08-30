---
title: "Spit resource"
navigation:
  title: "02 Spit resource"
---

# Spit resource

Saliva is a single integer stored on your player. It persists across sessions, is synced to your client for the HUD, and is calculated entirely on the server.

## Capacity and starting value

| Property | Value |
|:---|:---|
| Starting saliva | 100 |
| Capacity (default) | 100 (`playerSpitCapacity`) |
| Floor | 0 — never negative |

Capacity is a config value, but the starting and fallback value is a fixed 100. If you lower the capacity below 100, an existing player's saliva is not trimmed on load; it simply cannot be topped up past the new capacity.

## What spends saliva

| Action | Cost |
|:---|:---|
| Sending a chat message | 1 |
| Spitting | at least `playerMinSpitCount` (default 10), up to your charge length |

Spitting is the expensive action. The exact amount is explained in [03 Charging and spitting](03_charging_and_spitting).

## What restores saliva

| Source | Amount |
|:---|:---|
| Natural regeneration | `playerSpitNaturalRegenerationSpeed` (default 1) per second |
| Drinking from a water block | `drinkRegenerationSpitCount` (default 20) |
| Finishing any `c:drinks` item | `drinkRegenerationSpitCount` (default 20) |
| Finishing any `c:foods/soup` item | `drinkRegenerationSpitCount` (default 20) |

All restoration is capped at your capacity.

## Natural regeneration is conditional

Regeneration is not unconditional idle recovery. It only runs when **all** of these hold:

- You are on the server side (it is server-authoritative).
- You are inside the available range.
- You are **not** currently charging.
- Your saliva is not already full.
- The world game time is an exact multiple of 20 ticks.

The "not while charging" rule matters in practice: holding the spit key suspends regeneration entirely, so a long hold does not passively refill you while you wait.

Setting `playerSpitNaturalRegenerationSpeed` to `0` disables natural regeneration, leaving drinking as the only source.

Because the regeneration tick is tied to the world clock rather than to a per-player timer, all players regenerate on the same shared 1-second beat.

## Running dry

At 1 saliva or less, chat is blocked with *"You are too thirsty to do this."* Below `playerMinSpitCount` you also cannot spit, and you get the same message. Creative players bypass both checks.

Note that the chat block is enforced on the client side, while the 1-saliva chat cost is applied on the server side.

[Back to index](index)
