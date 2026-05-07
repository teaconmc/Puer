---
title: Gliding and Landing
navigation:
  title: 05 Gliding and Landing
---

# Gliding and Landing

## Vertical Ascent

When the countdown ends or the initiator presses jump, the group enters the launch phase. The default target is 96 blocks above the initiator at the moment ascent begins, and vertical speed is capped at 1.5 blocks per tick.

If the initiator makes almost no upward progress for 40 consecutive ticks, the system treats the route as blocked and switches to gliding early instead of continuing through the obstacle. Entities can still be repositioned in tight spaces, so launch in the open.

## Gliding Without Elytra

At the target height, every participant receives the hidden `skywarddive:sky_gliding` effect and initial velocity along the initiator's horizontal look direction. Players enter vanilla gliding even without an equipped elytra. The effect also adds 200% total movement speed to affected living entities; this modifier can still affect movement during the short reaction period after contact.

The initiator controls the main flight direction. Players can still use normal glide pitch controls, while teammates receive velocity corrections or teleports to maintain formation. When the initiator's effect disappears, the session ends and the other members and carried creatures are restored.

## Ending and Landing

When the initiator touches the ground, water, or lava, the gliding effect is shortened so it expires within about 20 ticks. After a normal ending:

- Teammates lose the gliding effect and regain gravity.
- Carried non-player creatures regain gravity and are released.
- The session phase ends for all participants.

Fall distance is reset every tick while gliding, but the normal landing path does not explicitly clear every entity's current velocity. Cancelling the wait, actively detaching, or abnormal departure uses a different reset path that does clear velocity for the affected entity. An ordinary passenger can sneak to detach during gliding. The initiator has no manual cancel key during the gliding phase.

::: warning
Water and lava both start the ending countdown. Lava is not safe: the Titan Armor's fire-resistant item property does not grant Fire Resistance to its wearer.
:::

[Back to the Skyward Dive index](index)
