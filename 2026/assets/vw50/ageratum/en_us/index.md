---
title: "V Me 50 (VW50)"
navigation:
  title: "V Me 50 (VW50)"
---

# V Me 50 (VW50)

VW50 adds the classic "red envelope" (红包) to Minecraft. Sent a stack of anything as a gift, choose how many players may claim it, and mark it as a normal, lucky, password-protected, or exclusive envelope. Claiming is handled through chat cards, so gifts change hands without any server-side currency.

## Reading order

1. [Getting the red envelope](01_sending): craft the Empty Red Envelope and open its send menu.
2. [Sending and envelope types](02_sending_types): fill the gift slot, set the player count, and pick Normal / Lucky / Password / Exclusive.
3. [Claiming](03_claiming): how players claim, queue order, expiry and returns.
4. [Commands](04_commands): the `/vw50` command family and repeat limits.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `vw50` |
| Items | `vw50:empty_red_envelope` |
| Recipe | `vw50:empty_red_envelope` (shapeless) |
| Envelope types | Normal, Lucky Money, Password, Exclusive |
| Default send cooldown | 30 seconds (non-Game-Master) |
| Default expiry | 8 hours of in-game time |
| Currency | Item stacks only; no scoreboard money |

::: note
Red envelopes hold real item stacks, not a fake currency. A normal (non-lucky) envelope splits its stack as evenly as possible, so a stack of 7 split among 3 players gives roughly equal shares.
:::
