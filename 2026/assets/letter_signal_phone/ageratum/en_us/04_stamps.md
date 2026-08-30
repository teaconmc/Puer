---
title: Stamps
navigation:
  title: Stamps
description: Datapack-driven stamp variants, the five rarities and their foil effects, and how stamp packs work.
---

# Stamps

Stamps are the collection layer of the mod. A single registered item, `stamp`, carries its identity entirely in item data — which means **the whole stamp catalogue is datapack-driven**.

## Variants

Variants are loaded from `data/letter_signal_phone/letter_signal_phone/stamps/*.json`. The set shipped with the mod is:

`default`, `bee_stamp`, `crafting_stamp`, `creeper_stamp`, `diamond_stamp`, `enderman_stamp`, `foxinberry_stamp`, `grass_block_stamp`, `mario_stamp`, `owl_stamp`, `pig_stamp`, `pikachu_stamp`, `sakura_stamp`, `skeleton_stamp`, `sleepfox_stamp`, `terraria_stamp`, `winefox_stamp`, `wolf_stamp`

That is **18 variant files**. Note that only some of them have translation entries in the shipped language files (`default`, `bee`, `crafting`, `creeper`, `diamond`, `enderman`, `grass_block`, `pig`, `sakura`, `skeleton`, `wolf`); the rest fall back to their raw name key. This is a current fact of the shipped resources, not a documentation gap.

Because variants come from data, **adding your own stamps is a datapack edit**, and the creative tab regenerates its stamp entries from whatever is loaded.

## Rarities and foils

Each variant exists in five rarities, each bound to a foil effect:

| Rarity value | Foil effect value | Tooltip |
|:---|:---|:---|
| `common` | `none` | (no rarity line) |
| `rare` | `holographic_stripes` | Rare – holographic stripe foil |
| `high_rare` | `color_crystal` | High Rare – colour crystal foil |
| `unique_rare` | `diamond` | Unique Rare – diamond foil |
| `rgb_rare` | `rgb_shift` | RGB Rare – shifting rainbow foil |

The creative tab lists **all five rarities of every variant**, so a datapack with many variants produces a large tab.

Foils are rendered by a dedicated item model and renderer, so the shine is an actual visual effect rather than just a tooltip label.

## Item data keys

For datapack and command authors, a stamp stack stores its state under custom data keys:

`lsp_stamp_variant`, `lsp_stamp_name`, `lsp_stamp_gui_texture`, `lsp_stamp_rarity`, `lsp_stamp_foil_effect`, plus `lsp_stamp_pack_origin_player` and `lsp_stamp_pack_origin_use` for pack provenance.

The default variant id is `letter_signal_phone:default` and the default GUI texture is `letter_signal_phone:textures/stamp/stamp.png`.

## Stamp packs

`stamp_pack` definitions load from `data/letter_signal_phone/letter_signal_phone/stamp_packs/*.json`; the mod ships one, `default`.

A pack tooltip states:

- `Contains %s random stamps`
- `Each stamp has a %s chance of being rare`
- `This pack guarantees a rare stamp every %s openings` — there is a **pity counter**, tracked per player per pack

Opening reports "Stamp pack opened." Stamps obtained this way record their provenance, and their tooltip reads `Obtained by player %s on use #%s of this pack` — so a pulled stamp remembers who opened which pack and on which attempt.

There is a crafting recipe for a plain stamp, but **not** for stamp packs:

<recipe id="letter_signal_phone:stamp"/>

[Back to index](index)
