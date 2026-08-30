---
title: "Potions & brewing"
navigation:
  title: "Potions & brewing"
---

# Potions & brewing

Twelve potions are registered. They are ordinary vanilla potion items carrying a custom `minecraft:potion_contents` effect list, so they stack, brew and throw exactly like vanilla potions.

## Brewing table

`brewStart` means the potion is brewed from an **Awkward Potion** with the listed ingredient. `brewFrom` means it is brewed from another Mine the Spire potion.

| Potion ID | Effect granted | Duration | Amplifier | Brewed from | Ingredient |
|:---|:---|:---|:---|:---|:---|
| `minethespire:bottled_fairy` | Fairy Blessing | 3600 t (3 min) | 0 | — | **not brewable** |
| `minethespire:long_bottled_fairy` | Fairy Blessing | 9600 t (8 min) | 0 | — | **not brewable** |
| `minethespire:blocking` | Quick Block | 5 t | 19 | Awkward | Copper Ingot |
| `minethespire:barricade` | Barricade | 9600 t (8 min) | 0 | Awkward | Shield |
| `minethespire:deadly_poison` | Venin | 100 t | 6 | Awkward | Poisonous Potato |
| `minethespire:strong_deadly_poison` | Venin | 100 t | 9 | Deadly Poison | Glowstone Dust |
| `minethespire:focus` | Focus Boost | 3600 t (3 min) | 0 | Awkward | Copper Block |
| `minethespire:long_focus` | Focus Boost | 9600 t (8 min) | 0 | Focus | Redstone |
| `minethespire:strong_focus` | Focus Boost | 3600 t (3 min) | 1 | Focus | Glowstone Dust |
| `minethespire:vulnerable` | Vulnerable | 3600 t (3 min) | 1 | Awkward | Rotten Flesh |
| `minethespire:long_vulnerable` | Vulnerable | 9600 t (8 min) | 1 | Vulnerable | Redstone |
| `minethespire:strong_vulnerable` | Vulnerable | 3600 t (3 min) | 2 | Vulnerable | Glowstone Dust |

Brewing recipes are registered through `RegisterBrewingRecipesEvent`, not as JSON files, so they will not appear in a datapack listing.

## Creative-tab variants

Whether a potion appears in the creative tab as a normal, splash or lingering bottle is declared independently of its brewing recipe, and the choices are not uniform:

| Potion | Normal | Splash | Lingering |
|:---|:---|:---|:---|
| Bottled Fairy / Long Bottled Fairy | yes (custom model) | no | no |
| Potion of Blocking | yes | no | no |
| Potion of Barricade | yes | no | no |
| Deadly Poison / Strong Deadly Poison | **no** | yes | no |
| Potion of Focus (all three) | yes | no | no |
| Potion of Vulnerable (all three) | **no** | yes | yes |

Deadly Poison and Potion of Vulnerable therefore have working brewing recipes that produce a *normal* bottle which is never shown in the creative tab. Translation keys for all three forms are generated for every potion regardless, so the normal-bottle names exist even where the tab entry does not.

## Naming quirks

The English names are generated from the `en(...)` call at registration, and the long/strong variants deliberately reuse the base name:

| Potion ID | English name |
|:---|:---|
| `bottled_fairy`, `long_bottled_fairy` | Bottled Fairy |
| `deadly_poison`, `strong_deadly_poison` | Deadly Poison |
| `focus`, `long_focus`, `strong_focus` | Potion of Focus |
| `vulnerable`, `long_vulnerable`, `strong_vulnerable` | Potion of Vulnerable |

So two different Bottled Fairy potions with 3-minute and 8-minute durations are indistinguishable by name; only the tooltip duration differs. The same applies to Deadly Poison at amplifier 6 versus 9.

## Extended potency names

`ModPotions` registers extra translation keys for `potion.potency.6` through `potion.potency.20`, mapping to the Roman numerals `VII` through `XXI`. Vanilla only ships names up to level 6, so these exist purely to let high-amplifier effects like Venin VII or Quick Block XX display a proper level number instead of a raw string.

## Bottled Fairy's model

Bottled Fairy stacks are built by a custom factory that sets `minecraft:enchantment_glint_override` to `true` and points `minecraft:item_model` at `minethespire:fairy_potion`. That model is registered separately as a flat item model over the texture `minethespire:item/fairy_potion`. It is a model-only entry: no `fairy_potion` item is registered.

## Practical notes

- The Potion of Blocking has a 5-tick duration on purpose: Quick Block is an instantaneous effect whose real job is a single burst of Blocking Value regeneration at amplifier 19, i.e. `+20.5` per tick for those 5 ticks.
- Bottled Fairy is not obtainable by brewing at all. Without cheats or the creative tab there is no way to get Fairy Blessing.
- Strong Potion of Focus is mechanically identical to the plain Potion of Focus, because Focus Boost ignores its amplifier (see [04 Mob effects](04_effects)).

[Back to index](index)
