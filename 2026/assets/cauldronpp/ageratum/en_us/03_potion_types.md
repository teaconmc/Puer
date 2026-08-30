---
title: "Potion types"
navigation:
  title: "03 Potion types"
---

# Potion types

The potion data decides *what the effects are*. A separate value — the **potion type** — decides *what form the potion takes*. Both are stored on the cauldron and copied onto the item you extract.

## The four types

| Type | Item | How to select it |
|:---|:---|:---|
| Normal | `cauldronpp:potion` | Default state (also restored by Glistering Melon Slice) |
| Splash | `cauldronpp:splash_potion` | Add Gunpowder |
| Lingering | `cauldronpp:lingering_potion` | Add Dragon's Breath |
| Tipped arrow | `cauldronpp:tipped_arrow` | Extract with arrows instead of a bottle |

The three type converters are grouped in the `cauldronpp:cauldron_brewing_materials/potion_type` item tag.

## Switching type

Adding a type converter changes the cauldron's potion type without touching the potion data, so the effects stay the same and only the delivery method changes. Adding the converter for the type the cauldron already has does nothing.

Dragon's Breath is consumed as a bottle and leaves you a glass bottle. Gunpowder and Glistering Melon Slice are simply consumed. In creative mode none of the three is consumed.

Note that the tipped-arrow type is never set by a converter — it is chosen at extraction time by using arrows.

## Item tags

The mod's potion items are registered into standard tags so other content can treat them like vanilla potions:

| Tag | Contents |
|:---|:---|
| `c:potions/splash` | vanilla Splash Potion + `cauldronpp:splash_potion` |
| `c:potions/lingering` | vanilla Lingering Potion + `cauldronpp:lingering_potion` |
| `c:tipped_arrows` | vanilla Tipped Arrow + `cauldronpp:tipped_arrow` |
| `c:potions/bottle` | `cauldronpp:potion` plus the splash and lingering tags |
| `minecraft:arrows` | includes `c:tipped_arrows`, so the mod's arrows are shootable |
| `c:drinks/magic`, `c:drinks/watery` | `cauldronpp:potion` |
| `c:drinks/water` | `cauldronpp:water_bottle` |

## Naming

All four items share the same naming scheme: a translated prefix from the potion data plus the item form, giving names such as *Thick Potion*, *Awkward Splash Potion*, or *Potent Arrow*. If an item somehow carries no potion data, it falls back to a plain default name (*Potion*, *Splash Potion*, *Lingering Potion*, *Tipped Arrow*).

[Back to index](index)
