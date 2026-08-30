---
title: "Getting started"
navigation:
  title: "01 Getting started"
---

# Getting started

Spit Fight adds no items, blocks, or recipes. Everything is driven by one key, one resource, and one projectile, and it only works inside the mod's configured area.

## The spit bar

While you are inside the available range, a bar appears above your hotbar showing your current saliva as `current / maximum` (100 / 100 by default). It is drawn just above the experience level and pushes the held-item name up so both stay readable.

The bar is hidden when:

- You are in Creative or Spectator mode.
- The HUD is hidden (F1).
- You are outside the available range.

## The Spit key

The mod registers one key binding, **Spit**, bound to `Z` by default and listed under the Gameplay category. Rebind it in Options → Controls like any other key.

- **Hold** the key to start charging.
- **Release** the key to spit.

There is no item to hold and no cooldown; the only limit is how much saliva you have.

## Drinking to recover

Two things restore saliva:

- **Aim at water and release right-click with an empty hand.** You must be looking at a water block and not be at full saliva. This plays a drinking sound and restores saliva immediately.
- **Finish drinking or eating anything** in the `c:drinks` or `c:foods/soup` tags — potions, milk, soups, and similar.

Saliva also regenerates slowly on its own; see [02 Spit resource](02_spit_resource).

## Talking costs saliva

Every chat message you send costs **1 saliva**. If you are inside the range, not in Creative or Spectator mode, and your saliva has dropped to 1 or lower, chatting is blocked entirely and you get the message *"You are too thirsty to do this."*

This is the core of the mod: a long argument genuinely dries you out.

## Quick checklist

1. Stand inside the mod's available range — the spit bar confirms you are in.
2. Press and hold `Z` to charge.
3. Release to spit at your target.
4. Look at water and release right-click with an empty hand to drink back up.

[Back to index](index)
