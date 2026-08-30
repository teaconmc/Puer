---
title: "Sending and envelope types"
navigation:
  title: "Sending and envelope types"
---

# Sending and envelope types

When you open the send menu you pick one of four property types. The type changes how a claim is allowed and how the gift is split.

## Normal

The gift stack is divided as evenly as possible among the chosen player count. Every claimer receives roughly the same amount.

## Lucky Money (拼手气)

Claims are randomized. Each claimer gets between `1` and about `2 × (remainingAmount / remainingClaims)` items, capped so that at least `1` item stays for everyone else. First-come randomness decides the windfall.

## Password (口令)

A claim is only possible after a player sends the matching password in chat. The password appears in the chat card; anyone may copy and paste it. Sending the password is still a normal public chat message, and it also queues the claim.

::: note
A password that starts with `/` is rejected when composing the envelope. Passwords are case-sensitive and trimmed.
:::

## Exclusive (专属)

Only the single named player may claim this envelope. The name must match an online player at send time (`<modid>:...` cannot target an offline player).

## Expiry and return

Every envelope has an `Options` toggle for what happens when it expires. By default envelopes live **8 hours** of in-game time before expiring.

- **Return on expiry (default)**: unclaimed items are returned to the sender's inventory, or delivered when they next log in if the sender is offline.
- **Destroy on expiry**: nothing is returned; unclaimed items are lost.

::: warning
An exclusive envelope forces `playerCount` to `1`. More players than items, an offline exclusive target, an over-long title, or an over-long property value all reject the send before anything is claimed.
:::

[Back to index](index)
