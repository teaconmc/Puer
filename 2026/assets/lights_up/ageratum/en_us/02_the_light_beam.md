---
title: "The light beam"
navigation:
  title: "02 The light beam"
---

# The light beam

The beam is the mod's entire visible feature. It is custom geometry submitted through the mod's own render pipeline, not a block model or a particle effect.

## Shape

The beam is a hollow cone drawn from the block outward along its facing direction, built from 32 segments plus a flat end cap. Its radius at the far end grows with the cone angle, so a wider angle produces a broader pool of light at the same distance.

The geometry is translucent, drawn with a translucent blend, and every vertex is submitted at full brightness so the beam does not darken in unlit rooms.

## Direction comes only from the block's facing

The beam points along the block's `facing` property — one of the six cardinal directions. Up is the default and needs no rotation; the other five are reached by rotating the cone into place.

**This is the only thing that aims the beam.** The block entity also stores a pitch and a yaw, and the renderer does copy both into its render state each frame, but nothing in the drawing code ever applies them. Those two fields have **no visible effect**: you cannot tilt a spotlight off-axis, only point it at one of six directions.

## The parameters are fixed in practice

The block entity holds five tunable values. Because nothing exposes them (see [01 Getting started](01_getting_started)), every spotlight in the world uses the initial values:

| Parameter | Effective value | Effect |
|:---|:---|:---|
| Colour | white | The beam is always white |
| Intensity | full | Beam opacity is derived from intensity; at full it is a fixed partial transparency |
| Cone angle | 20 degrees | Sets how wide the cone spreads |
| Pitch | 30 degrees | **No effect** — never applied |
| Yaw | 0 degrees | **No effect** — never applied |

The setter for cone angle does clamp its input between 5 and 60 degrees, so the intended design range is known even though no player-facing control reaches it.

Colour and intensity are combined into a single packed colour before drawing, with opacity scaled from intensity. Since intensity is always full, the beam's transparency is effectively constant.

## Nothing about the beam is saved

The block entity implements **no save or load logic**. Its colour, intensity, angle, pitch, and cone fields exist only in memory.

That means even if a future version adds a way to change them, in the current build any change would be lost the moment the chunk unloads or the world reloads — the spotlight would revert to white at 20 degrees. It also means the values are never sent to clients, so nothing is synchronised in multiplayer.

## Visibility and performance

Three deliberate choices make the beam very eager to render:

- It is marked to render even when the block itself is off screen.
- Its visibility check always returns true, so it is never culled by distance or direction.
- Its render bounding box is inflated by **114 blocks** around the spotlight.

Together these mean a placed spotlight keeps submitting its cone from a long way off, in every direction, regardless of whether you can see the block. That is what makes a stage light visible across a venue, but it also means **many spotlights in one area will cost frames**. If you are building a large rig, add lights gradually and watch your frame rate.

The beam does not emit real light: it does not raise block light levels, does not affect mob spawning, and does not illuminate surfaces. It is purely a visual cone.

[Back to index](index)
