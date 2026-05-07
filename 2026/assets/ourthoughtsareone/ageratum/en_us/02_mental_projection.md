---
title: Mental projection
navigation:
  title: Mental projection
---

# Mental projection

## Projection core

**`projection_core`** (`ProjectionCoreItem`) is the item that creates the shared mental projection, and the icon of the `ourthoughtsareone` creative tab.

## The anchor

- **`projection_anchor`** — an invisible (0×0) `MobCategory.MISC` entity (client tracking range 64, update interval 1) that holds the projection in the world.
- `ProjectionManager` manages projection state and `ProjectionAnchorEntity` carries it. The idea/target is shared with the group so everyone "sees the same thought".

## Config & events

`OTAOConfig` tunes the mod's behaviour; `OTAOEventHandler` wires the projection events on both sides.

[Back to index](index)