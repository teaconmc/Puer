---
title: "Block templates"
navigation:
  title: "02 Block templates"
items:
  - "yuushya:stairs"
  - "yuushya:slab"
  - "yuushya:half_slab"
  - "yuushya:side_slab"
  - "yuushya:column"
  - "yuushya:post"
  - "yuushya:fence"
  - "yuushya:new_fence"
  - "yuushya:ladder"
  - "yuushya:hanging_light"
  - "yuushya:ring_light"
  - "yuushya:board"
  - "yuushya:snow_layer"
---

# Block templates

## What a template is

A template entry in `data/yuushya/register/template.json` defines a shape and a set of texture slots, then generates one block (and block item) per compatible material. The generated IDs follow the `template_material` pattern, for example the `stairs` template produces variants for each compatible material entry.

The template list includes `stairs`, `hollow_stairs`, `slab`, `side_slab`, `half_slab`, `half_side_slab`, `ridge`, `column`, `post`, `pole`, `stick`, `horizontal_column`, `horizontal_post`, `horizontal_pole`, `horizontal_stick`, `snow_layer`, `platform`, `fence`, `fence_corner`, `new_fence`, `handrail_left`, `handrail_middle`, `handrail_right`, `frame_top`, `frame_bottom`, `frame_left`, `frame_right`, `ladder`, `leaning_ladder`, `foldable_ladder`, `board`, `clock`, `round_clock`, tables (`average_table`, `medium_table`, `big_table`), benches and shelves (`bench`, `park_bench`, `shelf`, `bookshelf`, `uncovered_shelf`, `decorative_shelf`, `decoration_bookshelf`), seating (`chair`, `office_chair`, `bar_stool`, `seat`, `park_stool`, `cushion_armchair`, `couch`), gift boxes, `bucket`, `basket`, `backpack`, `phone`, `piano`, `skateboard`, `leaned_skateboard`, `cart`, `bicycle`, `venetian_blinds`, `rain_shed`, `lengthened_rain_shed`, `mounted_fern_pot`, `bottle_container`, `ring_light`, `hanging_light`, `warning_slab`, `audio`, `audio_large` and `slippers`.

## Materials and texture libraries

The compatible materials come from two sources:

- `texture.json` registers Yuushya blocks and texture types (`misc`, `wool`, `decorative_wool`, `raw_wood`, `concrete`, `acrylic` and others used by individual templates).
- `texture_remain.json` imports vanilla blocks as "remain" texture entries (for example `minecraft:stone`, `minecraft:cobblestone` and `minecraft:bricks`).

Each template declares which texture classes it accepts, so not every material appears in every template.

## Using a template

Right-click with a template item while the offhand is empty (or right-click air) to open the stonecutter-style menu, using one template item as input.

Right-click on a block while holding a compatible block in the offhand places the corresponding generated template block instead of opening the menu. For example, the stairs template can be applied to a compatible Yuushya block by holding that block in the offhand.

Some templates add gameplay tags: `ladder`, `leaning_ladder` and `foldable_ladder` are `climbable`, while `ring_light` and `hanging_light` emit light level 15.

[Back to index](index)
