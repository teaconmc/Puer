---
title: Sounds and Advancements
navigation:
  title: Sounds and Advancements
description: The six sound events, the dwarf voice lines driven by two block tags, and the three advancements.
---

# Sounds and advancements

## Sound events

Six sound events are registered, all as variable-range events, and all backed by an `.ogg` file in the mod:

| Sound event | Plays when |
|:---|:---|
| `drglaserpointer:laser_on` | A Laser Pointer arrives in your main hand or off hand |
| `drglaserpointer:laser_off` | A Laser Pointer leaves your main hand or off hand |
| `drglaserpointer:laser_make` | Any mark is placed (block or entity) |
| `drglaserpointer:were_rich` | You mark a block in `drglaserpointer:rich_blocks` |
| `drglaserpointer:mushroom1` | You mark a block in `drglaserpointer:mushrooms` (one of two, picked at random) |
| `drglaserpointer:mushroom2` | You mark a block in `drglaserpointer:mushrooms` (one of two, picked at random) |

All of them play in the `PLAYERS` sound category at the **marking player's** position, with no target player filter — so everyone in earshot hears them, not just you. The two voice-line groups also get a random pitch between `0.8` and `1.2`.

Subtitles exist for the pointer's own sounds only through the mod's language file; the voice lines are plain sound events.

## Voice-line cooldown

The dwarf voice lines are gated by a client-side cooldown so that spamming right click does not stack them:

- When you mark a block that is in `rich_blocks` **or** `mushrooms` and the cooldown is `0`, the client sets the cooldown to **30 ticks (1.5 s)** and tells the server it may play the voice line.
- The cooldown counts down one per client tick.
- `laser_make` is **not** gated, so every mark still clicks.

## The two block tags

Both tags are block tags shipped as data files, and both use `"replace": false`, so a data pack can extend them.

| Tag | Contents |
|:---|:---|
| `drglaserpointer:rich_blocks` | `minecraft:gold_block` |
| `drglaserpointer:mushrooms` | `red_mushroom`, `brown_mushroom`, `crimson_fungus`, `warped_fungus`, the four potted variants, `red_mushroom_block`, `brown_mushroom_block`, `nether_wart_block`, `warped_wart_block`, `mushroom_stem`, `crimson_stem`, `warped_stem`, `stripped_crimson_stem`, `stripped_warped_stem` |

## Advancements

Marking a block also fires the mod's own criterion trigger `drglaserpointer:mark_block_trigger`, which reuses the vanilla "entered block" trigger instance format — so its condition is a single `block` id.

| Advancement | Frame | Requirement |
|:---|:---|:---|
| `drglaserpointer:root` | task, shown | Have a Laser Pointer in your inventory |
| `drglaserpointer:were_rich` | goal, **hidden** | Mark `minecraft:gold_block` |
| `drglaserpointer:mushroom` | goal, **hidden** | Mark any **one** of the 17 mushroom blocks |

Both goals are children of the root advancement, are hidden until earned, and announce to chat. The root advancement uses the Laser Pointer as its icon and the vanilla adventure background.

Because the mushroom advancement lists all 17 blocks in a single requirement group, any one of them completes it.

[Back to index](index)
