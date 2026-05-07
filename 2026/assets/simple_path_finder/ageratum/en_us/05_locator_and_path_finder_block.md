---
title: "Locator and Path Finder Block"
navigation:
  title: "05 Locator and Path Finder Block"
items:
  - "simple_path_finder:locator"
  - "simple_path_finder:path_finder_block"
---

# Locator and Path Finder Block

## Locator

`simple_path_finder:locator` is a single-stack item. Its destination is stored in the persistent, network-synchronized `simple_path_finder:locator` data component as either a player UUID or a global position.

An unbound locator can be bound in three ways:

- Shift + Right-click in air binds it to the current player.
- Right-clicking a block binds it to the position one block above the clicked face.
- Right-clicking a Path Finder Block while unbound imports that block's stored destination if the block has one.

A bound locator triggers navigation on normal right-click:

- Player-bound locators are resolved on the server. If the target player is online, the server sends `simple_path_finder:player_location`; if offline, it sends the offline result and the client shows `simple_path_finder.locator.player_offline`.
- Position-bound locators send their stored position when used. The locator item's normal use does not re-check the target dimension, while the Path Finder Block path does.
- Whether the actual path is computed by the server or the client depends on `server_side_pathfinding`.

Tooltips show `Unbound`, `Bound to Player` with the UUID, or `Bound to Position` with the dimension and coordinates.

## Unbinding

The generated recipe `minecraft:unbind_locator` is a shapeless recipe whose only ingredient is one locator and whose result is a fresh locator. It is the only recipe in the current data pack, and it is stored under the `minecraft` namespace. Crafting a bound locator this way produces an unbound locator.

## Path Finder Block

`simple_path_finder:path_finder_block` has hardness `1.5` and `requiresCorrectToolForDrops`. It stores one destination in the `simple_path_finder:locator_data` attachment on its block entity and exposes an `active` block state.

| Interaction | Behavior |
|:---|:---|
| Unbound locator + Path Finder Block | Copies the block's stored destination into the locator, if the block has one. |
| Bound locator + empty Path Finder Block | Writes the locator's destination into the block and sets `active=true`. |
| Bound locator + already-filled Path Finder Block | Refused; the server reports `block.simple_path_finder.path_finder_block.already_has_data`. |
| Empty hand + Path Finder Block with data | On the client, starts navigation through `NavigationService`. |
| Empty hand + empty Path Finder Block | No navigation is started. |

A player-bound destination is only usable while the target player is online. The block entity has a server-side validity check, but the empty-hand interaction runs on the client and resolves player targets from the local player list. There is no supported workflow for clearing or replacing the block's stored data other than breaking the block.

[Back to index](index)
