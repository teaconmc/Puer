---
title: "Output and Spatial Audio"
navigation:
  title: "04 Output and Spatial Audio"
---

# Output and Spatial Audio

## Normal proximity voice

The server sends a speaker's audio to players in the same dimension at a distance strictly less than `64` blocks. When the speaker is a spectator, only other spectators hear direct voice. Ordinary players can still be heard by spectators.

The client positions direct voice at the speaker's eye location. When the source is out of range, absent from the local dimension, or present only through a channel, it does not incorrectly play direct audio from world origin.

## Path-traced acoustics

`rayTraceAudio` is enabled by default. The client casts acoustic rays from the listener with a maximum distance of `64` blocks and up to `5` bounce rounds, then adjusts direct sound, low-pass filtering, and reverberation from walls, surfaces, and openness.

This uses additional CPU. Fluid acoustics and absolute loudness remain unfinished in the README, and underwater filtering has a future-version TODO. The current result is not a complete physical simulation.

## Overall and individual volume

`outputAdjust` is the overall dB adjustment and defaults to `0`. Per-player adjustments are stored by UUID and take priority over the overall value. Reset clears all individual entries.

Individual gain is not applied inside a speaker block's mixed source because multiple talkers are mixed into the same buffer. Muting one player does discard that player's packet before all receive processing, so it suppresses both direct voice and speaker relays.

## Mute and self-monitoring

Mute All affects players without an explicit individual override; a saved personal adjustment can override it. Clicking a player portrait stores that player as muted at `-96 dB`.

`hearMyself` defaults off. When enabled, it plays your voice after the server or Subspace returns it, exposing actual network delay but also risking feedback between speakers and microphone.

## Buffering and debug

`networkTolerance` defaults to `200` and controls receive buffering for network jitter. Lower values reduce latency but pop more easily; higher values improve stability at the cost of audible delay.

General settings can show the microphone icon, status text, traced rays, and reverb parameters. Debug rays add rendering work and should be disabled after diagnosis.

[Back to the Channel index](index)
