---
title: Net Music Can Play Bili
navigation:
  title: Net Music Can Play Bili
items:
  - net_music_can_play_bili:pad
---

# Net Music Can Play Bili（网络音乐机：听听B站）

An addon by zhongbai233, mod id `net_music_can_play_bili`, group `com.zhongbai233`, version `0.4.0-beta`, MIT licensed, for Minecraft `[26.1.2,27)`.

## Its own description undersells it dramatically

The mod description and README both say roughly *"paste a Bilibili link into a music CD and play the audio."* That is true, and it is a small fraction of what is here.

What is actually implemented: a **real FFmpeg decoding stack shipped for six platforms**, **Dolby Digital Plus and Atmos-style object audio**, **video playback with YUV shaders**, a **handheld MP4 player**, a **tablet with publishable documents and world-scoped maps**, **holographic glasses**, **subtitle-as-lyrics projection**, **live-stream audio**, and a **server-side whitelist with human review and audit logging**.

If you read only the description you will underestimate this mod by an order of magnitude.

## It is an addon — NetMusic is required

`netmusic` is declared a **required** dependency at `[1.5.1,)`, loaded **after** it, with an explicit reason. This mod resolves Bilibili URLs into playable audio *for* NetMusic; without the parent mod there is nothing to plug into.

`curios` is declared **optional** at `[12,)` — with Curios installed, the headphones and holographic glasses can be worn in a head slot instead of held.

Both are declared properly in the metadata, so neither is a hidden runtime dependency.

## Two things to know before installing

**Your Bilibili login cookie is stored in plaintext.** Logging in writes `sessdata` and the full cookie header into `config/net_music_can_play_bili.json` as ordinary JSON. Anyone who obtains that file has your Bilibili account. Details and precautions in [08 Technical notes and limits](08_technical_and_limits).

**The jar ships 40 native binaries.** FFmpeg libraries plus two custom JNI bridges, for Windows, macOS and Linux on both x86-64 and ARM64. That is why it can decode what it decodes — and why the download is large.

## What is registered

| Registry | Entries |
|:---|:---|
| Blocks | 4 — `modern_turntable`, `speaker`, `video_projector`, `lyric_projector` |
| Items | 10 — 4 block items plus `mp4`, `pad`, `media_management_tool`, `invisible_headphones`, `cat_headphones`, `holographic_glasses` |
| Block entities | 5 | 
| Menus | 2 — media tool binding and reporting |
| **Attributes** | 2 — `headphones`, `holographic_glasses` |
| **Enchantments** | 2 — obtainable from an enchanting table |
| Creative tab | 1 |
| Loot tables | **2 only** — see [02 Devices](02_devices) |
| Mixins | 19 |
| Commands | server root plus a client root |
| Config | a custom JSON file, not a TOML |

## Reading path

1. [01 Getting started](01_getting_started) — what you need, and the shortest path to sound.
2. [02 Devices](02_devices) — all ten items and four blocks.
3. [03 Bilibili integration](03_bilibili_integration) — links, login, signing, CDN, subtitles, live.
4. [04 Audio pipeline](04_audio_pipeline) — FFmpeg, Dolby, spatial audio, speakers.
5. [05 Video and projectors](05_video_and_projectors) — video decoding, shaders, Iris.
6. [06 The Pad](06_the_pad) — documents, media, maps and triggers.
7. [07 Moderation and permissions](07_moderation_and_permissions) — the whitelist, review, audit and permission nodes.
8. [08 Technical notes and limits](08_technical_and_limits) — natives, credentials, localization gaps, licence.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `net_music_can_play_bili`, v0.4.0-beta |
| Author / licence | zhongbai233 / **MIT** |
| Minecraft | **`[26.1.2,27)`** — a real range |
| Required | **NetMusic `[1.5.1,)`** |
| Optional | Curios `[12,)`; Iris (guarded, undeclared) |
| Localization | English **111** keys, Chinese **121** — not paired; see [08](08_technical_and_limits) |
