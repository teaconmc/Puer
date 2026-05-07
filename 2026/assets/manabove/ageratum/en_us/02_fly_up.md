---
title: "Flinging the rider"
navigation:
  title: "Flinging the rider"
---

# Flinging the rider

When another player is riding you, you can toss them into the air — this is the "man above man" payoff.

## How to fling

1. Look at the player who is riding you so the crosshair highlights them (a mixin lets the raycast hit your own passenger).
2. Press `R` while targeting that player.
3. The `manabove:fly_player_up` payload is sent to the server, which checks that the viewed player actually has your `manabove:vehicle` attachment set to your UUID.
4. The rider is dismounted and launched with a velocity equal to your current view direction multiplied by 15.

## Effects of a launch

- The carried player's motion is set to `view direction × 15`, they are forced off the ground, their fall distance resets, and their position is force-synced (`hurtMarked`).
- You swing your main hand.
- The `manabove:weightlessness` sound plays for the launched rider.
- No items are consumed and no cooldown or permission level is checked.

## Boundaries

- The launch direction is the **carrier's** view direction, not the rider's.
- The launch itself deals no damage; fall damage still applies when the rider lands.
- Both players must be within normal interaction reach for the raycast to pick the target.
- Attachment data is copied on death, and the `manabove:vehicle` attachment is cleared when a rider stops riding, so a dead or dismounted player cannot be launched.

[Back to index](index)