---
title: Compiler, runtime and recipes
navigation:
  title: Compiler, runtime and recipes
---

# Compiler, runtime and recipes

## Compiler and runtime

The `judou` module (compiler + runtime, jarJar-packaged into the mod) parses and runs 文言 programs. On the Minecraft side, the interpreter (`interpreter_impl`) evaluates them against blocks, entities, players and vectors (see [Runners and programming](02_runners_programming)).

## Recipe answering system

The mod has a recipe/answering system (`indi.wenyan.content.recipe.answering.checker.wyquestion`): recipes can pose 文言 questions and the checker verifies the answer, letting scripts/progression gate on correct answers.

## Village, config and datagen

- **Village trade** — `WenyanVillageTrade` adds villager trades for the mod's items.
- **Config** — `WenyanConfig` in `setup.config`.
- **Datagen** — language (`WenyanLanguageProviderFactory`), loot tables (`WenyanLootTableProvider`) and recipe data from `src/generated/resources`.

[Back to index](index)