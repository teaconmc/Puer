---
title: "Gensokyo Ontology"
navigation:
  title: "Gensokyo Ontology"
---

# Gensokyo Ontology

**Gensokyo Ontology** (mod id `gensokyoontology`) is a Touhou-themed content mod built around **danmaku** — bullet patterns you assemble, spell cards you fire, and a set of custom shaders that draw them.

It is unusual in one structural way that shapes everything else: **it ships no datapack content at all.** No recipes, no loot tables, no advancement files, no tags.

## Reading guide

- [01 Getting started](01_getting_started) — what "no datapack" means in practice, and the two creative tabs.
- [02 Danmaku and spell cards](02_danmaku_and_spellcards) — the crafting table, the trajectory editor, and the named spell cards.
- [03 Expressions and shaders](03_expressions_and_shaders) — the embedded expression registry and the four shader programs.
- [04 Good to know](04_registries_and_technical_notes) — no drops, no recipes, and seven items that need Chinese to read properly.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `gensokyoontology` |
| License | **All Rights Reserved** (no `LICENSE` file present) |
| Minecraft | `[26.1.2]` — a single exact version |
| **Dependencies** | **none** beyond `neoforge` + `minecraft` |
| **Datapack content** | **none — no `data/` resource directory exists** |
| Blocks | **~90** |
| Items | **~280** |
| **Shader files** | **14** (4 programs + 6 GLSL includes) |
| Custom registry | **`gensokyoontology:expression`** |
| Config entries | 7 |
| Commands | **none** |
| Languages | `en_us` / `zh_cn` / `ja_jp` — **593 keys each** |

## The thing to know first

::: danger
**This mod ships no crafting recipes, no block drops and no advancement progression.**

So its ~90 blocks and ~280 items all come from the creative tabs or `/give`, and **a block you place cannot be mined back**.

**This is not a packaging error** — the mod's own crafting mechanism does not use the vanilla recipe system at all. See [Danmaku and spell cards](02_danmaku_and_spellcards).
:::

## What the content actually is

The blockstate names read like a tour of Gensokyo: `gap` (the boundary manipulation), `dakimakura`, `chireiden_colored_glass`, `fractal_log` and `fractal_leaves`, `dragon_sphere_ore`, `blue_rose_bush`, `coaster_rail`, `disposable_spawner`, plus a complete `ginkgo_*` wood set.

The entity list is dominated by projectiles — `danmaku_entity`, `large_shot`, `small_shot`, `heart_shot`, `star_shot_small`, `star_shot_large`, `rice_shot`, `scale_shot` — and by **spell cards** with their canonical bracketed titles, such as `Spell Card「Wave And Particle」`, `Spell Card「Ido no Kaiho」`, `Spell Card「Hell Eclipse」` and `「Mountain Of Faith」`.

There is even a dedicated death message: **`death.attack.danmaku` — "Player is killed by danmaku"**.
