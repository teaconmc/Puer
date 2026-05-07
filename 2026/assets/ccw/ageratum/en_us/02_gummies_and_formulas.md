---
title: "Gummies and formulas"
navigation:
  title: "02 Gummies and formulas"
items:
  - "ccw:gummy"
---

# Gummies and formulas

## Gummy candy

`ccw:gummy` is a dynamic candy item: its sugar and flavor are stored in the `ccw:sugar_contents` data component, which changes its name, color and consumed effects. Each gummy restores 1 nutrition with low saturation, can always be eaten, and takes only 0.4 seconds to consume. Eating it applies the effects from its sugar/flavor combination.

In Creative mode, holding the main-hand gummy while sneaking cycles the held stack through the available flavor variants (see [Flavors](#flavors)). Normal survival players obtain flavored gummies by refining them in the Candy Workshop.

## Refining into gummies

A formula is a datapack entry in the `ccw:formula` registry, keyed by sugar and flavor. The standard formula cost is:

- **1** normal milk, or **8** carton/calcium-rich milks;
- **8** sugar (vanilla, nether or ender sugar powder matching the sugar type);
- **1** main ingredient that identifies the sugar;
- **1** flavor ingredient;
- output: **8** gummy candies with the corresponding sugar and flavor.

Because the formula registry is datapack-driven, combinations are not fixed crafting recipes: the generated files live under `data/ccw/ccw/formula/<sugar>_<flavor>.json`.

## Flavors

| Flavor | Ingredient | Effect on the formula |
|:---|:---|:---|
| `ccw:original` | (default) | Base effect |
| `ccw:excited` | Cocoa beans | Amplified effect |
| `ccw:bold` | Honey bottle | Doubled duration |
| `ccw:milky` | `ccw:milk_gelatin` | Uses the original effect, but removes the eater's other active effects before applying it |

The `ccw:milky` flavor is the "milk wash": it behaves as original for formula lookup, then clears active effects not included in the candy's formula before the gummy's own effects are applied.

## Core sugar effects

These are the always-registered core sugars and their default effects (600-tick simple effects, or 20-tick instant effects, unless noted):

### Overworld

| Sugar | Main ingredient | Original effect |
|:---|:---|:---|
| `ccw:speed` | Sugar | Speed |
| `ccw:bunny` | Rabbit's foot or `ccw:energy_carrot` | Jump Boost |
| `ccw:healing` | Glistering melon slice | Health Boost (instant) |
| `ccw:poison` | Spider eye | Poison |
| `ccw:pufferfish` | Pufferfish | Water Breathing |
| `ccw:night_vision` | Golden carrot | Night Vision |
| `ccw:strength` | Blaze powder | Strength |
| `ccw:recovery` | Ghast tear or `ccw:sweet_melon_slice` | Regeneration |
| `ccw:turtle` | Turtle scute | Slowness 100 ticks II + Resistance 100 ticks I |
| `ccw:flutter` | Phantom membrane | Slow Falling |
| `ccw:snail` | Soul sand | Slowness |
| `ccw:stinky` | Mushrooms | Nausea |
| `ccw:blinding` | `ccw:void_carrot` | Blindness |
| `ccw:weakness` | `ccw:weakness_powder` | Weakness |
| `ccw:brightness` | Glow berries | Glowing |
| `ccw:darkness` | Black dye | Darkness |
| `ccw:hunger` | Rotten flesh | Hunger |

### Nether

| Sugar | Main ingredient | Original effect |
|:---|:---|:---|
| `ccw:invisibility` | `ccw:phantom_pearl` | Invisibility |
| `ccw:stinger` | Cactus | Instant Damage (instant) |
| `ccw:bug` | Stone | Infested |
| `ccw:sticky` | Slime block | Oozing |
| `ccw:binding` | Cobweb | Weaving |
| `ccw:gale` | Breeze rod | Wind Charged |
| `ccw:refreshing` | Cocoa beans | Haste |
| `ccw:lazy` | Cobblestone | Mining Fatigue |
| `ccw:solid` | `ccw:calcium_rich_milk` | Resistance |
| `ccw:fireproof` | Magma cream / obsidian | Fire Resistance |
| `ccw:withering` | Wither rose | Wither |
| `ccw:red_heart` | `ccw:iron_clad_apple` | Health Boost |
| `ccw:floating` | Shulker shell | Levitation |

### End

| Sugar | Main ingredient | Original effect |
|:---|:---|:---|
| `ccw:golden_heart` | `ccw:gold_studded_apple` | Absorption |
| `ccw:satiating` | `ccw:blessed_steak` | Saturation 20 ticks |
| `ccw:lucky` | `ccw:greedy_offering` | Luck |
| `ccw:unlucky` | `ccw:defiled_offering` | Unluck |
| `ccw:tidal` | Nautilus shell | Conduit Power |
| `ccw:fish_swim` | `ccw:dolphin_cookie` | Dolphin's Grace |
| `ccw:taunting` | `ccw:ominous_flag` | Bad Omen |
| `ccw:discount` | Emerald block | Hero of the Village |

`excited` formulas use amplifier 1, and `bold` formulas double the duration (instant effects remain instant). Some formulas have no excited or bold variant; those are simply not generated.

[Back to the CCW index](index)
