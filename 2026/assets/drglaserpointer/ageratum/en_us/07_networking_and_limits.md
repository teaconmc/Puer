---
title: Networking and Limits
navigation:
  title: Networking and Limits
description: The eight network payloads, how other players' beams are synchronised, compatibility, and the current rough edges.
---

# Networking and limits

Everything the pointer does is client-driven and then confirmed by a small custom payload. The mod registers its payloads under network version `"1"`.

## The payloads

| Payload | Direction | Purpose |
|:---|:---|:---|
| `drglaserpointer:laser_color_switch` | to server | `Shift`+scroll changed the colour; the server cycles the main-hand stack |
| `drglaserpointer:laser_play_sound` | to server | The pointer entered or left a hand; play `laser_on` / `laser_off` |
| `drglaserpointer:laser_pick_block` | to server | Spawn a mark on a block (hit point, block position, colour, voice-line flag) |
| `drglaserpointer:laser_pick_entity` | to server | Spawn a mark on an entity (hit point, entity id, colour) |
| `drglaserpointer:laser_distance_update` | to server | Report your own beam length so others can draw it |
| `drglaserpointer:laser_distance_request` | to server | Ask for the beam lengths of a list of nearby players |
| `drglaserpointer:laser_distance_response` | to client | The answer: pairs of entity id and beam length |
| `drglaserpointer:switch_inventory` | to server | Swap a given inventory slot with the selected hotbar slot |

## How other players' beams stay in sync

Your beam length is quantised to a `short` in units of 1/64 block and sent with `laser_distance_update`, but only when the value actually changes. The server keeps those lengths in a global map keyed by player entity id; the entry is removed when a player logs out.

Every client tick, your client collects all visible players within `laserRange` who are holding a pointer and are not spectators, and sends one `laser_distance_request` for the whole list. The response replaces the client's local map wholesale, and the renderer uses it to place the far end of each remote beam along that player's view vector.

Consequences worth knowing:

- If a player's length has never been reported, the map returns `0` and their beam is drawn with zero length — that is, effectively invisible — until the first update arrives.
- The response replaces the whole map every time, so a player who drops out of your request list stops having a beam immediately.
- The distance request is handled straight on the network thread rather than being scheduled onto the server thread.

## Server-side trust

The server does very little validation on incoming marks:

- **Block marks** are accepted if the chunk at the requested position is loaded. The hit location, the block position and the colour all come from the client, and there is no distance, line-of-sight or permission check.
- **Entity marks** are accepted unconditionally; the client supplies the entity id and the hit location.
- **Slot swaps** are accepted for any in-range slot index without checking that the slot holds a pointer.

For a public server this means marking behaviour is exactly as trustworthy as the clients connected to it. The mark entity itself is harmless — it cannot be damaged, deals nothing, and expires after 10 seconds — but the sounds, the advancement trigger and the slot swap are all reachable from a crafted packet.

## Other rough edges seen in the source

- Removing old marks iterates **all entities in the level** for every mark placed.
- If the entity referenced by an entity mark cannot be resolved on the server, the marker is still spawned but with no owner name, no target, and colour `-1`; it then simply sits at the world origin for its 10-second life.
- Two face textures exist for the ender dragon (`ender_dragon_face.png` and `enderdragon_face.png`); only the first matches the entity id path and is actually used.
- The `laser_make` sound is not rate-limited, so rapid right-clicking is audible to everyone nearby even though the voice lines are throttled.

## Compatibility

- **Iris** — the mod's laser render pipeline is optionally mapped onto Iris's lightning program so the beam still renders correctly with shaders. Iris is a compile-only dependency: if the class is missing at runtime the mod logs nothing unusual and simply keeps its own pipeline. Iris is **not** declared as a dependency in the mod metadata.
- **Mixin** — one client mixin on `Minecraft` forces `shouldEntityAppearGlowing` to return true for marked living entities.
- **Enum extension** — the pointer adds its own `ArmPose` (`DRGLASERPOINTER_LASER_POINTER`), copied from the bow pose, so held pointers point where you aim.
- **Dedicated servers** work: everything client-only is guarded by `Dist.CLIENT`, and the item, entity, sounds and trigger are registered on both sides.

[Back to index](index)
