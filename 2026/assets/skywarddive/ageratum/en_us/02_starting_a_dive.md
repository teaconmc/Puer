---
title: Starting a Dive
navigation:
  title: 02 Starting a Dive
---

# Starting a Dive

## Activation Checks

Press `V` by default to start a normal Skyward Dive. The server checks, in order:

1. The initiator has Titan Armor in the chest slot.
2. The initiator is not already in a dive session.
3. A non-Creative player has at least `foodCost` food points, which defaults to 6.

After the checks pass, a non-Creative player immediately loses 6 food points and all current saturation is cleared. Cancelling during the wait does not refund either cost. Creative players skip the food check and deduction.

## Waiting Phase

The initiator has gravity disabled and rises slowly to about 2 blocks above the starting feet position. Other players can join during this phase. The real default countdown is 200 ticks, or 10 seconds; the configuration comment that mentions 100 ticks disagrees with the configured default.

While waiting:

- The initiator can press jump to launch immediately.
- The initiator can press sneak to cancel the entire session.
- A teammate can press sneak to remove only themselves.
- Pressing the activation key again does not create a second session.

::: warning
Pressing the key without the chestpiece is silently rejected by the server. The current implementation only displays an explicit message when food is insufficient.
:::

## Interruptions and Cleanup

The session ends and resets participants if the initiator dies, logs out, or changes dimension. Once waiting ends, the group enters rapid vertical ascent; sneak cannot cancel or leave during that phase.

[Back to the Skyward Dive index](index)

