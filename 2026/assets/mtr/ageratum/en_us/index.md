---
title: MTR-NTE
navigation:
  title: MTR-NTE
---

# MTR-NTE（NeoMTR 纸板箱特色）

MTR-NTE (registry namespace `mtrsteamloco`, shipped under mod id **`mtr`** — open this guide with `/ageratum mtr`) is the "Cardboard" (NTE) extension shipped alongside NeoMTR, the Minecraft 26.1.2 port of Minecraft Transit Railway (`mtr`, version 300.6.1, MIT). It adds new blocks, creator tools, custom rail rendering and scripted trains on top of the base MTR network, and is developed by Jonathan Ho and Zbx1425 under `cn.zbx1425.mtrsteamloco`.

## Registered content

- **Blocks** — `mtrsteamloco:eye_candy` (decoration object with a block entity driven by eye-candy scripts) and `mtrsteamloco:one_way_gate_1` (one-way gate).
- **Items** — `mtrsteamloco:bridge_creator_1` (bridge creator), `mtrsteamloco:rail_editor_visual` (rail editor, visual) and `mtrsteamloco:rail_editor_geometry` (rail editor, geometry), the latter two stacking to 1.
- **Data component** — `mtrsteamloco:tool_tag` persists NBT on tools (used by the rail editors).
- **Sound** — `mtrsteamloco:bell`; **particle** — `mtrsteamloco:steam_smoke` (steam locomotive smoke, bonus limiter overridden).
- **Scripted content** — eye-candy scripts (`eyecandies/*`), scripted custom trains and dynamic train model loading, plus custom rail models (`rails/builtin.json`, `rails/catenaries.json`).
- **Client commands** — `/mtrnte` with `config`, `hideriding`, `virtdrive [atpcutout]` and `stat` sub-commands.

## Reading path

- [Getting started](01_getting_started) — how to obtain the tools and first steps.
- [Rail editing and trains](02_rail_editing_and_trains) — visual/geometry rail editors, bridge creator and scripted rolling stock.
