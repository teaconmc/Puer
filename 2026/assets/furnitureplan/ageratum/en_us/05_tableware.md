---
title: "Tableware and Food"
navigation:
  title: "05 Tableware and Food"
items:
  - "furnitureplan:iron_pot"
  - "furnitureplan:plate"
  - "furnitureplan:glass"
---

# Tableware and Food

## Iron pot

A placed iron pot holds and displays one item with food data, except a honey bottle. Use food on an empty pot to insert one item; empty-hand right-click a filled pot to drop the food back out. Breaking the pot also releases its stored content.

The iron pot item also implements a melee hit effect: it plays the anvil-land sound, strongly knocks the target along the attacker's view direction, and independently chooses two effects from Blindness, Slowness, Nausea, Weakness, Mining Fatigue, and Darkness. It also declares support for the default axe item actions.

## Plates and assembled settings

A plate holds one item with food data and likewise rejects honey bottles. Use these items on a plate to alter its rendered setting:

- Cutlery: add cutlery.
- Glass: add a glass and transfer any potion already stored in that glass into the plate block entity.
- Food: insert one item when the plate is empty.

With cutlery present, food on the plate, and a player who needs food, empty-hand right-click consumes the food and adds `1` saturation after running its consumable effects. When those eating conditions are not met, empty-hand interaction may instead return the food or drink the glass contents.

Sneak and empty-hand right-click to dismantle the setting one part at a time, eventually returning the plate and food. Removing a glass preserves any undrunk potion in the dropped glass item.

## Glasses and potions

A glass block can store one potion item:

- Use a potion on an empty glass to fill it and return an empty glass bottle to the player.
- Empty-hand right-click a filled glass to apply its potion effects and empty it.
- Use an empty glass bottle to recover the original undrunk potion item.
- Use a held empty glass item on a water source to create a water-filled glass item.

The glass item stores contents as block-entity data and displays the potion name and color in its tooltip. A plate also reads those contents when an already-filled glass is attached.

## Placement and automation

Plates, standalone cutlery, and glasses require center support below and allow waterlogging. Iron pots, plates, and pot holders also register NeoForge item capability. Automation accesses their single or composite containers directly, so test the insertion order of an external transfer device in a safe setup first.

[Back to index](index)
