---
title: "Voice Setup"
navigation:
  title: "01 Voice Setup"
---

# Voice Setup

## Installation boundary

The current source targets Minecraft `26.1.2` on NeoForge. Clients capture, process, and play audio, while the server selects proximity and channel recipients, so both sides need the mod in multiplayer. The source also directly uses T88 configuration, GUI, and networking APIs; install T88 as well.

At client startup, Channel initializes the microphone, WebRTC processor, NVIDIA detection, and OpenAL player. On server login, a notification remains for about `12` seconds and shows the current config-screen binding.

## Opening configuration

Press `Alt+C` by default to open Channel configuration. The screen is divided into input, transmission, output, and general settings. Rebind its keys through vanilla Controls.

Input defaults are `48000 Hz` microphone sample rate, `24000 Hz` network sample rate, mono `16-bit`, and a `20 ms` frame. Network sample rate and frame length are changed on Transmit; the hardware rate must be supported by the selected device.

## Selecting an input device

With an empty `useDevice`, Channel looks for an available default Java audio input. When a named device no longer exists, it warns and falls back to the default. With no valid input at all, the HUD enters an error state.

Watch both raw and processed levels after switching. Raw movement with a persistent zero processed level usually means the threshold, VAD, or preprocessing rejected the signal. Neither moving suggests OS microphone permission or device-selection problems.

## Two monitoring paths

Input Listen locally plays audio that has passed preprocessing and trigger checks. It is useful for hearing the signal immediately before transmission and does not include network round-trip delay.

Output Listen Myself plays your voice after it returns from the server or Subspace, including encoding, network, and receive buffering. Enabling both produces two versions at different stages and is unsuitable for normal play.

## First check

1. Select the correct input and confirm that raw level moves.
2. Temporarily use Always On or a permissive threshold to verify processed level.
3. Enable local Listen and check quality and clipping.
4. Disable it, then ask another player to verify position, distance, and direction.
5. Finally choose a trigger mode that matches the required privacy boundary.

[Back to the Channel index](index)
