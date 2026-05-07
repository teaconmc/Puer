---
title: Flight link
navigation:
  title: Flight link
---

# Flight link

## Flight core

**`flight_core`** (`FlyingCoreItem`) is the item that starts a **flight link**. Use it to invite another player to fly with you as one unit ("your thoughts are one" — when one of you moves in the air, the linked partner follows).

## The link

- **`flight_link`** — an invisible (0×0) `MobCategory.MISC` entity (client tracking range 96, update interval 1) that represents the connection between linked players.
- `FlightManager` runs the link logic; `FlightLinkRenderer` draws the link for the client, with `OTAOClientEvents` driving client-side behaviour.
- Invites ride the network: `AcceptFlightInvitePayload` and `OTAONetwork` (`AcceptFlightInvite` flow) deliver the join/accept request between players.

## Notes

The flight-syncing behaviour is applied through `LivingEntityMixin` / `PlayerMixin`. Availability and effect can be tuned in `OTAOConfig`.

[Back to index](index)