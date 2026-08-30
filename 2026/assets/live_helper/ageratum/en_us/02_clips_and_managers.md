---
title: Clips and Managers
navigation:
  title: Clips and Managers
description: The two-tier camera model and what happens on every rendered frame.
---

# Clips and Managers

## Two kinds of program, two jobs

LiveHelper splits camera control into two roles, and each is driven by its own WebAssembly program:

| Role | Chinese term | Answers |
|:---|:---|:---|
| **Technique** | 技法 | *Where is this camera, and which way is it looking?* |
| **Manager** | 调度器 | *Which shot is on air right now, and how do shots blend?* |

A **Clip** (分镜头) is one camera shot: a Technique program plus the inputs it needs. A **Manager** sits above all clips and decides, frame by frame, what the broadcast actually shows.

The separation is the whole design. A Technique never knows whether it is live; a Manager never computes a camera position. You can rewrite one without touching the other.

## What happens on every frame

1. The **Manager** program runs. It returns a frame configuration describing which clips are active and how they combine.
2. For each active clip, its **Technique** program runs and produces a position and an orientation.
3. Each active clip is rendered from that viewpoint.
4. If the Manager asked for a blend, the results are **linearly interpolated** together using the mod's mix shader.
5. The finished frame is pushed out through Spout.

That order matters when you are debugging: a clip that looks frozen is usually a Technique problem, while a clip that is not appearing at all is usually a Manager problem.

## What a Technique returns

A Technique builds one of two things:

**A fixed viewpoint** — a position in three axes plus an orientation given as a **quaternion** (four components). Quaternions rather than yaw/pitch means smooth interpolation between arbitrary orientations is well-defined, which is exactly what a camera move needs.

**An attachment to an entity** — the camera follows a named entity instead of holding coordinates.

Each Technique receives a `progress` value, a float in the range `[0, 1)`, representing how far through its shot it is. A dolly move is therefore as simple as interpolating between two points by `progress`.

## What a Manager returns

A Manager returns a **frame render configuration**, built from two operations:

**Single** — activate exactly one clip, at a given progress. This is a hard cut: one shot, on air, nothing else rendered.

**Mix** — take two frame configurations and blend them by a progress value. At `0` you see only the first, at `1` only the second, and in between a linear interpolation. Because Mix takes frame configurations rather than clips, **mixes nest**: you can blend a blend, which is how a three-way transition is expressed.

A Manager must return exactly one configuration from its entry point, and that configuration is what LiveHelper renders.

## What a Manager knows

The Manager is given enough information to schedule without hardcoding anything:

| Input | Meaning |
|:---|:---|
| the **clip count** | how many clips exist, so a program can loop over all of them |
| each clip's **duration** | in milliseconds, so a program can decide when to move on |
| each clip's **name** | as text, so a program can select a shot by name rather than index |
| **elapsed time** | milliseconds since the scheduler started |

Clips are addressed by **zero-based index**. Names are provided for readability, and reading one is a two-step call because the length is not known in advance — see [04 API reference](04_api_reference).

## A worked pattern

The simplest useful Manager is a round-robin with crossfades:

1. Read the clip count and each clip's duration.
2. From elapsed time, work out which clip should be live and how far into it you are.
3. If you are not near the end of that clip, return **Single** with the clip and its progress.
4. If you are within the crossfade window, build **Single** for the current clip and **Single** for the next, then return **Mix** with a progress value that ramps from 0 to 1 across the window.

Everything else — jump cuts, holding on one shot, reacting to elapsed time, weighted rotations — is a variation on that skeleton.

## Where these live

Clips, Managers, programs, dashboards and input declarations are all stored as components by the mod's own storage layer and edited through the web dashboard. Programs exist in two forms — **compiled binaries** and **scripts** — so you can upload a built module or keep source alongside it.

[Back to index](index)
