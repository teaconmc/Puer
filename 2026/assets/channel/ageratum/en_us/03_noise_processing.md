---
title: "Noise Suppression and Preprocessing"
navigation:
  title: "03 Noise Suppression and Preprocessing"
---

# Noise Suppression and Preprocessing

## Fixed noise suppression

Ordinary suppression uses the WebRTC processor and offers Low, Medium, High, Aggressive, and Off. Stronger levels usually remove more constant background noise but are increasingly likely to damage clarity and word endings. The current default is Medium.

Compare Off, Low, and Medium through local Listen before increasing strength. Do not use manual gain to restore content removed by aggressive suppression; gain can only amplify what remains and also raises residual noise.

## Voice detection and high-pass filter

VAD has four thresholds and smooths its decision through a roughly `1500 ms` sliding window to avoid rapid switching across short pauses. It controls transmission only when Voice Activity Detection is the selected trigger.

The high-pass filter is enabled by default and removes low-frequency rumble, desk vibration, and some wind noise. If a low voice becomes noticeably thin, compare with it disabled under the same recording conditions.

## Echo and gain

Echo cancellation is off by default and may add a little latency. Under ordinary suppression, it processes loudspeaker echo captured by the microphone. Under AI mode, it selects NVIDIA's dereverb denoiser and primarily targets room reverberation rather than speaker feedback.

Automatic gain defaults on, with target level `-5` and maximum gain `20`; it takes time to adapt. Manual `forceGainControl` defaults to `0`. An automatic limiter is always applied, but excessive gain still makes noise and breathing prominent.

## NVIDIA AI suppression

AI mode requires Windows, an RTX GPU, driver major version at least `570`, a loadable NVIDIA Audio Effects SDK, and a microphone rate of `16000` or `48000 Hz`. The source searches the standard SDK path, configured `nvidiaDllPath`, system libraries, and several known locations for `NVAudioEffects.dll`.

Model files must be installed correctly alongside the DLL. `aiNoiseCancelingRatio` controls intensity and defaults to `0.5`. Enabling echo cancellation switches to the dereverb-denoiser model.

## Failure fallback

The UI distinguishes missing SDK, unsupported OS, GPU, driver, sample rate, and runtime exception. When AI initialization is unavailable, do not assume audio necessarily stops: processing may continue with the raw frame, after which WebRTC options and the trigger still determine transmission.

::: warning
AI suppression consumes GPU time. When combined with a heavy shader pack, monitor game frame rate, speech dropouts, and driver stability together.
:::

[Back to the Channel index](index)
