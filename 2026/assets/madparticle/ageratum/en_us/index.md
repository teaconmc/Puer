---
title: "MadParticle"
navigation:
  title: "MadParticle"
---

# MadParticle

MadParticle is a particle toolkit for maps, data packs, and server scenes. It reuses existing particle textures and controls spawn position, velocity, collisions, color, alpha, and scale through a long-form command. It also provides a visual Designer, particle command chains, and the Tada item.

## Reading order

1. [Getting started](01_getting_started): verify dependencies, open the Designer, and produce a first executable command.
2. [Designer workflow](02_designer_workflow): use the preview, particle browser, parameter panel, and command-block entry point.
3. [Command parameters](03_command_parameters): understand the fixed `/mp` argument order, spawn ranges, and viewers.
4. [Motion, collision, and appearance](04_motion_collision_and_appearance): tune physics, color, alpha, scale, and render type.
5. [Meta parameters and command chains](05_meta_and_command_chains): use meta SNBT, expressions, inheritance, and `expireThen`.
6. [Tada](06_tada): create pulse or continuous Tadas and recover their stored commands.
7. [Custom particle textures](07_custom_particles): register local single-frame or multi-frame particle textures from PNG files.
8. [Performance and compatibility](08_performance_and_compatibility): configure instancing, parallel ticking, translucency, and the light cache.

## At a glance

| Topic | Current implementation |
|:---|:---|
| Main command | `/mp`, with `/madparticle` as the long name |
| Command permission | Game-master command permission |
| Default Designer key | `Alt+M` |
| Rebuild Designer key | `Ctrl+M` |
| Fixed registered item | `madparticle:tada` |
| Survival recipe | None |
| Required dependency | T88 |

::: warning
This is not a server-only mod. Particle rendering, the Designer, configuration screens, and Tada visuals all require the client mod; clients and servers should use matching versions.
:::
