---
title: "Catalog and Current Limitations"
navigation:
  title: "06 Catalog and Current Limitations"
---

# Catalog and Current Limitations

## Generated content counts

These counts come from the current `src/generated/resources/assets/furnitureplan/items` directory:

| Category | Count |
|:--|--:|
| Chairs | `108` |
| Benches | `108` |
| Tables | `108` |
| Plain columns | `108` |
| Carved columns | `108` |
| Lighted columns | `108` |
| Cupboards | `108` |
| Cabinets | `1836` |
| Colored pot holders | `16` |
| Miscellaneous | `11` |
| Total | `2619` |

Cabinets dominate the count because every material has one disguised version and sixteen colored-frame versions.

## Material families

The `108` material families cover:

- Vanilla planks, bamboo materials, logs, and Nether hyphae.
- Cobblestone, stone bricks, sandstone, tuff, deepslate, blackstone, Nether, and End materials.
- Prismarine, purpur, quartz, and many polished or smooth blocks.
- Iron, gold, emerald, lapis, diamond, netherite, coal, and amethyst blocks.
- Ice, snow, clay, calcite, obsidian, crying obsidian, and dripstone blocks.
- Four cut-copper weathering stages and four waxed versions.
- Sixteen concrete colors; these also generate pot holders and serve as frame choices for every cabinet material.

## Eleven miscellaneous items

The miscellaneous tab currently contains a table lamp, two lantern patterns, an iron pot, edible grass, a stove, water dispenser, water bottle, cutlery, glass, and plate.

The grass supplies `2` nutrition and applies Darkness and Speed together when eaten. It is a separate novelty item, not part of the 108 generated furniture sets.

## Compact Showroom Structure

The `8 x 8 x 8` structure below shows a quartz-themed room with seating, a table, a Table Lamp, a food plate, and cutlery. It preserves data for `8` block entities. It does not contain storage furniture; arrange cabinets and cupboards separately from the storage topic.

<structure id="furnitureplan:ageratum/structures/furnitureplan_showroom.nbt"/>

## Current feature limits

- **No recipes:** the provider is empty and no recipe JSON is shipped. Survival play requires server-added recipes, operator distribution, or another acquisition method.
- **The stove does not cook:** its current registry entry is an ordinary `Block`, with no menu, block entity, or interaction.
- **The water dispenser does not serve water:** it is likewise registered as an ordinary `Block`.
- **The water bottle is an ordinary decorative block:** do not confuse it with the `glass` item that stores potion data.
- **Lighted columns cannot be switched off by players:** only table lamps and lanterns implement a toggle interaction.
- **A bench has one seat:** its wider model does not increase passenger capacity.
- **No keys or configuration:** all existing behavior comes from item and block interactions.

::: info
This is the feature boundary of the current alpha `0.1.00` source. A large model catalog does not imply that every miscellaneous name already has implemented behavior.
:::

[Back to index](index)
