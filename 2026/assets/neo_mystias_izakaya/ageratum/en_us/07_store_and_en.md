---
title: "Store and EN"
navigation:
  title: "Store and EN"
---

# Store and EN

## The EN currency

The economy unit is registered as `neo_mystias_izakaya:en` and rendered as 円. Each player starts with a balance of 0 EN stored in the `balance` player attachment. The balance is copied on death, and all balance changes are recorded in the `transaction` attachment.

Store purchases spend EN. Sales from dining tables add EN to the canteen owner. The debug command below is the only built-in way to grant EN to a player in the current source.

## Store screen

The Store block (`neo_mystias_izakaya:store`; item `neo_mystias_izakaya:misc/store`, named "Kappa Phone" in the Chinese UI) opens a client screen when right-clicked with an empty hand. It provides ingredient and beverage tabs, an all-items view, a cart, a total, and the player's current EN balance.

On reload the server rebuilds three stores:

- `neo_mystias_izakaya:ingredients` from all registered ingredients.
- `neo_mystias_izakaya:beverages` from all registered beverages.
- `neo_mystias_izakaya:all` combining both.

## Prices and purchases

Base prices come from `data/neo_mystias_izakaya/neo_mystias_izakaya/economy/default.json`. Each reload initializes each item's discount with `0.4 * Math.random()`. A purchase price is `(int) (price * count * (1 - discount))`, so discounts can make the total 0.

A successful purchase removes EN from the buyer and spawns the purchased stacks as item entities at the player's position rather than inserting them directly into inventory. Prices shown on item tooltips and recipe cards come from the same economy data.

## Debug commands

The command root is `/neo_mystias_izakaya debug`:

- `/neo_mystias_izakaya debug balance set <count>` sets the executing player's EN balance.
- `/neo_mystias_izakaya debug tag getItemList <tag>` prints item entries carrying a positive/negative tag list.
- `/neo_mystias_izakaya debug tag getTagListRaw <item>` prints the tag list data for an item ID.

The inspected command classes do not implement a permission check, so treat them as debug commands for local testing and private servers rather than admin-gated utilities.

[Back to index](index)
