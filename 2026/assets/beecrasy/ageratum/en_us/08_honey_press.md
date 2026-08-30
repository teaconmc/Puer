---
title: "Honey Press"
navigation:
  title: "08 Honey Press"
items:
  - "beecrasy:honey_press"
  - "beecrasy:honey_bucket"
  - "beecrasy:honey_drop"
---

# Honey Press

<block id="beecrasy:honey_press"/>

<recipe id="beecrasy:crafting/honey_press"/>

The Honey Press processes comb material into items and honey fluid. It is not a machine that runs automatically after receiving power. When internal power is below `20`, clicking the upper half resets the remaining power to `40 ticks` rather than adding 40 to the current value. Current press recipes generally take `100` or `200 ticks`, so each batch needs several interactions.

## Operating sequence

1. Insert comb material matching a press recipe.
2. Ensure the item output and internal fluid space are available.
3. Click the upper half repeatedly to add press progress.
4. After completion, remove the item and extract honey with external piping.

The external fluid capability is **extraction only**. It cannot be used to pipe fluid into the machine. If a connected pipe does nothing, verify its direction and confirm that the receiving device actively extracts.

::: note
Pressing uses a custom recipe type. Use an in-game recipe viewer for exact inputs and outputs; this page embeds only the machine's standard crafting recipe.
:::

[Back to the Beecrasy index](index)
