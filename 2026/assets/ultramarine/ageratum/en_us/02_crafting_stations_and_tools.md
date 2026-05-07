---
title: "Crafting Stations and Tools"
navigation:
  title: "Crafting Stations and Tools"
---

# Crafting Stations and Tools

Three functional workstations and one tool set power most of Ultramarine's crafting. The `ultramarine:tools` creative tab holds the tools, the workstations, and the porcelain tool set.

## Workstations

| Block | Purpose |
|:---|:---|
| `ultramarine:woodworking_workbench` | Runs the `woodworking` recipe type, turning raw wood and parts into planks and structural pieces. |
| `ultramarine:brick_kiln` | Runs `composite_smelting` recipes (for example firing bricks and roof tiles). It has a block entity (`brick_kiln_block_entity`) and its own menu (`ultramarine:brick_kiln`). |
| `ultramarine:chisel_table` | Runs `chisel_table` recipes that combine a template with dye to produce carved decorations. |

Each station defines its own recipe serializer and recipe type: `woodworking`, `composite_smelting`, and `chisel_table`. Container-style decor blocks with inventory use a shared `container_decorative_block_entity` and menu family (`ultramarine:container_decorative_block_menu_generic_9x1`, `_9x3`, `_9x6`, plus food `_9x3` / `_9x6` variants).

## Tools

- `ultramarine:wooden_mallet` — the icon tool (also the tab's icon item), used for light woodworking.
- Porcelain tool tier — `ultramarine:blue_and_white_porcelain_sword`, `ultramarine:blue_and_white_porcelain_shovel`, `ultramarine:blue_and_white_porcelain_pickaxe`, and `ultramarine:blue_and_white_porcelain_axe`, all using the blue-and-white porcelain tool material.
- `ultramarine:blue_and_white_porcelain_upgrade_smithing_template` — a smithing template for upgrading to the porcelain tier.

A `seat` entity provides seating for chairs and beds, and a `ultramarine:travelling_merchant` creature entity is registered (with the `cook` villager profession tied to the `cooking_poi` and `trade_poi` point-of-interest types).

[Back to index](index)
