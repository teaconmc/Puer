---
title: "Calendar Block"
navigation:
  title: "03 Calendar Block"
---

# Calendar Block

The `eclipticseasons:calendar` is a wall-hanging block with a block entity. It shows the current solar term and date and can be cycled between several display modes.

## Crafting

<recipe id="eclipticseasons:calendar"/>

- 2 Paper
- 1 Book
- 1 Feather (any `#c:feathers`)
- → 1 Calendar

## Display modes

Place the calendar on a wall, then use it without sneaking to let it read the biome at its position. Sneak and use it to cycle the `display_mode` state between:

- `normal` — the default calendar page.
- `year` — year view.
- `next` — upcoming-term view.
- `day` — day count.
- `sub_season` — the current sub-season (the 6-term phase within a season).
- `month` — Gregorian month view.

The block entity renders the selected mode and the current season data from the world. The calendar item also acts as the creative-tab icon for the mod.

::: note
The exact strings shown on the page come from translation keys such as `item.eclipticseasons.calendar.pop_hint` (`%1$s, %2$s/%3$s`). The model itself is client-side; switching modes only changes the block state and its block entity.
:::

[Back to the Ecliptic Seasons index](index)
