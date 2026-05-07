---
title: Audio Pipeline
navigation:
  title: Audio Pipeline
description: Bundled FFmpeg, Dolby Digital Plus, object audio, spatial smoothing and speaker relay.
---

# Audio pipeline

## It bundles FFmpeg, for six platforms

The mod does not depend on an external media library. It ships FFmpeg itself, together with two JNI bridges it wrote, for **six platform targets**:

| Platform | Architectures |
|:---|:---|
| Windows | x86-64, ARM64 |
| macOS | x86-64, ARM64 |
| Linux | x86-64, ARM64 |

Each target carries `avcodec`, `avutil`, `swresample` and `swscale`, plus:

| Bridge | Purpose |
|:---|:---|
| **`video_jni`** | video decoding — see [05 Video and projectors](05_video_and_projectors) |
| **`eac3_jni`** | **E-AC-3 decoding**, i.e. Dolby Digital Plus |

Windows builds additionally carry `libwinpthread-1`. That is **40 native binaries** in the jar, and it is the single largest reason this addon is not a small download.

The upside is that decoding works out of the box on every mainstream desktop platform and architecture, including Apple Silicon and ARM Windows, with no separate install and no reliance on a third-party media mod.

## Dolby audio is real, and enabled by default

Three configuration fields govern it, all in `config/net_music_can_play_bili.json`:

| Field | Default | Meaning |
|:---|:---|:---|
| `dolbyEnabled` | **`true`** | decode Dolby streams at all |
| `dolbyJocEnabled` | **`true`** | enable **JOC** — joint object coding, the object-audio layer |
| `dolbyMaxObjectSources` | **`64`** | ceiling on simultaneous object audio sources |

JOC is the mechanism behind object-based surround. Sixty-four object sources is a generous ceiling; if you are on a modest machine and a Dolby video is expensive to play, this is the number to lower before you disable Dolby entirely.

Dolby content is generally account-gated on Bilibili, so in practice you need to be logged in for these settings to matter. There is a dedicated Dolby registry, a Dolby audio handler, and a client-side tick handler driving it.

## Stereo, crossfeed and spatialisation

| Field | Default | Meaning |
|:---|:---|:---|
| `stereoCrossfeed` | **`0.16`** | how much of each stereo channel is blended into the other |

Crossfeed is a headphone technique: a small amount of channel bleed makes hard-panned stereo sound less fatiguing and more like speakers in a room. The default of `0.16` is a mild, conventional amount.

Beyond that, the pipeline includes:

- a **stereo OpenAL handler**, so stereo material is placed correctly in the game's audio engine rather than collapsed to mono;
- a **front smoother** for spatial audio, which damps abrupt changes as a listener turns;
- **PCM dithering** on the output stream, which is what keeps quiet passages from developing quantisation artefacts;
- **MP3 frame synchronisation**, for stream sources that arrive frame-aligned rather than seekable.

This is a more careful audio chain than a mod of this description would normally justify, and it is worth knowing it exists before blaming your headphones.

## Playback synchronisation

Two separate synchronisation concerns are handled:

**Between clients.** Playback sync managers and timeline packets keep an MP4 or turntable showing the same position for everyone, so two players watching one device see one thing. Device state is mirrored and stored server-side, with saved data so a device retains its position across a restart.

**Within a stream.** A dedicated playback-sync component keeps audio aligned against the timeline as it decodes, rather than letting drift accumulate.

The repository also contains a **perceptual audio/video synchronisation benchmark** among its development tools, which tells you the author measured this rather than eyeballing it.

## Speakers relay, they do not re-resolve

A **speaker audio relay** carries audio from a source device to speaker blocks. The important consequence: a wall of speakers does **not** mean a wall of independent stream downloads. One resolution, one decode, relayed out.

Speaker configuration travels over its own packet, so speakers can be tuned individually.

## Where audio actually happens

**Decoding and playback are client-side.** The server carries control, state and moderation; it does not fetch or transcode media. That is why:

- a dedicated server needs no native libraries and no internet access for this mod's media path;
- each client must be able to reach Bilibili itself;
- and the whitelist has to be a *pre-authorisation* check, because once a client is told to play something, that client is the one making the request.

[Back to index](index)
