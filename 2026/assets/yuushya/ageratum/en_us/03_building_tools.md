---
title: "Building tools"
navigation:
  title: "03 Building tools"
items:
  - "yuushya:form_trans_item"
  - "yuushya:blockstate_update_item"
---

# Building tools

## Form Wrench (`form_trans_item`)

The Form Wrench adjusts the form property of Yuushya blocks that expose one.

- Right-click a block to cycle its form value forward.
- Left-click (attack) a block to cycle backward.
- The overlay shows the property name and the new value.

The wrench does not break the targeted block: `canAttackBlock` returns `false` after the action. It has no durability and is registered in the `item` creative tab.

## Block Update Brush (`blockstate_update_item`)

The Block Update Brush re-runs the block's `getStateForPlacement` logic and replaces the block state in place. It is meant to fix stale connected-model states such as window frames that did not refresh after a neighbour changed.

- Main-hand or off-hand right-click on a block triggers the update.
- Blocks with a block entity are skipped.
- The brush has no durability.

Both tools are registered directly by the mod's main registration pass and persist their multi-mode state in the `yuushya:mode` data component (also used by structure creator items).

[Back to index](index)
