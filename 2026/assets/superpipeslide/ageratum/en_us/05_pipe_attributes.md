---
title: "Pipe Attributes"
navigation:
  title: "05 Pipe Attributes"
---

# Pipe Attributes

Each pipe connection can carry attributes that change its sliding speed rules or allowed direction. Attributes are edited by looking at the pipe segment with a tool and right-clicking.

## Acceleration

The acceleration attribute replaces the default acceleration with `accelerationAttributeAcceleration` (`0.14` blocks/tick per tick), instead of the normal `0.015`. It does not change the pipe's maximum speed.

- `acceleration_attribute_tool` toggles the attribute on a targeted pipe.
- `acceleration_pipe_coating` applies it once and is consumed.

<recipe id="superpipeslide:acceleration_pipe_coating"/>

## Highway

The highway attribute raises the maximum speed to `highwayMaxSpeed` (`4.80` blocks/tick), uses `highwayAcceleration` (`0.08`) and decelerates overspeed gently at `0.03`. It is intended for long high-speed main lines.

- `highway_attribute_tool` toggles the attribute.
- `highway_pipe_coating` applies it once and is consumed.

<recipe id="superpipeslide:highway_pipe_coating"/>

## Route direction limit

The route direction limiter sets whether a pipe segment can be used in a route's forward direction, reverse direction, or both:

<recipe id="superpipeslide:route_direction_limiter"/>

Right-clicking a pipe cycles the limit: forward only, reverse only, then bidirectional. The tooltip and overlay messages report the new state. Changing a direction limit marks affected route sections as stale so the route editor can recompute them.

## Tool behavior

The two attribute tools are reusable toggles: right-click the pipe to enable the attribute, and right-click again to disable it. The coatings are consumed on success and cannot be disabled later. Both edits raycast up to 8 blocks with a pick radius of `0.55`.

The attribute tools themselves have no crafting recipe; only the consumable coatings are craftable.

[Back to the SuperPipeSlide index](index)
