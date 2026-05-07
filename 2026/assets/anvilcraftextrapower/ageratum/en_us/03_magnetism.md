---
title: Magnetism
navigation:
  title: Magnetism
---

# Magnetism

The mod adds magnetic blocks that work with AnvilCraft's power grid, plus new anvil-type blocks.

## Electromagnet

`electromagnet` (电磁铁) is a large magnet with two modes:

- **Attraction**: it searches downward and teleports an anvil (tagged `minecraft:anvil`, but not `anvilcraft:non_magnetic`) directly below it.
- **Field**: with a redstone signal (lit) and enough grid power it creates an upward/downward push field in a column above it for anvil-like falling entities and for players holding an anvil hammer.

It is an `IPowerConsumer` that needs power from the AnvilCraft grid, is tagged `anvilcraft:magnet`, and toggles between lit/unlit based on its redstone signal.

## Magnetic display stand

`magnetic_display_stand` (磁力展示台) is a single-slot display case that floats its item while powered:

- It needs grid power; when powered and not overloaded it suspends and renders the item, with redstone controlling the display height.
- The slot accepts a single item and only items that can hold enchantments (`EnchantmentHelper.canStoreEnchantments`).
- Interact: right-click with an empty hand takes the item out, right-click while holding an item places or swaps it. A honeycomb dropped on the stand locks it against further changes.
- While sneak-facing the stand you can scroll to adjust the display height offset (0–6, step 0.25).
- Breaking it drops the displayed item.

## Llama anvil

`llama_anvil` (羊驼砧) is a usable anvil styled after a llama:

- Right-clicking opens the normal anvil screen (repairing, naming, combining enchantments).
- It is a falling block; its falling damage is higher per block (3.0) with a lower cap (30).
- It is tagged `minecraft:anvil`, `anvilcraft:non_magnetic`, and `anvilcraft:cant_broken_anvil`.
- If any anvil falls onto it from more than one block, there is a small chance it "breaks": it disappears and spawns llamas (mostly one, sometimes three), playing a llama hurt sound.

## Anvil projector

`anvil_projector` (铁砧投影机) turns an anvil landing on it into a projector:

- When an anvil lands on it with a fall distance greater than 1, it projects a falling ghost block in front of it (in the direction it faces), one per block, up to the fall distance (max 16).
- It projects the block state of the block behind it, or a ghost anvil if there is nothing behind it.
- It then cools down for 1 second before it can be triggered again.

[Back to index](index)
