---
title: "Candy magazine and glazer"
navigation:
  title: "05 Magazine and glazer"
items:
  - "ccw:gummy_magazine"
  - "ccw:gummy_glazer"
---

# Candy magazine and glazer

## Gummy Magazine

`ccw:gummy_magazine` stores gummies in a 6-slot container. The first slots are the "lightning slots" used by the device; their number depends on the tier:

| Tier | Active slots | Total slots |
|:---|:---|:---|
| Primary | 2 | 6 |
| Nether | 4 | 6 |
| Ender | 6 | 6 |

Right-click with a magazine in hand triggers the eating effect of every gummy in the active slots. Sneak-right-click opens its GUI, where loaded gummies can be rearranged; a GUI button triggers the same active-slot eating effect. Items in the inactive slots are reserved as reserves and are pulled into active slots automatically when an active slot becomes empty.

<recipe id="ccw:gummy_magazine"/>

## Gummy Glazer

`ccw:gummy_glazer` is a 3-slot container with a smaller number of active slots:

| Tier | Active slots | Total slots |
|:---|:---|:---|
| Primary | 1 | 3 |
| Nether | 2 | 3 |
| Ender | 3 | 3 |

Sneak-right-click opens its GUI. The glazer has two modes, shown in its tooltip and selected by pressing the `Switch Glazer Mode` key (default **D**) while hovering the glazer slot in the container:

| Mode | Behavior |
|:---|:---|
| Save | Skips a gummy when the target already has all effects from that gummy's formula; otherwise applies it |
| Extend | Always applies the gummy, extending effects the target already has |

The glazer applies one loaded gummy from an active slot to a living target when you interact with that entity (right-click) or when your attack damages a living entity. Both main-hand and off-hand glazers are checked in these events. Applying a gummy consumes 1 item from the active slot.

<recipe id="ccw:gummy_glazer"/>

::: note
The tooltip text mentions buffing main-hand weapons, but the current implementation only applies gummies to living targets during entity interaction and damage events. Do not expect a weapon enchant-style buff.
:::

[Back to the CCW index](index)
