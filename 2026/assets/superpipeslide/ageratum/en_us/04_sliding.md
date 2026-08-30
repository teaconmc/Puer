---
title: "Sliding"
navigation:
  title: "04 Sliding"
---

# Sliding

Sliding is the core experience: your player is captured onto a pipe centerline, accelerated along it and handed from connection to connection through anchors. The client computes the movement, while the server validates teleport requests and applies pipe-specific safety rules.

## Capture

The client searches pipe segments within 72 blocks and projects your position onto each centerline. You are captured when:

- The distance to the centerline is within `captureRadius` (default `0.72`).
- The vertical foot difference is within `captureVerticalTolerance` (default `1.15`).
- Your motion is not suppressed by sneak, jump, or a post-exit cooldown.
- A fast sideways approach still aligns with the pipe direction; slow movement or falling can capture without that alignment.

The first capture attempt shows a safety warning. Acknowledging it stores the choice in the client safety state file, so the prompt appears only once.

## Speed

- Initial speed: `initialSlideSpeed` (`0.18` blocks/tick).
- Normal pipe: `normalMaxSpeed` (`0.90`), `normalAcceleration` (`0.015`).
- Overspeed on a normal pipe decelerates at `0.12`.
- Each tick consumes at most `maxStepDistance` (`6`) blocks before connection handoff checks.

Pipes with the highway or acceleration attributes use different speed rules; see [Pipe attributes](05_pipe_attributes).

## Exits and jumps

- **Sneak** leaves the pipe and starts a short capture cooldown.
- **Jump** detaches from the current pipe, unless a nearby jump target exists.
- Jump near another pipe searches within 8 blocks, moves through a small arc, and continues on the target pipe.
- Jump while already on a pipe can reverse direction on the same segment.
- The mod also detaches automatically at a dead end.

## Branch choices

Before a branch anchor, the client opens a gaze choice:

- Choice preview begins `branchChoicePreviewDistance` (`24`) blocks ahead.
- Speed is forced down to `branchChoiceMaxSpeed` (`0.22`), with deceleration `12`.
- Look at an option for **8 ticks** or attack while looking to confirm.

A choice expires after 20 seconds, after which the unresolved junction is treated conservatively.

## Station stops

A station platform stop can force a stop for route boarding:

- The approach caps speed at `stationSlowMaxSpeed` (`0.18`) with deceleration `0.45`.
- The client keeps you at the station center for a minimum dwell of **8 seconds**.
- If several routes are available, a gaze choice opens after **5 focus ticks**.
- Continuing without a choice lets you pass through quickly.

## Fold traversal and safety

Fold anchors request a server-committed teleport; a failed target dimension, invalid coordinate or unloaded chunk stops the slide. While sliding, the server sets `noPhysics`, resets fall damage and checks for suffocation:

- Inside a suffocating block for 10 ticks, you receive `2.0` damage every 10 ticks from `superpipeslide:pipe_suffocation`.

Sliding also clears automatically if you become a spectator, start flying, ride a vehicle, or die.

[Back to the SuperPipeSlide index](index)
