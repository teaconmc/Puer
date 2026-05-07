---
title: "Brewing mechanics"
navigation:
  title: "02 Brewing mechanics"
---

# Brewing mechanics

Cauldron++ reimplements the Beta 1.9-pre2 potion model. There are no brewing recipes to look up: the cauldron holds a single 15-bit number, and every ingredient you throw in flips bits in that number. The effects you get are whatever that bit pattern happens to satisfy.

## Potion data is a bit field

The liquid in the cauldron carries a **potion data** value between `0` and `32767` (15 bits). Each brewing material has a rule describing which bits it sets, clears, or inverts:

| Symbol in a material rule | Meaning |
|:---|:---|
| `+n` | Set bit *n* to 1 |
| `-n` | Set bit *n* to 0 |
| `!n` | Invert bit *n* |

This is why the same ingredient can improve one brew and ruin another — it is not adding an effect, it is editing a number.

## Adding water resets part of the pattern

Every time water enters an already-brewing cauldron, the rule `-1-3-5-7-9-11-13` is applied, clearing all seven odd bits. Adding water is therefore a partial reset, not a neutral dilution. This applies to water buckets, water bottles, and to topping the cauldron up while it already holds a potion.

## Brewing materials

Only these items act as brewing materials. Nether wart is handled separately (see below).

| Material | Rule |
|:---|:---|
| Sugar | `+0` |
| Ghast Tear | `+11` |
| Spider Eye | `+10+7+5` |
| Fermented Spider Eye | `+14+9` |
| Blaze Powder | `+14` |
| Magma Cream | `+14+6+1` |
| Rabbit's Foot | `!8-10+1` |
| Glowstone Dust | `+8+3` |
| Redstone Dust | `-6-1+0` |
| Golden Carrot | `-5+12!4` |
| Phantom Membrane | `+5+7+11` |
| Slimeball | `+11-13` |
| Chorus Fruit | `!12-4+6` |

These are collected in the `cauldronpp:cauldron_brewing_materials/potion` item tag, with the full set (materials plus type converters) in `cauldronpp:cauldron_brewing_materials`.

## Nether wart is special

Nether wart does not use a simple bit rule. It runs a dedicated shuffling routine that finds the highest set bit, shifts the pattern, and then repeatedly smooths neighbouring bits until the value stops changing. In practice nether wart is the step that turns a bland mixture into something with real effects, exactly as in Beta 1.9-pre2.

## What the number actually produces

Once the cauldron holds potion data, the mod evaluates every registered mob effect against two rule strings:

- A **requirement** rule that decides whether the effect appears at all, and how long it lasts.
- An optional **amplifier** rule that decides the effect level.

These rules use a small expression language: bit tests, `|` for or, `&` for and, `*` for a multiplier, `=`/`>`/`<` to compare how many bits are set, and `!` to require a bit be unset. Or is evaluated before and.

Duration is derived from the requirement result: a value *d* gives `1200 × (d × 3 + (d − 1) × 2)` ticks. Harmful effects are then halved, and instant effects are reduced to a single tick.

## Effects the mod can produce

Beyond the vanilla Beta effect set (Speed, Slowness, Haste, Mining Fatigue, Strength, Instant Health, Instant Damage, Jump Boost, Nausea, Regeneration, Resistance, Fire Resistance, Water Breathing, Invisibility, Blindness, Night Vision, Hunger, Weakness, Poison), Cauldron++ adds modern effects to the table:

Wither, Health Boost, Absorption, Slow Falling, Saturation, Levitation, Luck, Bad Luck, Bad Omen, Darkness, Glowing, Oozing, Weaving, Wind Charged, and Infested.

## Names and colour

Both the potion's display name prefix and its colour are computed from the potion data, not stored. The prefix comes from a table of 32 names (Mundane, Bland, Clear, Awkward, Thick, Potent, Stinky, and so on), and the colour is derived by extracting three groups of bits and XOR-ing them into RGB channels. Two different brews with the same effects can therefore still look and read differently.

## What can go in the cauldron

Brewing only proceeds while the cauldron contains water or a potion. The accepted inputs are:

- Water buckets, water bottles, and glass bottles.
- All brewing materials listed above, plus nether wart.
- The three potion-type converters (see [03 Potion types](03_potion_types)).
- Arrows, for making tipped arrows.

Lava and powder snow cannot be brewed with — they only fill, empty, and affect entities.

[Back to index](index)
