---
title: "Lighting and Decor"
navigation:
  title: "03 Lighting and Decor"
items:
  - "furnitureplan:table_lamp"
  - "furnitureplan:lantern_pattern_1"
  - "furnitureplan:white_pot_holder"
---

# Lighting and Decor

## Three column types

Every material family generates a plain, carved, and lighted column. A column checks directly above and below for any `ColumnBlock`, then selects its model:

- Neither side connected: full standalone column.
- Connected above only: base model.
- Connected below only: top model.
- Connected above and below: middle connector model.

The check does not restrict material or plain, carved, and lighted types, so mixed columns still form one stack. Lighted columns start lit and emit light level `15`; their current class provides no player interaction to toggle that state.

## Table lamp

A table lamp must sit on a block that supports its center. Empty-hand right-click toggles between `off` and `on`, with the on state emitting light level `15`. Removing support below causes the lamp to become air through its normal survival update.

## Two hanging lanterns

`lantern_pattern_1` and `lantern_pattern_2` must hang beneath a supporting block. They start unlit; right-click with flint and steel to toggle them. Their lit state also emits level `15`. They cannot survive without support above.

## Colored pot holders

Pot holders exist only for the sixteen concrete colors. Each occupies two blocks and provides three flower-pot positions.

1. Use a vanilla flower pot on an empty position.
2. Use a block item accepted by the vanilla flower-pot system on the same position.
3. Empty-hand right-click that position to drop the plant first.
4. Empty-hand right-click again to drop the empty flower pot.

The stand uses the vanilla potted-plant registry, so an arbitrary block item is not necessarily valid. The upper half's middle interaction area forwards to storage held by the lower half. Breaking the stand drops plants and pots from all three positions.

The lower half requires support, and both halves support waterlogging. The stand also exposes its positions through NeoForge item capability for compatible transfer systems.

::: danger
Clear the block above before placement. The current implementation does not validate that space and unconditionally writes the upper half there. An existing block is replaced directly without its normal break drops.
:::

[Back to index](index)
