---
title: "Channel"
navigation:
  title: "Channel"
---

# Channel

Channel is an in-game voice mod installed on both clients and servers. It provides Opus transport, fixed or AI noise suppression, per-player volume, path-traced spatial acoustics, and microphone/speaker channels that can relay across long distances and dimensions.

## Reading order

1. [Voice setup](01_voice_setup): select an input device and understand sample rates, monitoring, and first-connection states.
2. [Transmit and triggers](02_transmit_and_triggers): configure always-on, VAD, loudness threshold, push-to-talk, or toggle mute.
3. [Noise suppression and preprocessing](03_noise_processing): use fixed suppression, high-pass filtering, echo cancellation, and gain control.
4. [Output and spatial audio](04_output_and_spatial_audio): tune player volume, network buffering, path tracing, and self-monitoring.
5. [Channels and devices](05_channels_and_devices): build channels with the Handheld Microphone, Fixed Microphone, and three speakers.
6. [Commands and permissions](06_commands_and_permissions): restrict server-wide speech, reset Subspace, and understand validation boundaries.
7. [Subspace relay](07_subspace): move voice transport to a standalone relay process and choose a security level.
8. [Platforms and troubleshooting](08_platforms_and_troubleshooting): check native libraries, NVIDIA AI requirements, and common no-audio failures.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Default config key | `Alt+C` |
| Default talk key | `Y`, used only by hold or toggle modes |
| Normal spatial voice distance | Less than `64` blocks |
| Fixed-microphone capture distance | At most `2` blocks |
| Speaker audible distance | At most `64` blocks |
| Fixed registered items | Five |
| Survival recipes | None |
| Usable relay protocol | TCP only at present |

::: warning
Channel handles real microphone audio. Verify the input device and trigger mode before joining a server. Do not use Always On or an overly low loudness threshold where continuous audio transmission is unwanted.
:::
