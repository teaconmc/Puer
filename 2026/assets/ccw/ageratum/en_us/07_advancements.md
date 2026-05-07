---
title: "Advancements and stats"
navigation:
  title: "07 Advancements and stats"
---

# Advancements and stats

## Advancement tree

Calypso's Candy Workshop registers 13 advancements under `ccw`:

| ID | Unlock goal |
|:---|:---|
| `ccw:root` | Obtain a Sugar Refinery |
| `ccw:eco_friendly_material` | Reach the first step of the milk/paper material chain |
| `ccw:cows_choice` | Obtain carton milk from a cow with the Milk Extractor |
| `ccw:excessive_extraction` | Milk extraction milestones |
| `ccw:my_first_candy` | Refine your first gummy |
| `ccw:advanced_candy_maker` | Refine a flavored gummy (non-original flavor) |
| `ccw:nether_crazy_flavor` | Reach Nether sugar powder |
| `ccw:candy_finale` | Reach Ender sugar powder |
| `ccw:rainbow_collector` | Collect every gummy sugar type at least once |
| `ccw:diabetes` | Eat a very high number of gummies |
| `ccw:drawer_tables` | Obtain a drawer table |
| `ccw:more_buautiful_drawer` | Obtain the pink-carpet Drawer Table |
| `ccw:the_real_candy_workshop` | Place the Sugar Refinery on a Drawer Table |

The `rainbow_collector` requirement is tracked with the `ccw:sugar_stat` player attachment, which is copied to your new inventory when you die. Note that the real advancement ID for the pink drawer table is spelled `more_buautiful_drawer` in the current source; that spelling is intentional compatibility data and should not be "corrected" in docs.

## Custom statistics

The mod registers two custom statistics:

| Stat | Trigger |
|:---|:---|
| `ccw:interact_with_sugar_refinery` | Right-click a Sugar Refinery |
| `ccw:open_drawer_table` | Open a drawer table menu |

## Custom triggers

Three custom advancement triggers exist in code: `ccw:refine_flavored_sugar` (refining a non-original flavored gummy), `ccw:collect_all_sugar` (collecting all sugar types) and `ccw:develop_diabetes` (heavy gummy consumption). They are consumed by the advancement entries above.

[Back to the CCW index](index)
