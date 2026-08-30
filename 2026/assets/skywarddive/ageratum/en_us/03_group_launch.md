---
title: Group Launch
navigation:
  title: 03 Group Launch
---

# Group Launch

## Joining a Dive

While an initiator is waiting, another player can right-click that initiator to request a place. The default permits 2 additional players. `maxPassengers` counts players beyond the initiator, but does not count non-player creatures.

A joiner needs no Titan Armor and has no food check or deduction. A player already belonging to another dive session cannot join again.

## Formation Positions

During waiting and ascent, members are placed to either side of the initiator's facing direction with a base spacing of 1.5 blocks. Once gliding starts, they form staggered positions behind and beside the initiator:

- A member far from the target position is teleported back into formation.
- At shorter distances, velocity corrections pull them toward the target.
- Member movement starts from the initiator's current velocity.

## Leaving

A member can sneak to leave normally during waiting, and can also sneak to detach during gliding. The vertical ascent phase does not process member leave requests, so they must wait until gliding starts.

The initiator can cancel the whole group only during waiting. After ascent or gliding begins, the initiator must land, enter water, or enter lava to make the gliding effect expire.

::: warning
The interaction first confirms that the clicked player is waiting, but then joins the nearest eligible session within 5 blocks. With several initiators close together, a player can join a different group. Separate group starting points.
:::

[Back to the Skyward Dive index](index)

