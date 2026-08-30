---
title: "Active Items"
navigation:
  title: "02 Active Items"
items:
  - "nestle:nestle"
  - "nestle:nestle_lead"
---

# Active Items

## Nestle

<item id="nestle:nestle"/>

When you right-click with a Nestle item, the mod traces your view for another player. The target must be inside `nestle_radius` and visible to you; the default radius is `5` blocks.

A valid target causes three actions:

1. One Nestle item is consumed.
2. The user rushes toward the target for about `10` server ticks.
3. The user's directional value toward the target increases.

The item is not consumed when the crosshair has no valid player. It only targets players, not arbitrary living entities.

If the user has Nestle Resistance, a valid target still consumes the item and increases the value, but the shared movement helper blocks the rush.

![Two players standing close together](nestle:ageratum/nestle_interaction.png)

## Nestle Lead

<item id="nestle:nestle_lead"/>

The Nestle Lead is a reusable toggle and is not consumed when it creates a link. Right-click a player or another living entity to connect, then right-click the same target again to disconnect. One player's runtime data can contain several targets.

While linked, both sides are normally pulled toward their midpoint. A side with Nestle Resistance is skipped by the shared movement helper, so that side is not pulled, but resistance alone does not remove the link. A link ends or disappears when:

- The pair moves more than `15` blocks apart.
- The player logs out or becomes a spectator, or a normal living target dies.
- The lead is used on the same target again.
- The player runs `/nestle unlink` to clear their links.

`/nestle unlink <players>` removes selected players from your own target set. Broader target-cleanup forms require game-master permission.

::: warning
Lead relationships use an unsaved runtime attachment, and the helper link entities are explicitly marked as not saved. Do not rely on them surviving relogs, entity reconstruction, or server restarts. Use `/nestle unlink` to clear stale state.
:::

## Compared with free nestling

The normal Nestle item is consumed and increases the user's directional value. The `Z` key requires the threshold first, consumes nothing, and adds no value. The Nestle Lead continuously pulls both targets until disconnected.

[Back to the Nestle index](index)
