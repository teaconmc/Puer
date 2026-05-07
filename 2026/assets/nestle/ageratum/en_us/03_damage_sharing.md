---
title: "Damage Sharing and Binding"
navigation:
  title: "03 Damage Sharing and Binding"
items:
  - "nestle:nestle_bound"
---

# Damage Sharing and Binding

## Starting a share

When a living entity receives finite positive damage, the mod searches for participants and calculates shares from the count of the original victim plus those participants. Each participant receives the original damage divided by that count, while the original victim's already modified damage is divided by the count. Participants then pass through their own damage processing, so the final health loss is not guaranteed to be equal. A recursive damage chain tracks entities already processed so the same entity is not repeatedly added through that branch.

Nestle Resistance on the original victim stops the entire sharing process. Creative players, spectators, and invulnerable entities cannot become participants.

## Nearby participants

The local search uses a box extending `5` blocks from the victim in every axis and is also limited by `nestle_radius`, which defaults to `5`. It ignores line of sight.

A candidate can qualify through any of these gameplay conditions:

- Both are players and the candidate's value toward the victim meets `damage_apportion_require`. Because the current source defines this key twice, its effective default is `360000`; see [Server configuration](06_configuration).
- The candidate has the same entity type as the victim and is within `1.5` blocks.
- The victim has the Nestle effect.
- The candidate has the Desire Nestle effect.

The `entities_not_spread_damage_by_default` list can make specified victim types rely more heavily on a candidate's Desire Nestle effect when the victim lacks Nestle. The list is empty by default.

## Nestle Bound

<item id="nestle:nestle_bound"/>

Sneak-right-click an unbound Nestle Bound to write your UUID to it. A bound item glints and shows its target in the tooltip. It cannot be rebound directly; craft it alone first to remove the component.

A practical setup is:

1. Player A sneak-right-clicks the item, binding it to A.
2. A gives that item to player B.
3. B keeps it in inventory slots `0` through `8`, the nine visible hotbar slots.

Only those nine slots are scanned. A bound item in the main inventory, a container, or the offhand is not an active binding.

## Bound participant rules

Bound candidates are checked across all online players and can bypass the normal nearby distance. A binding held by either side can qualify the pair, but both directional values must be at least `0`.

Creative, spectator, invulnerable, or Nestle-Resistant remote players are excluded. Each player added through binding reduces both directional values by that participant's damage share multiplied by `bound_damage_value_scale`; the default multiplier is `1.0`.

If the resulting share would leave every related entity unable to survive, the code abandons sharing. This does not guarantee every individual survives; it only requires at least one member whose health exceeds their share.

[Back to the Nestle index](index)
