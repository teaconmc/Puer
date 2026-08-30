---
title: Let Me See See
navigation:
  title: Let Me See See
---

# Let Me See See (Your Code)

**Let Me See See** (namespace `let_me_see_see`, version `1.3.10`, LGPLv3.0, by xkball) is a **developer tool**, not a gameplay mod. It adds no blocks, no recipes and no world content — it gives you three in-game instruments for reading *other mods'* code: point at a block to find the classes behind it, browse and decompile loaded classes, and export item icons and metadata.

If you are looking for something to play with, this is not it. If you are writing an addon, debugging a pack, or preparing a wiki, this is a workbench.

## Reading guide

- [01 Getting started](01_getting_started) — the three items, how to obtain them, and what actually needs setting up.
- [02 The scanner](02_scanner) — point at a block or mob to find its classes.
- [03 Class explorer](03_class_explorer) — search, export and inspect loaded classes.
- [04 Decompiling and the IDE](04_decompiling_and_ide) — the bundled decompiler, the class database, and jumping into IntelliJ IDEA.
- [05 Item data exporter](05_item_data_exporter) — render item icons to PNG and export metadata.
- [06 Troubleshooting](06_technical_notes) — what to do when a tool does nothing, and where exported files go.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / namespace | `let_me_see_see` |
| Version / license | `1.3.10` / LGPLv3.0 |
| Minecraft | 26.1.2 (range `[26.1.2,26.2)`) |
| NeoForge | 26.1.2.59-beta, range `[26.1.2,)` |
| Items | **3** |
| Blocks / entities / recipes | **none** |
| Creative tab | `let_me_see_see:tab` |
| Config options | **2**, config type `CLIENT` |
| Commands | **none** |

## What it actually is

Three items, all `stacksTo(1)`:

| Item id | Display name | What it does |
|:---|:---|:---|
| `let_me_see_see:scanner` | Scanner | Right-click a block or a living entity to collect the classes involved |
| `let_me_see_see:explorer` | Class Explorer | Opens the class browser / search / export screen |
| `let_me_see_see:item_data_exporter` | Item Data Exporter | Renders item icons to PNG and exports metadata |

Everything else — the decompiler view, the exported-class database, syntax highlighting — lives inside those screens.

## Two things to know before you start

**There are no recipes.** The mod has no `data/` directory at all, so none of the three items can be crafted. Take them from the creative tab `let_me_see_see:tab` or use `/give`.

**Two of the three tools need runtime class inspection; one does not.** When it is unavailable the Class Explorer shows a dedicated "Class Explorer Unavailable" screen, and the Item Data Exporter keeps working regardless. The Scanner, however, **fails silently** — it is the one case with no in-game signal at all. See [02 The scanner](02_scanner) and [06 Troubleshooting](06_technical_notes).
