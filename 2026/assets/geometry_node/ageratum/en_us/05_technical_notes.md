---
title: "Technical notes"
navigation:
  title: "05 Technical notes"
---

# Technical notes

## Registries

| Kind | Count |
|:---|---:|
| Attachment types | 1 register |
| Items, blocks, entities, menus, creative tabs | **0** |
| Recipes, loot tables, tags | **0** |
| Mixins | **1** |

The mod's only registry interaction with vanilla is an attachment type. Everything else — the editor, the node runtime, dialogue, shops — lives in its own systems.

**One mixin in 587 files is remarkable restraint.** It patches projectile hits, and the mixin config sets `requireAnnotations` on overwrites, meaning the author opted into stricter validation than the default. For a mod this size, touching vanilla in exactly one place is a deliberate architectural choice.

## Configuration is JSON, not TOML

Unlike most NeoForge mods, the config is a plain JSON file rather than a NeoForge TOML spec:

| Section | Setting | Default |
|:---|:---|:---|
| `viewport` | `gridSize` | 15 |
| `node` | `cornerRadius` | 1.5 |
| `assetBrowser` | `quickAccessPaths` | *see below* |
| — | `version` | 1 |

The file carries a `version` field, so it is designed to be migrated rather than reset — a sign the author expects it to grow.

Note there is **no server-side or gameplay configuration at all**. Every setting is an editor preference.

## The shipped config contains the developer's own paths

::: warning
The `quickAccessPaths` that ship in the repository are:

- an absolute path into the original developer's IDE project directory
- `C:\`
- `D:\`
- `E:\`

The first is meaningless on any other machine. Two things follow: **replace those paths with your own**, and note that this file was committed from a working environment rather than generated clean.

That developer path also records the project's history — it names a **1.21.1** ModernUI branch, while this build targets 26.1.2. The mod has been forward-ported.
:::

## Translation coverage is the mod's biggest practical problem

| File | Keys |
|:---|---:|
| `en_us.json` | 138 |
| `zh_cn.json` | 543 |

The breakdown of the gap:

| | Keys |
|:---|---:|
| Shared by both | 114 |
| **Chinese only** | **429** |
| English only | 24 |

And what the Chinese-only keys are:

| Prefix | Chinese-only keys |
|:---|---:|
| `geometry_node.node.*` | **275** |
| `geometry_node.port.*` | 53 |
| `geometry_node.shop.*` | **38** |
| `geometry_node.menu.*` | 31 |
| `geometry_node.common.*` | 6 |

**The missing translations are the content itself.** 275 node entries and 53 port entries have no English text, so the node browser and port labels — the two things you read constantly while using the editor — fall back to raw keys. The entire shop interface is untranslated.

This is not a cosmetic gap. It is the difference between a usable tool and an unlabelled one, and it is why [01 Getting started](01_getting_started) recommends running the game in Chinese.

## Both language files contain divider entries

A quirk that inflates those counts slightly and is worth knowing if you count keys yourself: both files use fake entries as visual section dividers.

- `zh_cn.json` has entries like `--- ACTIONS/WORLD ---`, `--- DATA/ATTRIBUTION ---`, `--- CLIENT ---`
- `en_us.json` has three **Chinese-named** keys — `菜单`, `1级菜单`, `2级菜单` — whose values are rows of `=` characters

They are harmless, since no game key matches them, but they mean the raw key counts are a few higher than the real translation counts. The Chinese-named dividers sitting in the *English* file are a leftover from however the files were originally organised.

## Command permissions

Only one command is gated, and it is gated correctly: `/geometry_node debug area` requires **gamemaster** permission.

The graph commands (`graph_bind`, `graph_unbind`, `graph_list`, `graph_download`) are registered without an explicit permission requirement. On a server where players should not be rebinding graphs, gate them externally.

## Networking

Four packets handle remote graphs — a request and response pair for listing, and another pair for downloading. Both are properly typed with namespaced identifiers.

## Metadata

| Field | Value |
|:---|:---|
| Mod ID | `geometry_node` |
| Version | 1.0.0 |
| License | **All Rights Reserved** |
| Group | `com.mine.geometry_node` |
| Minecraft | `[26.1.2]` — one exact version |
| NeoForge | 26.1.2.75 |
| Required | ModernUI (client), Architectury (both) |

The mod id is **consistent across all four sources**. The metadata file uses the `${mod_id}` placeholder, which means the build property genuinely feeds it — worth stating because that is not always true.

## Documentation coverage

::: info
These five pages cover the framework, the editor, the catalogue's structure, and the four routes from graph to world. They do **not** document the 295 node types individually.

That boundary is deliberate and is explained in [03 Node catalogue](03_node_catalogue): at this scale a node-by-node reference would run to hundreds of pages, and 275 of the names have no English text to reference anyway.

Everything stated in these pages is verifiable from the current source. Where a number is given it is exact; where behaviour could not be pinned down from the source it has been described in terms of what the implementation establishes rather than guessed at.
:::

[Back to index](index)
