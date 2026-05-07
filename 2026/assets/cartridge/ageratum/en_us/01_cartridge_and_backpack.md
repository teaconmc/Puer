---
title: Cartridge and backpack
navigation:
  title: Cartridge and backpack
---

# Cartridge and backpack

The mod's core theme: turning yourself (or your gear) into a **cartridge** (弹药包).

## Backpack

**`backpack`** is a wearable inventory item. It has its own HUD (`BackpackHud`), renderer and menu (`BackpackMenu` / `BackpackScreen`), and can be opened from a key binding.

## Surgery table

**`surgery_table`** (block with a block entity of the same id, iron-block sound) is where you transform a `backpack` into a `cartridge` with the `surgery_table_menu`. The surgery involves packets like `CartridgeCreationRequestPacket` / `CartridgeConfirmRequestPacket` for a confirm screen.

## Cartridge

**`cartridge`** is the transformed item, and `CartridgeEntity` (0×0, fire-immune, no loot/summon) is the in-world form. `CartridgeManager` and `CartridgeHandler` track player cartridges; `BecomeCartridgePacket` / `EjectCartridgePacket` / `CartridgeUsePacket` handle the state, and a custom `CartridgeDeathMessageProvider` gives an abyss-themed death message.

## Creative tab

All items sit in the **`cartridge`** creative tab (icon: `cartridge`).

[Back to index](index)