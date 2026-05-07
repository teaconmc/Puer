---
title: "Markers and rendering"
navigation:
  title: "02 Markers and rendering"
---

# Markers and rendering

## Marker lifetime

When the client receives a ping, it creates a `Ping` record that expires after **300 ticks (15 seconds)**. Expired markers are removed every client tick. The client keeps at most `maxPingCount` markers (default 6): when the list is already full, the oldest marker is removed before the new one is added.

## World-to-screen projection

Markers are projected during level rendering and drawn in the HUD after translucent particles. A marker is only drawn when it is on screen and in front of the camera; markers behind the camera are skipped. Markers scale with distance, getting smaller as they are farther away.

## Position markers

A position marker renders at the exact pinged point (after an optional position converter hook). It shows:

- a diamond-shaped marker using the ping type color;
- a distance tag above it, formatted like `100.0 m`, with a translucent background of the type color and text in the type text color.

## Entity markers

An entity marker follows the entity instead of a fixed point:

- For an **item entity**, the marker is drawn 0.5 blocks above the item's position and renders the item icon itself.
- For any other entity, the marker is drawn 0.25 blocks above the entity's eye position and renders the default diamond marker.

If the entity is no longer alive or cannot be found in the client's render entities, the marker is removed instead of staying at a stale position.

## Chat and sound feedback

The receiving client also shows a system chat message with the sender formatted as `[name]` and a localized type description. A local sound is played for the marker type: bell for Generic, chime for Warning, pling for Goto and bit for Enemy. These colors and sounds are client-local feedback; the server only relays the payload and does not decide what the receiver hears.

[Back to the Middle Key Ping index](index)
