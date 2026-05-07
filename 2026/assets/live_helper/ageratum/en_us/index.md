---
title: LiveHelper
navigation:
  title: LiveHelper
---

# LiveHelper（直播助手）

LiveHelper is a TeaCon 2026 entry by Burning_TNT, mod id `live_helper`, group `net.burningtnt.livehelper`, version `1.0.0`, targeting Minecraft 26.1.2.

The author's own one-line summary is the best description available: **"ReplayMod, but for livestreaming."**

It is a **multi-camera broadcast tool**. You define camera shots, write WebAssembly programs that move them and decide which is on air, and LiveHelper pushes the rendered result out to OBS or any other Spout receiver. Configuration happens in a **web dashboard the mod serves from inside the game**.

## It adds no game content whatsoever

No items, no blocks, no entities, no recipes, no creative tab. There is no `data/` directory at all. Nothing about your world changes.

This is a production tool that happens to ship as a mod. If you are not streaming or recording, it has nothing for you.

## Two hard constraints to check first

**It is client-only.** The mod is declared `Dist.CLIENT`, so it does nothing on a dedicated server. (Its metadata nonetheless declares both dependencies as `side="BOTH"` — a cosmetic inconsistency, since the dist annotation is what actually governs.)

**Streaming output is Windows-only.** The Spout bridge is a native library shipped as a Windows DLL. On macOS or Linux the support check returns unavailable and **the streaming half of the mod simply does not exist**. Everything else — the dashboard, the programs, the camera math — still runs; there is just nowhere for the frames to go.

## Licensing — read this if you stream

The license is **AGPL-3.0-only**, the strongest copyleft in this batch, and it matters more here than usual because **this mod runs an HTTP server**.

AGPL's network clause covers software that users interact with remotely. If you modify LiveHelper and let anyone reach its dashboard over a network, you are obliged to offer them the corresponding source. For ordinary use — running the unmodified mod, dashboard bound to your own machine — this is not a burden, but a modpack that patches it and exposes the dashboard needs to take the obligation seriously.

## What is registered

| Registry | Entries |
|:---|:---|
| Items / blocks / entities / recipes | **none** |
| Config | **1 option**, client-side, with a config screen |
| Mixins | 4, **all client** |
| Shaders | 2 — a blit vertex shader and a mix fragment shader |
| Keybinds | **none registered** |
| Commands | none |
| Bundled native library | `libSpoutBinding.dll` (Windows) |

## Reading path

1. [01 Getting started](01_getting_started) — the dashboard, its port, and what you need outside the game.
2. [02 Clips and Managers](02_clips_and_managers) — the three-tier camera model and the per-frame flow.
3. [03 Programming](03_programming) — WebAssembly, the runtime, and handle ownership.
4. [04 API reference](04_api_reference) — every host function and predefined input.
5. [05 Streaming and platforms](05_technical_and_limits) — streaming is Windows-only, the dashboard port is fixed at 23512.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `live_helper` / LiveHelper, v1.0.0 |
| Author | Burning_TNT |
| License | **AGPL-3.0-only** |
| Minecraft | `26.1.2`, single pinned version |
| Side | **client only** |
| Dashboard | `http://localhost:23512/` |
| Scripting | WebAssembly, run by an embedded engine |
| Streaming | **Spout, Windows only** |
| Localization | English and Chinese, 3 keys each |
