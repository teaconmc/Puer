---
title: "Platforms and Troubleshooting"
navigation:
  title: "08 Platforms and Troubleshooting"
---

# Platforms and Troubleshooting

## Native platform range

Current resources contain WebRTC natives for `x86_64` and `aarch64` on Windows, Linux, and macOS. Production extracts the matching library to a temporary directory and loads it. Other operating systems and CPU architectures are unsupported.

The README promises only limited Linux support and no active macOS support. Presence of a native file does not mean every audio device, JVM, and driver combination has been tested; validate on the event machines.

## NVIDIA platform limit

NVIDIA AI suppression runs only on Windows and checks that the renderer name contains RTX and the driver major version is at least `570`. UI guidance lists GeForce RTX 2060, Quadro RTX 3000, TITAN RTX, or newer, and the microphone rate must be `16000` or `48000 Hz`.

Linux and macOS can still use fixed WebRTC suppression, high-pass filtering, gain, and spatial audio. They cannot use the current NVIDIA AFX client path.

## No microphone input

Check OS privacy permission, whether another program owns the device, Channel's selected device name, and whether the hardware supports the selected microphone sample rate. If a named device disappears, Channel tries the default. With no valid device, the HUD reports Error.

Development runs do not automatically extract WebRTC from the JAR and instead load `webrtc.dll`, `webrtc.so`, or `webrtc.dylib` from the working directory. This affects development configuration only; production JARs use bundled natives.

## Transmission works but nothing is heard

First place both players in one dimension, within less than `64` blocks, and disable global and individual mute. Check whether the talker's HUD remains in Mute, VAD, Volume, or OP Only. For channel tests, verify a matching positive channel on sender and speaker, put the listener within `64` blocks of the speaker, and allow route refresh time.

If audio fails only with path tracing, temporarily disable `rayTraceAudio` to separate acoustics from networking. If only Subspace fails, verify ordinary Minecraft relay first and then inspect TCP address, both ports, and frequency.

## Dependency and packaging

The source uses T88 extensively, but current `neoforge.mods.toml` declares only NeoForge and Minecraft, not T88. A modpack must include a compatible T88 explicitly and should not rely on the loader to produce a clear missing-dependency message.

The key category language entry also uses older `key.category.channel.channel` form while the current category is a resource ID. If Controls shows a raw category name, that is a language-key/API mismatch and does not prevent `Alt+C` and `Y` from registering.

## Known-limit checklist

- UDP and GRPC Subspace are not implemented.
- Fluid acoustics, absolute loudness, and underwater low-pass are unfinished.
- The Handheld Microphone is implemented, but README TODO is stale.
- Devices have no recipes or loot tables and require Creative or commands.
- Block channel-setting packets lack server-side distance and permission rechecks.
- Path tracing, AI suppression, and short-frame transport need machine-specific load tests.

[Back to the Channel index](index)
