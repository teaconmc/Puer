---
title: "Custom Particle Textures"
navigation:
  title: "07 Custom Particle Textures"
---

# Custom Particle Textures

## Local directory

During particle-type registration, the client checks a `customparticles` folder directly under the game directory. When the folder does not exist, it creates it and ends that scan, so after first creation, add PNG files and fully restart the client.

This is not a normal resource-pack hot reload. Adding files while the game runs does not register new particle types, and `F3+T` cannot replace a restart.

## Filename to resource ID

Only `.png` files in the folder root are scanned. Use lowercase ASCII filenames:

| Filename | Registered particle ID |
|:---|:---|
| `spark.png` | `madparticle:spark` |
| `demo~spark.png` | `demo:spark` |

A tilde `~` replaces the namespace colon. Without one, the `madparticle` namespace is added. Invalid resource names are skipped and logged.

## Multi-frame textures

Frames for one particle use consecutive names: `spark#0.png`, `spark#1.png`, and `spark#2.png`. When several matching files exist, the source searches every number from `0` through the matching-file count minus one. A gap omits that frame and writes an error.

Do not mix an unnumbered `spark.png` with `spark#0.png` in one group, and do not make one particle's base name a substring of another. Matching uses filename containment, so clear, non-overlapping names are the reliable choice.

## Resource injection

The mod generates a particle JSON for each local type and injects each PNG into the client's `textures/particle` resource list. The ordinary provider for those dynamic types returns no particle; the textures are chiefly targets for MadParticle commands and the Designer.

Single- and multi-frame textures still obey `spriteFrom`. Use `AGE` for frame progression over time and `RANDOM` to choose one frame per particle.

## Multiplayer boundary

The dynamic registry class subscribes only on the client distribution. A dedicated server does not scan this folder and does not distribute the PNG files. Every client must prepare matching files itself, and registry synchronization with extra local types needs runtime validation in a dedicated-server setup.

::: warning
Do not treat local custom textures as a server resource-pack distribution mechanism. Public servers should prefer ordinary particle types registered on both sides and deploy custom IDs only after closed testing.
:::

## Troubleshooting

If the target does not appear, check in order: full client restart, file in the folder root, PNG extension, lowercase valid name, and continuous frame numbers beginning at `#0`. Log messages for an invalid resource location or failed texture lookup distinguish naming failures from missing frames.

[Back to the MadParticle index](index)
