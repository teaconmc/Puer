---
title: "Middle Key Ping"
navigation:
  title: "Middle Key Ping (463)"
---

# Middle Key Ping

Middle Key Ping (mod id `middle_key_ping`) is a client-driven cooperative marker mod. Press or hold the middle mouse button to create a visible point marker, or select Generic / Warning / Goto / Enemy from a wheel. The marker is sent through the server to other players, shown in the world as a colored marker with a distance tag, and announced in chat with a type-specific sound.

The mod registers no items, blocks, entities, recipes or commands. Its entire surface is key bindings, two network payloads, client configuration, and rendering.

## Reading order

1. [Sending pings](01_sending_pings): middle-click behavior, the four ping types, the wheel, and the dedicated keys.
2. [Markers and rendering](02_markers_and_rendering): what markers look like, how long they last, and how entity and position markers differ.
3. [Client configuration](03_configuration): all configurable colors, distance, count and permission toggles.
4. [Network and compatibility](04_network_and_compat): server forwarding rules, payload IDs, and the optional Bonded Peaks team restriction.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Mod id | `middle_key_ping` |
| Default key | Mouse middle button (Uniform Ping) |
| Ping types | Uniform, Generic, Warning, Goto, Enemy |
| Marker lifetime | 300 ticks (15 seconds) |
| Default max distance | 200 blocks |
| Default max active markers | 6 |
| Config | client-side TOML through the mod config screen |
| Registered items/blocks/entities/recipes/commands | none |
| Network payloads | `middle_key_ping:position_inspection_state`, `middle_key_ping:entity_inspection_state` |

**Note:** Ping creation is client-side, but markers are relayed through the server. A position marker reaches every player in the same dimension, while an entity marker reaches only players who are tracking that entity (plus the entity itself when it is a player).
