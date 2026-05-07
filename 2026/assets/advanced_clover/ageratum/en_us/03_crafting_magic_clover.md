---
title: "Crafting Magic Clover"
navigation:
  title: "03 Crafting Magic Clover"
items:
  - "advanced_clover:magic_clover"
---

# Crafting Magic Clover

<item id="advanced_clover:magic_clover"/>

## Dynamic Recipe

Place these two items anywhere in a crafting grid:

1. One Four-leaf Clover.
2. Exactly one other item type.

The two occupied slots have no positional requirement. Crafting consumes one item from each and produces one Magic Clover.

::: info
This is a dynamic special recipe and cannot display every valid input. A "Structure Void" shown by a recipe viewer is only its placeholder for "any item"; it is not a real survival ingredient.
:::

## What the Ingredient Selects

The output records only the other item's **namespace**, not its exact item ID, count, or components. For example:

| Ingredient | Stored Source | Default Item Result |
|:---|:---|:---|
| Vanilla diamond | `minecraft` | One permitted vanilla item |
| Applied Energistics 2 item | `ae2` | One permitted AE2 item |
| This mod's Clover | `advanced_clover` | One permitted Advanced Clover item |

The tooltip displays the current random source. If that namespace is absent, or every item in it is filtered by the active list, use falls through to the failure refund.

## Creative Result

The Magic Clover in the Creative tab is preset to the `minecraft` source. A command-created stack with no source component uses the "any namespace" branch instead; that branch ignores the global allow/deny lists and is primarily intended for commands and data packs.

[Back to the Advanced Clover index](index)
