---
title: "Transmit and Triggers"
navigation:
  title: "02 Transmit and Triggers"
---

# Transmit and Triggers

## Five trigger modes

| Mode | Send condition |
|:---|:---|
| Always On | Every successfully captured and processed frame enters the send path |
| Voice Activity Detection | WebRTC VAD decides that speech is present |
| Loudness Threshold | Processed level reaches the configured dBFS value; this is the current default |
| Push to Talk | Sends only while the talk key is held |
| Toggle Mute | Each talk-key press toggles transmission |

The default loudness threshold is `-48 dBFS`. Lower values admit quieter sounds. VAD has Low, Medium, High, and Aggressive levels; more aggressive settings are stricter about recognizing input as speech.

## Talk key

The default talk key is `Y`. It changes `onAir` only in Push to Talk and Toggle Mute modes. Pressing `Y` does not make Always On, VAD, or Loudness Threshold send additional audio.

The key handler returns while any screen is open. Push-to-talk users must close chat, inventory, and configuration before holding the key. Toggle mode applies a `100 ms` debounce.

## Processing order

Each frame passes through device capture, NVIDIA AI when enabled, WebRTC preprocessing and resampling, VAD or loudness gating, local Listen, Opus encoding, and finally transmission to the Minecraft server or Subspace.

If any stage fails or rejects the frame, it is not encoded and sent. The HUD distinguishes Mute, VAD rejected, Volume rejected, Talking, Subspace connection, OP Only, and Error states.

## Frame length and sample rate

The current UI supports network sample rates of `8000`, `12000`, `16000`, `24000`, and `48000 Hz`, with frame lengths of `10`, `20`, `40`, and `60 ms`.

Shorter frames generally reduce waiting but increase packet frequency. Longer frames reduce packet count but add per-frame delay. Higher sample rates retain more high-frequency detail and increase raw data. Actual transport uses Opus compression, and the screen estimates raw and compressed bitrates.

## Choosing a mode

Start with the default threshold in a quiet room. Prefer VAD when background level changes continuously. Use Push to Talk when not pressing a key must mean no speech transmission. Toggle Mute suits long conversations, but requires watching the HUD to avoid leaving transmission enabled.

[Back to the Channel index](index)
