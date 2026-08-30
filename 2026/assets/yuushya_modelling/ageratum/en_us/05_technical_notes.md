---
title: Technical Notes
navigation:
  title: Technical Notes
description: The namespace split, the reload command, and the gaps worth knowing before you build.
---

# Technical Notes

## The namespace split, in full

This is the single most important technical fact about the mod:

```java
public static final String MOD_ID      = "yuushya";
public static final String MOD_ID_USED = "yuushya_modelling";
```

| Uses `yuushya` | Uses `yuushya_modelling` |
|:---|:---|
| Blocks, items, block entities | The `@Mod` annotation |
| Data components, menus | All nine network packet ids |
| Both creative tabs | The `pick_color` HUD overlay |
| `assets/yuushya/` — 241 files | `assets/yuushya_modelling/lang/` — 4 files |
| `data/yuushya/` — 54 files | — |

So the resource layout is genuinely split across two namespaces, with the **language files living apart from everything they name**: 150 `item.yuushya.*` keys and 24 `block.yuushya.*` keys sit in `assets/yuushya_modelling/lang/`.

This works because Minecraft merges every namespace's `lang/*.json` into one global table — the **key** determines what gets translated, not the file's location. It is unusual, but it is not broken.

## Language coverage

| File | Keys |
|:---|:---|
| `en_us.json` | 254 |
| `zh_cn.json` | 251 |
| `zh_hk.json` | 231 |
| `zh_tw.json` | 231 |

`zh_cn` is missing exactly three keys — `block.yuushya.showblock.line1`, `block.yuushya.itemblock.line1` and `block.yuushya.textblock.line1`, i.e. the first tooltip line of each carrier block. Those three fall back to English. `zh_hk` and `zh_tw` are 23 keys behind.

The tooltips themselves are unusually thorough: most tools have `line1` through `line4` plus numbered mode strings (`.0`, `.1`, `.2`), which is why the key count is high for a mod with 58 items.

## The reload command

```
/yuushya_reload_model reload blocks
/yuushya_reload_model reload items
/yuushya_reload_model reload texts
/yuushya_reload_model reload all
```

Note the command literal has **no namespace prefix** — it is `yuushya_reload_model`, matching neither `yuushya` nor `yuushya_modelling` as a prefix would. Success reports `Modellings reloaded successfully` (`command.yuushya_modelling.reload_succeed`).

A `ReloadModelPacket` propagates the refresh to clients, so it is usable on a server rather than single-player only.

## Known gaps

**The text block has no loot table and no recipe.** The mod ships two loot tables (`showblock`, `itemblock`) for three blocks. A placed text block drops nothing when broken, and cannot be crafted at all. Use pick-block to duplicate it and never break one you care about — see [Carrier blocks](02_carrier_blocks).

**The declared dependency range does not match the build.** `neoforge.mods.toml` declares `neoforge [21.0,)` and `minecraft [1.21,)`, while `gradle.properties` targets `minecraft_version_range=[26.1.2]` against NeoForge `26.1.2.71`. The metadata therefore claims compatibility with everything from 1.21 onward, which the build was not made for. Nothing stops it loading on this version; treat the toml range as unmaintained rather than as a support statement.

**`diable_ao_packet`** is the registered id of the ambient-occlusion packet — a typo for `disable`, harmless but worth knowing if you grep for it.

## Client screens versus menus

Only two things are real menus (`engrave`, `history`). The three carrier editors — `ShowBlockScreen`, `ItemBlockScreen`, `TextBlockScreen` — are **client screens driven by the mod's own packets**, not menu types. The largest source packages reflect this: `widget` (16 classes) and `showblocktool` (15) dwarf everything else, and there are 11 network classes to keep those screens in sync.

Practically, this means the editing UI is a custom stack rather than a container GUI: it does not behave like a chest, cannot be automated by hoppers, and its state is synchronised explicitly rather than by vanilla slot machinery.

## Source layout

| Package | Classes | Role |
|:---|---:|:---|
| `widget` | 16 | The custom UI toolkit |
| `showblocktool` | 15 | Tool behaviour |
| `network` | 11 | Nine packets plus plumbing |
| `transformData` | 10 | The layer/transform model |
| `engrave` | 9 | Engraving subsystem |
| `utils`, `registries`, `item`, `event`, … | 6–8 each | Supporting code |

139 Java files in total, MIT licensed, credited to eight authors.

[Back to index](index)
