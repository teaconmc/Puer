---
title: Messages in a Bottle
navigation:
  title: Messages in a Bottle
description: Throwing a bottle out to sea, the drifting bottle block, and finding letters written by other players.
---

# Messages in a Bottle

A second, anonymous delivery channel: seal a letter into a bottle and throw it into the water.

## Throwing

`throwable_message_in_bottle` is used on water. On success you are told **"Your message in a bottle drifts out to sea!"**; if conditions are not met the throw fails with "Throw failed."

The thrown bottle exists as the entity `thrown_message_in_bottle` (0.25 x 0.25, tracking range 4). Its tooltip records the sealer: `Sealed by: %s`.

## The bottle block

`message_in_bottle` is a real block, deliberately built to look like debris rather than architecture:

- strength 0.3 — trivial to break
- no occlusion, dynamic shape
- **XZ offset type**, so each placement sits at a slightly different spot in its block

## Finding one

Using a found bottle either yields a letter — **"You found a sealed letter inside the bottle."** — or reports **"The bottle is empty."**

## The letter pool

Which letter a bottle contains is decided by a **letter pool** loaded from `data/letter_signal_phone/letter_signal_phone/message_in_bottle_letters/*.json`; the mod ships one file, `default`. A spawner drives bottle appearance, and the pool plus its saved data track what has been distributed.

Two consequences:

- The bottles you find are **not necessarily** written by players on your server — the pool is datapack content.
- Because the pool is data, a pack author can replace the entire set of findable letters.

[Back to index](index)
