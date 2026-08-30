---
title: Unlock Costs and Data Layout
navigation:
  title: Unlock Costs and Data Layout
---

# Unlock Costs and Data Layout

## Conditional Friendship

The server option `enableConditionalFriendship` defaults to `false`.

- When disabled, the action path does not require a node to be marked unlocked, so players can request actions from the tree directly.
- When enabled, nodes must be unlocked through their parent progression. Locked nodes cannot be used directly, and only nodes with satisfied prerequisites can be offered for unlock.

Regardless of the option value, if an unlock request is actually sent and accepted, the server's unlock code checks the requester's item balance and consumes the cost declared by that node.

::: warning
The current unlock implementation has a persistence-order defect. With conditional friendship enabled, it marks the node unlocked before checking the balance. If candles are removed while an invite is pending, the paired interaction is accepted first, but no node-unlock update is sent even though server state may already have changed. An admin unlock command without enough currency reports failure and sends no unlock update, but can leave the same server-side change. With conditional friendship disabled, short-circuit logic does not call the persistent unlock at all; it consumes the cost and sends client control packets, so an individual node state may disappear after resynchronization.
:::

## Two Currencies

The data value `white_candle` maps to vanilla `minecraft:candle`, while `ascended_candle` maps to vanilla `minecraft:red_candle`. Balance checks count matching items in the player's inventory, and the player requesting the unlock pays the cost.

An integer `price` means white candles by default. The object form can specify both `amount` and `currency`.

## Default Nodes and Costs

| Order | Node | Cost |
|:---:|:---|:---|
| 1 | Establish friendship | 3 white candles |
| 2 | Holding hands | Free |
| 3 | High five level 1 | 1 white candle |
| 4A | Hug level 1 | 2 white candles |
| 4B | First lock node | 1 red candle |
| 5 | Double high five level 1 | 3 white candles |
| 6 | Pat head level 1 | 6 white candles |
| 6A | Pat head level 2 | 8 white candles |
| 6B | Second lock node | 5 red candles |
| 7 | Piggyback level 1 | 6 white candles |
| 7A | Piggyback level 2 | 8 white candles |
| 7B | Bear hug level 1 | 12 white candles |
| 8 | Bear hug level 2 | 14 white candles |

Letters indicate branches at the same depth; they do not mean that all branches must be unlocked in the table's vertical order.

## How Nodes Form a Tree

Each node JSON can declare:

- `parent`: the parent node's resource ID.
- `branch`: the `left`, `middle`, or `right` branch relative to its parent; omission uses the default branch.
- `behaviour`: a friendship, interaction, handholding, lock, or other registered behavior type.
- `metadata`: values such as an interaction ID and level.
- `price`: either an integer white-candle cost or an object containing a currency type.

The tree builder derives its layout from parent and branch links and rejects unresolved interaction or node references. After changing costs or topology, verify that both players receive the same synchronized data.

[Back to the That Sky Interactions index](index)
