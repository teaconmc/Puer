---
title: "Technical details"
navigation:
  title: "06 Technical details"
---

# Technical details

Details that matter for redstone builds, server operators, and anyone comparing this cauldron with the vanilla one.

## Comparator output

The Cauldron (Legacy) emits an analog redstone signal, but the formula encodes **both** the fill level and the liquid type:

> signal = amount + (liquid type id − 1) × 3

The liquid types are ordered `NONE`, `WATER`, `POTION`, `LAVA`, `POWDER_SNOW`, `COLORED_WATER`. So a comparator does not just read "how full" — a cauldron with 1 level of lava reads differently from a cauldron with 1 level of water. Plan filters accordingly, and note that an empty cauldron produces a negative intermediate that clamps to no signal.

## Block state

The block has one property, `emits_light`. When true the block emits light level 15. It is set when the cauldron is filled with lava (by bucket or by dripstone) and cleared when lava is bucketed out.

## Precipitation and dripstone

| Source | Behaviour |
|:---|:---|
| Rain | ~5% chance per precipitation tick; adds 1 level of water if empty or already water |
| Snow | ~10% chance per precipitation tick; adds 1 level of powder snow if empty or already powder snow |
| Water stalactite | Adds 1 level of water |
| Lava stalactite | Adds 1 level of lava and lights the block |

Dripstone support is added by patching vanilla's stalactite search so it recognises this cauldron in addition to vanilla ones, within the usual 11-block vertical range. Note that rain will not top up a cauldron that holds a potion.

## Shapes

The block uses the vanilla cauldron's outline, but its interaction shape is the inner box from y=4 upward. Aim inside the rim when right-clicking.

## Rendering

The liquid inside is drawn by a dedicated block entity renderer with its own model layer, and its colour depends on the contents:

| Contents | Colour source |
|:---|:---|
| Potion | Computed from the potion data |
| Water | Biome water colour |
| Coloured water | The stored dye colour |
| Lava, powder snow | Not colour-tinted |

Tipped arrows fired from the mod also receive their custom colour through a small patch to vanilla arrow colour handling, so their particle trail matches the brew.

## Storage

The block entity saves four values: `LiquidData` (the potion bit field), `PotionType`, `Level` (the amount), and `LiquidType`. Potion items additionally carry the raw value in a custom data tag named `PotionData` alongside the standard potion contents component, which is how effects, colour, and name survive on the item.

## Compatibility notes

- The mod patches vanilla glass-bottle filling so water bottles become `cauldronpp:water_bottle` rather than the vanilla water potion. Other content that expects the vanilla item from that action may see a different item.
- Effects are resolved by scanning the whole mob-effect registry against the rule table. Effects added by other mods have no rules and therefore never appear in cauldron brews.
- The mod declares no dependencies beyond NeoForge and Minecraft, and registers no commands or configuration files.
- The effect list for each of the 32768 possible potion data values is cached after first use, so repeated lookups are cheap.

[Back to index](index)
