---
title: Runners and programming
navigation:
  title: Runners and programming
---

# Runners and programming

## Runners

- **`RunnerItem`** (hand runner) is a tiered item (`RunnerTier.RUNNER_0` and up); its tier-set blocks (`RunnerBlock` + `RunnerBlockEntity`) mirror the tiers.
- **`ThrowRunnerItem`** lets you throw a program; the `throw_runner` entity carries it.

## The interpreter

Wenyan programs are compiled then interpreted against Minecraft. The interpreter layer bridges Wenyan values to game objects:

- **Values** — `WenyanMinecraftValues`, `WenyanSymbol`, `WenyanArgsResolver` resolve arguments.
- **Value objects** — `WenyanVec3` (vector), `WenyanEntity`, `WenyanPlayer`, `WenyanBlock`, `WenyanCapabilitySlot`, `WenyanBlockRunnerValue` expose the world to scripts.

## Modules interact

`throw_module` and the additional/built-in module blocks (see [Blocks and modules](03_blocks_modules)) extend what a running program can do.

[Back to index](index)