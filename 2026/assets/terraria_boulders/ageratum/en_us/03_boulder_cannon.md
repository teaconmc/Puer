---
title: Boulder cannon
navigation:
  title: Boulder cannon
---

# Boulder cannon

The **`terraria_boulders:boulder_cannon`** is a cannon block that launches boulders in the direction it faces. Mount it like a vehicle:

- Sit in the **`cannon_seat`** entity (`CannonSeatEntity`) placed on the cannon.
- Aim and fire to launch a boulder that travels along its ballistic path.
- Firing uses the mod's `TerraStyleExplosion` — an explosion that only destroys blocks with less blast resistance than obsidian (with a per-block delta), so sturdy structures survive.

## Mount interaction

Riding a seat is handled through the `MountClickPayload` (client → server) and the `ServerHandler`, with collision mounting controlled by the `mount_click` packet. The client camera/look controls where the launched boulder goes.

[Back to index](index)