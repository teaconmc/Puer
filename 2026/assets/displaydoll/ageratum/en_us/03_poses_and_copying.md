---
title: "Poses, Orientation, and Copying"
navigation:
  title: "03 Poses, Orientation, and Copying"
---

# Poses, Orientation, and Copying

## Six poses

When a Creative player sneak-right-clicks a doll, its pose advances through a fixed order:

1. Default
2. Casual Wave
3. Cheer
4. Perfect Balance
5. Shy Pose
6. Zombie

Advancing from Zombie returns to Default. Wide-arm and slim-arm skins each have matching models, with the same pose names and cycle order.

![Four display dolls with different skins and poses](displaydoll:ageratum/displaydoll_showcase.png)

## Pose versus block orientation

A pose changes only the body model; it does not alter the block's saved `16`-segment horizontal rotation. Place dolls separately in the desired directions. Cycling a pose never rotates the base.

Overhead text faces the camera independently, so it remains readable even when the doll's body faces elsewhere.

## Copying with pick block

Using pick block on a placed doll returns an item carrying that doll's player profile. This is useful for repeating a skin, but the copy is intentionally limited:

| Data | Copied? |
|:---|:---:|
| Player profile and skin | Yes |
| Current pose | No |
| Short Content | No |
| Placement orientation | No |

A newly placed copy starts in the Default pose with no text and takes a new orientation from its placement. For a group that shares a skin but uses different actions, copy the profile first and then set each pose and message individually.

::: warning
Pick block is not a complete data backup. Record important text separately, and expect to select the pose again.
:::

[Back to the Display Doll index](index)
