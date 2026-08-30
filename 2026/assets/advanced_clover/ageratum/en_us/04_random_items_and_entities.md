---
title: "Random Items and Entities"
navigation:
  title: "04 Random Items and Entities"
---

# Random Items and Entities

## Use Order

Using a Magic Clover swings the hand and applies a `10`-game-tick cooldown. The server then processes these steps in order:

1. Read the stack's entity list and chance; use the global config when no custom chance is set.
2. If the entity roll succeeds, create an entity and stop.
3. If the roll fails, choose an item from the custom item list or source namespace.
4. If the item branch cannot create a valid result, play the failure sound and drop a normal Four-leaf Clover as a refund.

A player without infinite materials consumes one Magic Clover when its server-side action runs; a Creative player keeps the original stack. A failure refunds ordinary Four-leaf Clover, not another reusable Magic Clover.

An entity type can be registered yet not creatable through `EntityType.create`, with the player type as an example. The current entity path invokes failure handling both inside and outside the failed creation, so this case can drop two ordinary Four-leaf Clovers instead of the one returned by a normal item failure.

## Default Behavior

The global entity chance defaults to `10/1000`, or `1%`, and the default entity is a creeper. The other `99%` of uses try to choose an item in the Magic Clover's stored namespace that passes the active whitelist or blacklist.

Ordinary entities appear at the player's position; boats and minecarts are placed in front. Results do not check whether the surroundings are suitable for that entity and are not guaranteed to be friendly.

## Item Pool Priority

If a stack carries at least one valid `item_list` entry, the result is selected only from that exact list, bypassing the source namespace and global allow/deny lists. If the list contains no valid item, selection falls back to the source namespace.

::: warning
The entity branch runs before item selection. Setting entity chance to `1000` makes the Magic Clover always attempt an entity and prevents all random item output.
:::

[Back to the Advanced Clover index](index)
