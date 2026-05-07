---
title: "Connected models and forms"
navigation:
  title: "04 Connected models and forms"
items:
  - "yuushya:oak_table"
  - "yuushya:oak_foldable_table"
  - "yuushya:sticky_note"
  - "yuushya:books"
  - "yuushya:white_windows_diagonal"
  - "yuushya:sign_12"
---

# Connected models and forms

## Connection kits

Blocks in the register data choose a state kit that determines how they connect and how many variants are generated. The active kits include `normal`, `line`, `line_corner`, `line_cross`, `line_cross_simple`, `face`, `compact`, `column`, `pole`, `attachment`, `tri_part`, `VanillaStairBlock`, `VanillaDoorBlock`, `VanillaSlabBlock`, `VanillaSnowLayerBlock` and `HalfSlabBlock`.

- `line` blocks connect along their horizontal row (for example benches, shelves, frames and fences).
- `face` / `compact` blocks connect across a surface grid (for example table tops that stretch between adjacent tables).
- `column` / `pole` blocks connect vertically.
- Doors use vanilla door properties; stairs and slabs use vanilla stair/slab properties.

## Forms

Many blocks define several forms and can be cycled with a right-click when the entry has a `cycle_forms` usage field. Confirmed examples include foldable tables (`oak_foldable_table`, `acacia_foldable_table`), note blocks (`sticky_note`), `chalk_box`, books (`books`) and magazine stacks (`sorted_magazine`).

The Form Wrench can also cycle the form property directly on blocks that expose it, and the Block Update Brush helps refresh connected states after placing or removing neighbours.

[Back to index](index)
