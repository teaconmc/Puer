---
title: Drinks and Sipping
navigation:
  title: Drinks and Sipping
description: The ten drinks, how many sips each takes, pouring bottles into glasses, and setting glassware down.
---

# Drinks and sipping

## Sipping, not gulping

Every drink carries a **sip count**. One right-click is one sip; the item is only consumed when the last sip is taken. This is the mechanic the mod is named after, and it is why drinks are `stacksTo(1)` — each one is an individual glass with its own remaining volume.

| Drink | Sips | Effect on finishing | Placed block stacks up to |
|:---|--:|:---|--:|
| Highball | **6** | — | 4 |
| Butter Beer | **6** | Regeneration III, 15 s | 4 |
| Kyoho Wine (bottle) | **6** | — | **2** |
| Champagne (bottle) | **6** | — | **2** |
| Whisky | **4** | — | 4 |
| David Martinez | **4** | **Edgerunners, 5 min** | 4 |
| Kyoho Wine Cup | **4** | — | 4 |
| Champagne Cup | **4** | — | 4 |
| Black Star Coffee | **4** | — | **2** |
| Orange Juice | **4** | **Sincerely For You, 60 s** | **2** |

Only three of the ten grant an effect on their own. The rest are flavour and decoration — though drinking wine also involves the Drunk effect, which is covered in [04 Effects](04_effects).

Each sip takes about **1.6 seconds** for the plain drinks, uses the vanilla drink animation and sound, and deliberately emits **no consume particles**.

## Bottles pour into glasses

Two items are **bottles** rather than servings: `kyoho_wine` and `champagne`. Each is registered knowing two things a plain drink does not:

| Bottle | Empty glass it fills | Served result | Liquid colour |
|:---|:---|:---|:---|
| Kyoho Wine | Goblet | Kyoho Wine Cup | a red-violet grape tone |
| Champagne | Champagne Glass | Champagne Cup | a golden amber tone |

The colour is baked into the item registration, which is what lets the pouring animation and the filled-glass rendering show the right liquid. A **pouring wine entity** exists specifically to animate the transfer, so pouring is a visible action rather than an instant swap.

Because a bottle has 6 sips and a served cup has 4, a bottle is worth more than a single glass — the two 16-emerald wine list bundles are priced accordingly.

## Every drink is also a block

All ten drinks, plus both empty glasses, are **placeable**. Their block form is built from vanilla glass properties, plays the glass placement sound, and occupies a low flat box — 14×4×14 sixteenths, sitting on the surface rather than filling the cell. That is what lets you line a bar top with glassware.

Two block states matter:

- **`facing`** — drinks orient to the player, so you can angle a row of glasses.
- **`pile`** — how many are stacked in that one block space.

The pile ceiling is **per drink**, and the pattern is deliberate: **served glasses stack 4 high, while bottles and the two soft drinks stack only 2**. A shelf of champagne bottles therefore reads differently from a tray of champagne flutes.

## Breaking them back

Thirteen of the fifteen blocks drop themselves when broken. **Orange juice does not**, so a placed orange juice is destroyed permanently — see [Good to know](07_technical_and_limits).

[Back to index](index)
