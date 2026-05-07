---
title: "Technical notes"
navigation:
  title: "08 Technical notes"
---

# Technical notes

Reference material and observations, all read from the current source.

## Registries

| Kind | Count | IDs |
|:---|---:|:---|
| Blocks | 7 | `hologram`, `server_hologram`, `fertile_soil`, `drone_station`, `drone_ranking`, `drone_scoreboard`, `work_scoreboard` |
| Block items | 7 | one per block |
| Block entities | 6 | all blocks except `fertile_soil` |
| Creative tab | 1 | `kilagraphdemo:kilagraphdemo`, icon = Hologram, placed before Spawn Eggs |

There are **no** entities, menus, recipes, loot tables, tags, advancements, commands or config file.

## No data pack

The mod ships **no `data/` directory at all**. That single fact explains three player-facing behaviours documented elsewhere: nothing is craftable, nothing drops when broken, and nothing belongs to a tag.

## Dependencies

| Mod | Declared as |
|:---|:---|
| `neoforge` | required, BOTH |
| `minecraft` | required, BOTH |
| `kilagraph` | **required, BOTH** |
| `slide_show` | optional, BOTH |

Worth noting for anyone assembling a pack: the code also uses **LowDragLib2**, which is not itself listed in the dependency block. It is presumably supplied through `kilagraph` — but if you ever see a LowDragLib class-loading error rather than a friendly dependency screen, that is why.

The Minecraft version range is **bounded** — `[26.1, 26.1.2]` — rather than open-ended, so a newer 26.x will refuse to load rather than attempt compatibility.

## Two mixin configurations

The mod ships **two** separate mixin configs, which is unusual and deliberate.

The **core** config patches client rendering: the camera, cloud rendering, hand rendering and the hotbar HUD. These support the hologram editor's model and world preview modes — hiding the hand, hotbar and clouds so you can inspect a work cleanly — together with a camera override manager.

The **slide-show** config is guarded by a mixin plugin that decides at load time whether to apply. This is why `slide_show` can be optional without risking a crash: when the mod is absent, its patches never activate. See [07 Slide-show integration](07_slideshow_integration).

## Networking

Thirteen payloads in total — ten to the server, three to the client.

To the server: delete a work, request a download, control the drone, like a work, request the work list, save a drone program, set a projector graph, set a server hologram, set its placement, and upload a chunk.

To the client: a work-data chunk, the work list, and a work-updated notification.

Transfers are chunked in both directions and reassembled server-side, which is what makes the progress percentage and the 24 KiB / 2048-chunk limits meaningful. Published works are held in server-side persistent save data.

## The mod ships tests

`DroneGameTests` and `FarmSimulationTest` together come to roughly **740 lines of test code** — rare in this batch and worth calling out.

This is not incidental. The farm simulation is written as **pure game logic with no Minecraft dependency**, specifically so it can be unit-tested in isolation, and the scoring path is documented as pure and deterministic so it is "safe to call from any thread and directly testable". The fixed scoring seeds exist for the same reason.

That design discipline is why the leaderboard can promise reproducibility: the determinism is tested, not just intended.

## Threading

Submitted programs are scored on a **single background daemon thread** named "Drone Scorer". A fresh graph is deserialized per seed from an immutable registry snapshot, so no mutable state is shared between runs, and only the leaderboard write-back is hopped back onto the main server thread.

Practically: submitting a program never stalls the server tick, even though it runs five 10,000-tick simulations.

## Metadata

| Field | Value |
|:---|:---|
| Mod ID | `kilagraphdemo` |
| Version | `26.1.0.2` |
| License | MIT |
| Group | `com.lowdragmc.kilagraphdemo` |
| Author | KilaBash |
| Minecraft | `[26.1, 26.1.2]` |
| NeoForge | 26.1.2.59-beta |

The name ends in **Demo** for a reason: this is a showcase for the KilaGraph library rather than a standalone content mod. Read its feature set as "what KilaGraph can drive", not as a survival progression.

[Back to index](index)
