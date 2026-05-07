---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

AnvilCraft:Extra Power is an addon for AnvilCraft, so its items and blocks live alongside the base mod. Everything this mod registers appears in the **AnvilCraft:Extra Power** creative tab (`anvilcraftextrapower:anvilcraftextrapower_tab`), whose icon is the AnvilCraft capacitor.

## New materials

The mod introduces several smelting-style materials. They carry the standard item tags (`c:ingots/magnesium`, `c:nuggets/magnesium`, `c:sulfur`, `c:dust/coal`, `c:storage_blocks/magnesium`, `c:storage_blocks/sulfur`).

| Item | Block | Notes |
|:---|:---|:---|
| `magnesium_ingot` / `magnesium_nugget` | `magnesium_block` | Storage block of magnesium; the ingot is a beacon payment item |
| `sulfur` | `sulfur_block` | Storage block of sulfur |
| `coal_powder` | — | Tagged `c:dust/coal` |
| `ashes` | `ashes_block` | Dropped when the burning coal block burns out; `ashes_block` drops 3–5 ashes |
| `magnesium_oxide` (苦土) | `magnesium_oxide_block` | Dropped by the burning magnesium block and its residue |
| `sulfuric_acid` | — | Used to craft the empty lead-acid battery |

Confirmed crafting recipes include:

<recipe id="anvilcraftextrapower:magnesium_block"/>
<recipe id="anvilcraftextrapower:magnesium_ingot_from_block"/>
<recipe id="anvilcraftextrapower:magnesium_ingot_from_nuggets"/>
<recipe id="anvilcraftextrapower:magnesium_nugget"/>
<recipe id="anvilcraftextrapower:sulfur"/>
<recipe id="anvilcraftextrapower:sulfur_block"/>

## Batteries and capacitors

The mod adds energy-storage items, all tagged `anvilcraftextrapower:capacitor`:

| Item | Notes |
|:---|:---|
| `lead_acid_battery` / `lead_acid_battery_empty` | Lead-acid battery and its empty form |
| `multiphase_capacitor` / `multiphase_capacitor_empty` | Multiphase capacitor and its empty form |
| `potato_battery` / `flashing_potato_battery` | Slime-based battery blocks; also placeable blocks |

Confirmed crafting recipes:

<recipe id="anvilcraftextrapower:lead_acid_battery_empty"/>
<recipe id="anvilcraftextrapower:multiphase_capacitor_empty"/>
<recipe id="anvilcraftextrapower:multiphase_capacitor"/>
<recipe id="anvilcraftextrapower:potato_battery"/>

The empty lead-acid battery uses lead ingots, `sulfuric_acid`, and royal-steel ingots; the empty multiphase capacitor uses lead plates and `multiphase_matter` (both AnvilCraft materials).

[Back to index](index)
