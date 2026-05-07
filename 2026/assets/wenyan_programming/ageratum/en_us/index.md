---
title: Wenyan Programming
navigation:
  title: Wenyan Programming
---

# 吾有一術（Wenyan Programming）

Wenyan Programming (mod id `wenyan_programming`, version `1.0.1`) by indi.wenyan (GNU LGPLv3) lets you write Minecraft programs in **classical Chinese** (文言文). It bundles a Wenyan compiler and runtime (`judou`, jarJar-packaged) with a Minecraft interpreter that turns your 文言 programs into in-world magic — run them with hand, thrown or block **runners**.

## What it offers

- **Runners** — the hand runner (`RunnerItem`), thrown runner (`ThrowRunnerItem`, with the `throw_runner` entity) and block runners (`RunnerBlock`, tiered `RUNNER_0`–…), all from the `wenyan_programming` creative tab.
- **Paper & ink** — `bamboo_paper`, `cloud_paper`, `starlight_paper`, `frost_paper`, `phoenix_paper`, `dragon_paper`; `bamboo_ink`, `cinnabar_ink`, `starlight_ink`, `lunar_ink`, `celestial_ink`, `arcane_ink`.
- **Core blocks** — `crafting_block`, `pedestal`, `writing_block`, `logic_furnace`, `power_block`, `creative_power_block`, `cloud_beacon`, `float_note`, `throw_module`.
- **Modules** — additional module blocks (`formation_core`, `lock`, `screen`) and built-in modules for bit/logic, math, vec3, random, string, collection, item, block, entity, world, explosion, blocking queue and piston.
- **Compiler & recipes** — the Wenyan compiler/runtime with a recipe answering system, village trades, config and datagen.

## Reading path

- [Getting started](01_getting_started) — the idea, runners, paper and ink.
- [Runners and programming](02_runners_programming) — how programs run in the world.
- [Blocks and modules](03_blocks_modules) — the core and module blocks.
- [Compiler, runtime and recipes](04_compiler_runtime_recipes) — the language engine and recipe system.
