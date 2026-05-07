---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

## Current acquisition

In version `0.1.00`, `FPRecipeProvider.buildRecipes()` is empty, and neither main nor generated resources contain recipe JSON. The mod therefore provides no normal survival crafting path for its furniture yet.

Use the five creative inventory tabs:

| Tab | Main content |
|:--|:--|
| Furniture Plan: Miscellaneous | Table lamp, two lanterns, iron pot, grass, stove, water dispenser, water bottle, cutlery, glass, and plate |
| Furniture Plan: Sitting | Chairs and benches in every material family |
| Furniture Plan: Surfacing | Tables in every material and 16 colored pot holders |
| Furniture Plan: Decorating | Plain, carved, and lighted columns |
| Furniture Plan: Storaging | Cupboards and cabinets in every material |

Players with permission can also use `/give`, for example:

`/give @s furnitureplan:oak_chair`

## ID patterns

Most generated furniture follows `<material>_<furniture_type>`:

- `oak_chair`, `oak_bench`, and `oak_table`
- `oak_column`, `oak_carved_column`, and `oak_lighted_column`
- `oak_cupboard`

Each material also has one `<material>_disguised_cabinet` and sixteen `<material>_with_<color>_frame_cabinet` variants. Pot holders exist only for the sixteen concrete colors, such as `white_pot_holder`.

## Common controls

- Most features use block interaction; an empty hand is the most reliable choice for seating, table lamps, and storage.
- Sneak and empty-hand right-click a plate to remove its assembled parts one at a time.
- A pot holder requires precise targeting of one of its three positions: insert a flower pot first, then a pottable plant.
- Many small furniture pieces and tableware require support below. A pot holder also occupies two vertical blocks.

## Configuration and keys

The mod registers no player key bindings or client configuration. Use the normal dismount control to leave seating; all other implemented features use item and block interactions.

## Suggested reading

For building, continue with [Seating and Tables](02_seating_and_tables) and [Lighting and Decor](03_lighting_and_decor). For item organization, use [Storage Furniture](04_storage). For kitchens and dining rooms, use [Tableware and Food](05_tableware).

[Back to index](index)
