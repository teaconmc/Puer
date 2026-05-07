---
title: "Amber and Release"
navigation:
  title: "04 Amber and Release"
---

# Amber and Release

## Completing a Capture

When a resin-wrapped mob reaches the ground, it is frozen, silenced, and made invulnerable. The system then creates Small Amber, Amber, or Large Amber for its class and stores the mob data in that structure.

## Collecting and Moving Amber

Left-click amber to dismantle the display structure and drop an amber item. Most captured mob data is written to the item, so the amber can be carried elsewhere and placed again instead of being released immediately. Saving explicitly removes `UUID`, `Pos`, and `Rotation`, then kills the original. Placing the amber again reconstructs the stored mob with `summon`; melting only removes its captured state. The new entity receives a new UUID, so scoreboards, external references, and some relationships tied to the old identity are not preserved.

Before moving an important mob, prepare a safe, level placement area and avoid working across unloading chunks or frequent data-pack reloads.

## Melting Amber Open

Use either item on placed amber:

| Tool | Cost |
|:---|:---|
| Flint and Steel | No durability in the current implementation |
| Fire Charge | 1 item, except in Creative mode |

Smoke and resin particles appear after ignition. About `30` game ticks later, the amber bursts and releases its mob. The function attempts `set_damage add -0.003`, but conversion to a 64-durability tool and integer flooring does not increase its damage.

::: warning
Release unconditionally disables the mob's no-AI, silent, and invulnerable flags. Command-created mobs that intentionally depend on these states are not suitable for Resin Gun transport.
:::

[Back to the Resin Gun index](index)
