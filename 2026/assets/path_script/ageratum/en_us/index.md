---
title: "Path Script"
navigation:
  title: "Path Script"
---

# Path Script

Path Script turns a **Touhou Little Maid** maid into a tour guide. You draw a path in the world node by node, hang actions on those nodes — messages, labels, beacon beams, icons, sounds — and then send a maid to walk it while you follow.

The path is not a simple line. It is a **branching graph**, so a node can lead to several places and the maid will stop and ask which way you want to go.

## At a glance

| Item | Value |
|:---|:---|
| Mod ID | `path_script` |
| Version | 1.0.0 |
| License | MIT |
| Required dependency | **`touhou_little_maid`** `[1.1.0,)` — properly declared |
| Items | 2 — Path Editor, Guide Sign |
| Maid task | 1 — Path Navigate |
| Node action types | 5 |
| Config options | 7 (common) |
| Minecraft | `[26.1.2,26.2)` |

## Two ways to run a path

**Point your own maid at it.** Right-click a maid you own with the Path Editor and she starts walking. She is still your maid, doing a job.

**Make a Guide Sign.** Transfer the path onto a sign, then right-click to summon a **disposable guide maid** who exists only for the tour. Right-click again and she is gone.

## Reading route

- [01 Getting started](01_getting_started) — the dependency, the two items, and how to obtain them
- [02 Drawing a path](02_drawing_a_path) — placing nodes, selecting them, and connecting edges
- [03 Node actions](03_node_actions) — the five things a node can do
- [04 Sending a maid](04_sending_a_maid) — the Path Navigate task and how she behaves
- [05 The guide sign](05_the_guide_sign) — disposable guides and stored maids
- [06 Configuration](06_configuration) — the seven options, and one trap in their defaults
- [07 Good to know](07_technical_notes) — guide maids are protected from players but not from monsters, and are never restored from backups
