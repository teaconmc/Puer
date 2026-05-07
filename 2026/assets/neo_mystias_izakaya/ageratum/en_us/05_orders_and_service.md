---
title: "Orders and service"
navigation:
  title: "Orders and service"
---

# Orders and service

## Customer dispatch

While the canteen is open, the controller ticks every 100 ticks (5 seconds). Each idle dining table independently has a 30% chance to receive a customer, and 15% of arrivals are rare customers. A table is idle when it has no customer, no cuisine/beverage, no cooldown and no maid seat entity.

## Serving a dining table

Dining tables only accept food while occupied. Right-click with a cuisine to fill the cuisine slot, or with an item carrying `#neo_mystias_izakaya:beverages` to fill the beverage slot. Empty-hand right-click takes the cuisine first and then the beverage. Replacing a slot returns the old item to the player inventory, or drops it if inventory is full.

The table completes automatically once both slots are full. Each completion enters a random 200-400 tick cooldown (10-20 seconds).

## Order matching and evaluation

Common customer orders use exact IDs: the cuisine must match the recipe output item and the beverage must match the exact beverage item. Rare customer orders use tag IDs: the served cuisine and beverage must carry the requested positive tag.

Evaluation is calculated from the customer's likes, dislikes and beverage preferences:

- Cuisine or beverage positive tag matching `likes`: +1 per match.
- Beverage positive tag matching `beverage`: +1 per match, in addition to likes.
- Cuisine or beverage positive tag matching `dislikes`: -2 per match.

Score mapping: `>=3` is Excellent, `1-2` is Good, `0` is Normal, `-1` to `-2` is Bad, `<=-3` is Terrible. For common customers, a wrong cuisine forces Bad and skips tag scoring. For rare customers, any disliked tag caps the result at Good.

## Payment and combo

Evaluation multipliers are: Terrible 0.8, Bad 0.9, Normal 1.0, Good 1.1, Excellent 1.2. Payment is the evaluated price of each matched item; an unmatched item contributes 0.

A combo multiplier then applies: `1 + min(combo, 25) * 0.03`, for a maximum bonus of +75%. A Normal or better evaluation increases the owner's combo by 1; Bad or Terrible resets it to 0. EN is paid to the canteen owner (`neo_mystias_izakaya:en`, displayed as 円).

## Current behavior notes

Payment only occurs while the controller owner is present as a loaded `ServerPlayer`. If the owner cannot be found, the table still consumes the meal and enters cooldown without paying. With Touhou Little Maid installed, a maid can sit at a table; if its seat entity disappears before completion, the table is cleared immediately without processing the meal.

[Back to index](index)
