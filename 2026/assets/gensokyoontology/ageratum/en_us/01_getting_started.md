---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

## Everything comes from the creative tabs

Because the mod ships no recipes and no loot tables, the two creative tabs are the entire acquisition path:

| Tab | Translation key |
|:---|:---|
| **Gensokyo Ontology: Items** | `itemGroup.gensokyoontology_items` |
| **Gensokyo Ontology: Combat** | `itemGroup.gensokyoontology_combat` |

The split is functional rather than cosmetic — combat gear (danmaku, spell cards, weapons) is separated from everything else (blocks, materials, decoration).

::: warning
**Breaking a block from this mod drops nothing.** With no loot tables defined, placed blocks are not recoverable. Treat anything you place as spent, exactly as with `link_portals` (526) which has the same structural gap.

If you are building with these blocks, keep spares in creative rather than expecting to mine them back.
:::

## `/give` works, and item ids are predictable

The 283 item model definitions map to ids under `gensokyoontology:`. Names follow the source directly — for example the seven jades are `inyo_jade_black`, `inyo_jade_red`, `inyo_jade_yellow`, `inyo_jade_green`, `inyo_jade_aqua`, `inyo_jade_blue`, `inyo_jade_purple`.

::: info
**Note the spelling `inyo`, not `yingyang`.** Both appear in the language files, and only one is real — see [Good to know](04_registries_and_technical_notes) for which is which and why it matters.
:::

## Configuration

Seven config entries exist and there are **no commands**. Nothing in the config affects acquisition, so it does not offer a way around the missing recipes.

## Where to go next

There are two genuinely distinct halves to explore:

**The danmaku workshop.** A dedicated table with a 5×5 grid and a trajectory editor lets you build bullet patterns. This is the mod's actual crafting system, and it exists entirely outside the vanilla recipe framework — see [Danmaku and spell cards](02_danmaku_and_spellcards).

**The rendering layer.** Four shader programs backed by six GLSL noise libraries draw the effects, including a `master_spark` program. See [Expressions and shaders](03_expressions_and_shaders).

## How much content there is

| Kind | Roughly |
|:---|---:|
| Blocks | **~90** |
| Items | **~280** |
| Shot and spell-card entities | 10 |

::: tip
That is a lot to browse in a creative tab. **The split into an Items tab and a Combat tab is your main filter** — if you are decorating, stay in Items; if you are fighting, everything you need is in Combat.
:::

[Back to index](index)
