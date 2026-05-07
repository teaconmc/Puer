---
title: Controls and HUD
navigation:
  title: Controls and HUD
description: Key bindings, the key-hint overlay, camera offset, animations and the debug entry.
---

# Controls and HUD

## Key bindings

All three bindings live in a dedicated category (`momentum:category`, shown as "Momentum") and are all restricted to in-game context.

| Default | Binding | Purpose |
|:---|:---|:---|
| `C` | `key.momentum.lower_center` — "lower center" | Prone, slide, break-fall-ready, vault in |
| `Shift`+`M` | `key.momentum.change_momentum` — "change momentum" | Toggle maneuver mode on/off |
| `Shift`+`N` | `key.momentum.toggle_hint` — "change hint" | Toggle the key-hint overlay |

Everything else reuses your existing vanilla bindings: the movement keys, jump, sneak and sprint. Momentum never rebinds them, which is why the on-screen hints refer to them by your own key names.

`C` is a hold-style key — the action lasts as long as you hold it. The other two fire once per press, detected by an edge check each client tick.

## The key-hint overlay

Most actions advertise the keys currently available to you as a small on-screen list. It is driven by a hint manager with its own fade logic, all configurable:

| Option | Default | Meaning |
|:---|:---|:---|
| `enableKeyHints` | `true` | Whether hints are shown at all. Also seeds the initial visibility when the config loads. |
| `minAlphaWhenMoving` | `0.4` | Lowest opacity while you are moving |
| `maxAlpha` | `1.0` | Highest opacity |
| `freshDuration` | `80` ticks | How long a hint stays highlighted after its content changes |
| `idleDelay` | `100` ticks | How long you must stand still before hints fade back in |
| `moveThresholdSqr` | `0.005` | Squared velocity above which you count as moving |
| `fadeInSpeed` | `0.01` | Fade-in rate; lower is slower |
| `fadeOutSpeed` | `0.18` | Fade-out rate; lower is slower |

Pressing `Shift`+`N` flips visibility immediately, and turning hints back on forces them to display at once rather than waiting for the idle delay.

> `fadeInSpeed`'s own comment states a default of `0.08`, but the value actually registered is `0.01` — noticeably slower. As always, the generated config file reflects the real value.

The hint text uses shared vocabulary keys such as Click, Release, Hold, Double Click and Move With Wall, so the same phrasing appears across every action. The overlay's button frames come from the mod's own `widget/button16`, `button32` and `button64` sprites.

## Camera offset

`enableCameraOffset` (default `true`) lets the mod tilt the camera and shift the field of view in response to your movement state — a lean into wall runs, a pull during dashes. It is purely visual. Turn it off if it causes discomfort; no mechanic depends on it.

Arm rendering is also offset per state, so first-person hands follow the movement pose.

## Animations

Player animations are driven by PlayerAnimationLib under the identifier `momentum:movement_anim`, using a Bedrock-style skeletal animation file shipped at `player_animations/model.animation.json`. MoLang expressions bind to per-tick movement data exported by the movement context, so the animation reacts continuously to your actual speed rather than playing fixed clips.

Non-vanilla states also patch the avatar renderer so that, for example, the swimming pose is drawn while you are prone or vaulting.

## Sounds

Three sound events are registered — `momentum:jet1`, `momentum:jet2` and `momentum:jet3` — sharing the subtitle "jet noise" (`subtitles.momentum.jet`). They are variable-range events, so their audible distance scales rather than being fixed.

## Debug overlay entry

The mod registers a debug screen entry under `momentum:movement_info`, which surfaces the current movement state and context values on the F3 overlay. It is the fastest way to confirm which state you are actually in when tuning config values — and the place where the missing `swim_dash` translation shows up as a raw key.

[Back to index](index)
