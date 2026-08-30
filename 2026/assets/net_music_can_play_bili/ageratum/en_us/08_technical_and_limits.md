---
title: Technical Notes and Limits
navigation:
  title: Technical Notes and Limits
description: The plaintext credential warning, native libraries, mixins, localization gaps and licensing.
---

# Technical notes and limits

## ⚠️ Your Bilibili login is stored in plaintext

This is the most important practical fact about the mod.

Configuration lives in **`config/net_music_can_play_bili.json`** — a custom JSON file, not a NeoForge TOML. When you log in, two fields are written into it:

| Field | Contents |
|:---|:---|
| `sessdata` | your Bilibili **`SESSDATA` login cookie** |
| `webCookie` | the full assembled cookie header |

Both are stored as ordinary, unencrypted JSON strings, and both are read back on startup to restore your session.

**A `SESSDATA` cookie is a login.** Anyone who obtains it can act as your Bilibili account until it expires. So:

- **Do not include this file when sharing a modpack**, a config folder, or a world zip.
- **Do not attach it to a bug report**, and check any support archive that sweeps up `config/`.
- **Be careful with cloud-synced game directories** and with screen-sharing your config folder.
- If you think it has leaked, **log out of the Bilibili web session** to invalidate it.

Nothing about this is malicious — it is the straightforward way to persist a session, and plenty of tools do it. But it is unencrypted credential storage in a file people routinely share, and that combination deserves a warning rather than a footnote.

## The configuration file

Everything is in that one JSON file. There is no config screen and no TOML.

| Field | Default | Meaning |
|:---|:---|:---|
| `sessdata` | — | login cookie (written by logging in) |
| `webCookie` | — | full cookie header |
| `dolbyEnabled` | `true` | decode Dolby streams |
| `dolbyJocEnabled` | `true` | object-audio layer |
| `dolbyMaxObjectSources` | `64` | object source ceiling |
| `stereoCrossfeed` | `0.16` | headphone crossfeed amount |
| `userAgent` | empty | override the user agent |
| `rotateUserAgent` | off | vary the user agent per request |

CDN selector state is persisted in the same file. A malformed file is caught and logged as a load failure rather than crashing.

Two system properties feed the defaults: `ncpb.bili.user_agent` and `ncpb.bili.rotate_user_agent`.

## Native libraries

**40 native binaries** ship in the jar, covering Windows, macOS and Linux on x86-64 and ARM64. Per platform: `avcodec`, `avutil`, `swresample`, `swscale`, plus the mod's own `video_jni` and `eac3_jni`; Windows adds `libwinpthread-1`.

Consequences:

- The jar is **large**, and that is unavoidable given the coverage.
- **A dedicated server does not need any of it** — decoding is client-side.
- Coverage genuinely includes Apple Silicon and ARM64 Windows, which many media mods do not.

## Mixins

Nineteen, and their targets tell you how deep the parent-mod integration goes:

| Group | Mixins |
|:---|:---|
| **Into NetMusic** | CD burner screen, computer screen, big megaphone screen and its start message, music player block entity, set-music message, music-to-client message |
| Rendering | GUI renderer target, item-in-hand renderer, GL device YUV shader skip |
| Screen plumbing | abstract container screen, screen accessor, button accessor, GUI graphics extractor accessor, client tooltip component |
| Sound plumbing | sound engine accessor, sound manager accessor, library accessor |
| Client | client packet listener block update |

Two things follow. First, **this addon reaches inside NetMusic's own screens and messages** — it is not a bolt-on, and a NetMusic update that changes those surfaces will need a matching addon update. That is exactly why the dependency is declared with a minimum version of `1.5.1` and `ordering = "AFTER"`.

Second, three bridge classes — library, sound engine and sound manager — exist to keep that access behind a boundary rather than scattering accessor calls.

## Iris is used but not declared

Iris is a `compileOnly` build dependency and does **not** appear in the mod's declared dependencies. Unlike a bare undeclared dependency, however, every access goes through a compatibility helper with an explicit fallback, and a guard keeps the mod's shader overrides scoped to its own pipeline. See [05 Video and projectors](05_video_and_projectors).

The practical risk is therefore low, but the metadata still does not mention a mod the code imports, which is worth knowing when diagnosing a class-loading problem.

## Localization is not paired

| File | Keys |
|:---|--:|
| `en_us.json` | **111** |
| `zh_cn.json` | **121** |

Twelve keys differ. **Eleven exist only in Chinese**, so an English client shows raw keys for them, and two of those eleven are more visible than the rest:

| Missing from English | Where it shows |
|:---|:---|
| **the keybind category** | the **Controls** menu — an untranslated category heading |
| **the holographic glasses config keybind** | the Controls menu, next to it |
| MP4 unlink message | in play |
| lyric projector item-linked message | in play |
| video projector linked / unlinked / item-linked messages | in play |
| holographic glasses linked-count, slots-full, count tooltip | in play |
| holographic glasses "needs to be equipped" message | in play |

The one key present only in English is a debug-log config label.

So the linking workflow described in [02 Devices](02_devices) and [05 Video and projectors](05_video_and_projectors) is **substantially untranslated on English clients** — you will act on raw keys rather than sentences.

Command output has the mirror-image problem: it is **hardcoded Chinese text**, untranslatable in either direction.

## What the security review found

Checked deliberately, since this mod talks to the internet:

| Check | Result |
|:---|:---|
| Listening socket or HTTP server | **none** |
| Binding to all interfaces | **none** |
| Permissive CORS headers | **none** |
| External process execution | **none** |
| Arbitrary URL playback | **guarded** — direct stream URLs refused, whitelist enforced at six points |
| Server-side revalidation | **yes** — playback and disc creation both checked server-side |
| Permission checks | **yes** — three permission nodes, failing closed |
| Rate limiting | **yes** |

The one genuine exposure is the **plaintext credential file** described above. Everything network-facing is outbound only.

## Packaging

| Concern | Value |
|:---|:---|
| Version | `0.4.0-beta` — beta, and it says so |
| Author / licence | zhongbai233 / **MIT** |
| Minecraft | **`[26.1.2,27)`** — a real range |
| NeoForge | `[26,)`, loader `[4,)` |
| Required | **NetMusic `[1.5.1,)`**, ordered after |
| Optional | Curios `[12,)` |
| Logo | `logo.png`, present and correctly referenced |
| Recipes | none — progression is inherited from NetMusic |
| Loot tables | 2 of 4 blocks; speaker and lyric projector **drop nothing** |

The repository also carries two design documents and six Python development tools — including a timeline probe and a perceptual audio/video synchronisation benchmark. None of that ships in the jar, but it is a fair indication of how much measurement went into the playback path.

[Back to index](index)
