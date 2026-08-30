---
title: "Technical notes"
navigation:
  title: "03 Technical notes"
---

# Technical notes

Reference material and known gaps, all read from the current source.

## Registries

| Kind | ID |
|:---|:---|
| Block | `lights_up:spotlight_block` |
| Block item | `lights_up:spotlight_block` |
| Block entity type | `lights_up:spotlight_block_entity` |

That is the complete registry. There are **no** entities, menus, recipes, loot tables, tags, advancements, commands, creative tabs, sounds, particles, network payloads, data attachments, config specs, or mixins.

The block entity renderer is registered during client setup.

## Known issue: shader assets are in a different namespace

The mod ID is `lights_up` — with an underscore — and every resource location the code builds from it uses that namespace, including the two render pipeline locations `lights_up:pipeline/spotlight_beam` and `lights_up:pipeline/spotlight_beam_unlit`.

The four shader definition files, however, ship under `assets/lightsup/shaders/program/` — namespace **`lightsup`**, without the underscore. The mod's Java package is also `lightsup`, which is probably where the discrepancy crept in.

Assets under a namespace that does not match the mod ID are not addressed by any identifier the mod constructs. Anyone continuing this mod should reconcile the two before relying on those shader files; the safe fix is renaming the asset folder to `lights_up`.

## Everything cosmetic is missing

Beyond the shader namespace issue, the mod ships no client resources at all:

| Missing | Consequence |
|:---|:---|
| Blockstate + block model | The placed block renders as the missing-model placeholder |
| Item model | The held and inventory item renders as the missing-model placeholder |
| Textures | Nothing to skin the block with |
| Language file | The block's name displays as `block.lights_up.spotlight_block` |

And no data pack content:

| Missing | Consequence |
|:---|:---|
| Recipe | Cannot be crafted |
| Loot table | Breaking it drops nothing |
| Tags | Belongs to no tag |
| Creative tab | Not obtainable from the creative inventory |

## Block properties

| Property | Value |
|:---|:---|
| Blockstate property | `facing` — all six directions, default up |
| Shape | 12 × 6 × 12 units, sitting low in the block space |
| Strength | 1.0 |
| Occlusion | disabled |
| View blocking | disabled |
| Suffocating | disabled |

Placement uses the opposite of the nearest looking direction. Rotation and mirroring are not overridden, so structure tools will not adjust the facing.

## Rendering internals

Two render pipelines are declared. The beam pipeline builds on the block snippet with a translucent blend and a depth test that does not write depth; a second unlit pipeline builds on the entity snippet with the same blending and additional shader defines.

The render setup binds two samplers: a vanilla white concrete texture as the base sampler, and the vanilla lightmap. A no-texture variant and a memoized per-texture variant are also provided, but the renderer only uses the textured beam type.

Note that the unlit pipeline and the alternate render types are declared but **never used** by the renderer — they are prepared for future use.

## Metadata

| Field | Value |
|:---|:---|
| Mod ID | `lights_up` (gradle `mod_id` and the `@Mod` constant agree) |
| Version | 1.0.0 |
| License | All Rights Reserved |
| Package | `nowebsite.makertechno.lightsup` |

The repository README is still the unmodified NeoForge MDK template text and describes nothing about the mod. A `TEMPLATE_LICENSE.txt` from the starter template also remains alongside the declared All Rights Reserved licence; the two should be reconciled before release.

[Back to index](index)
