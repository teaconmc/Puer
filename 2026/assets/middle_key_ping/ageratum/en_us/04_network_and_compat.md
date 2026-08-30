---
title: "Network and compatibility"
navigation:
  title: "04 Network and compat"
---

# Network and compatibility

## Client-to-server payloads

The client sends one of two NeoForge custom payloads to the server:

| Payload | Type id | Data |
|:---|:---|:---|
| Position ping | `middle_key_ping:position_inspection_state` | sender name, `Vec3` position, ping type |
| Entity ping | `middle_key_ping:entity_inspection_state` | sender name, entity UUID, ping type |

Both are registered as **optional** payloads on the `"1"` registrar, so the connection can still work when another side does not have the same payload support.

## Server forwarding

On the server:

- A **position ping** is forwarded to every player in the sender's dimension (including the sender), with the sender's name attached.
- An **entity ping** is only forwarded if the entity still exists and is alive. It goes to players currently tracking that entity, plus the entity itself when the entity is a player.
- The default `senderReceiverPredicate` accepts every player; integration code can replace it.

The server never validates the original hit target. It treats the incoming position/UUID as authoritative and re-broadcasts it.

## Bonded Peaks integration

The source includes an integration for the `bonded_peaks` mod. When that integration applies, `senderReceiverPredicate` is replaced so that:

- the sender always receives their own ping;
- another player receives the ping only when both the sender and receiver belong to the same Bonded Peaks team;
- a sender who is not in a team has no other recipients.

This changes visibility for both position and entity pings. Without the integration, all players in the applicable scope receive the marker.

## Registry surface

The mod currently registers no items, blocks, block entities, entities, recipes, advancements or commands. It only registers key bindings, client config, two payloads and rendering/mixin plumbing. Do not expect a marker item, a command-based ping, or server config.

[Back to the Middle Key Ping index](index)
