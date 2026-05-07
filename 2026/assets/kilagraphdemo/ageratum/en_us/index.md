---
title: "KilaGraphDemo"
navigation:
  title: "KilaGraphDemo"
---

# KilaGraphDemo

KilaGraphDemo is a showcase mod for the **KilaGraph** node-graph library. It is not a survival content pack — it is a set of creative tools that let you build things out of visual graphs and share them on a server:

- **A drone farming puzzle.** Program a virtual drone with a node graph to farm pumpkins, then submit it to a deterministic scorer and a server leaderboard.
- **Holograms.** Author a shader graph, attach geometry (cube, sphere, quad or an imported OBJ), and project it into the world. Upload it, and other players can download, like and display it.
- **Slide-show shader effects.** With the optional `slide_show` mod present, author a shader graph and apply it to a Projector for everyone.

## At a glance

| Item | Value |
|:---|:---|
| Mod ID | `kilagraphdemo` |
| Version | `26.1.0.2` |
| License | MIT |
| Author | KilaBash |
| Required dependency | **`kilagraph`** |
| Optional dependency | `slide_show` |
| Blocks | 7 |
| Recipes / loot tables / tags | **none** |
| Commands / config file | none |
| Creative tab | `kilagraphdemo:kilagraphdemo` |

Because the mod ships no data pack at all, **every block is creative-only and none of them drop when broken**. See [01 Getting started](01_getting_started).

## Reading route

- [01 Getting started](01_getting_started) — dependencies, the seven blocks, and how to obtain them
- [02 The drone station](02_drone_station) — setting up a field and running a program
- [03 Drone nodes](03_drone_nodes) — the twelve nodes and what each costs
- [04 Farm and scoring](04_farm_and_scoring) — pumpkin growth, merging, and how the official score is computed
- [05 Holograms](05_holograms) — geometry, shader graphs, and placement
- [06 Sharing and limits](06_sharing_and_limits) — upload, download, likes, and every size cap
- [07 Slide-show integration](07_slideshow_integration) — shader effects on a Projector
- [08 Technical notes](08_technical_notes) — registries, mixins, networking and tests
