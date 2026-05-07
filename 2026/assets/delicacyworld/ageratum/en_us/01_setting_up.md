---
title: "Setting Up the Restaurant"
navigation:
  title: "01 Setting Up the Restaurant"
items:
  - "delicacyworld:restaurant_management_block"
  - "delicacyworld:restaurant_entrance"
  - "delicacyworld:restaurant_exit"
  - "delicacyworld:restaurant_fridge"
  - "delicacyworld:storage_locker"
  - "delicacyworld:restaurant_table"
  - "delicacyworld:restaurant_chair"
---

# Setting Up the Restaurant

## Cash Register

`delicacyworld:restaurant_management_block` is the controller. The first player who places it becomes the owner; owners and Game Masters can manage it. Right-click to open the Restaurant Management screen. While a business is active the screen is locked.

## Entrance and exit

Use the Entrance or Exit item on a vanilla door. The click position's block below must be a door: the marker is then placed beside the door, and a Bell is placed above the door when that space is free. Both an entrance and an exit are required before opening.

If the placement fails, non-Creative players lose one item: the item is consumed and dropped at the clicked position instead of being placed.

## Fridge

Place a Fridge inside the scanned area. It has 27 slots. At business start its contents are copied to a temporary business stock and the fridge is cleared; when the session ends, leftover stock is restored to the fridge and overflow drops near it.

## Storage lockers

Placing a Storage Locker binds it to the first player who places it, and a player can have one bound locker. Right-click opens the 27-slot personal inventory. An active business locks the locker and uses it to store participant inventories during the session.

## Tables and chairs

Oak, Birch and Redwood variants exist. Chairs are block entities that track occupied seats. Star level limits default to 2/4/8 tables and 4/16/64 chairs for 1/2/3 stars.

## Recipe slots

The Cash Register menu has 9 inventory slots, but only the first slots used by the current level count: 3/6/9 at 1/2/3 stars by default. Only `*_recipe` items in those slots become valid customer menu items.

## Opening checklist

The current `startBusiness` check runs in this order: entrance, exit, fridge, at least one chair, at least one valid recipe, non-empty fridge, popularity above 0, and world time before the configured `businessCloseTime` (default 12000 ticks, noon).

[Back to index](index)
