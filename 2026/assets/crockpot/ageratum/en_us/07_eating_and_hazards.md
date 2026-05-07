---
title: Eating and Hazards
navigation:
  title: Eating and Hazards
description: Five damage types, five eating speeds, and which foods bite back.
---

# Eating and hazards

## Five foods have their own damage type

The mod registers **five damage types**, each named after the thing that causes it:

| Damage type | Caused by |
|:---|:---|
| **`spicy`** | spicy food — confirmed on **raw pepper** |
| **`monster_food`** | monster-category dishes |
| **`pow_cake`** | Pow Cake |
| **`candy`** | Candy |
| **`taffy`** | Taffy |

A registered damage type rather than a plain effect means **death messages are specific**. Each has its own `message_id` — the spicy one is `crockpot.spicy` — so the log records that a pepper killed you rather than "took fatal damage".

### The spicy damage type in detail

```json
{
  "exhaustion": 0.1,
  "message_id": "crockpot.spicy",
  "scaling": "when_caused_by_living_non_player"
}
```

Low exhaustion, and its **scaling only applies when caused by a living non-player** — so the difficulty-based scaling that would apply to mob attacks does not apply to you eating a pepper. Eating one costs a fixed amount regardless of difficulty.

## Raw pepper hurts, confirmed

The mod's consumable definitions make this explicit: the pepper consumable is built with a **hurt-on-consume effect for 1.0 damage via the spicy damage type**.

So `peppers` is a crop you grow to cook with, not to snack on. One damage is not dangerous, but it is real, and it is the clearest signal that this mod treats food as having consequences.

## Sweets are not free either

`candy`, `taffy` and `pow_cake` each having their **own** damage type — rather than sharing one — is a deliberate choice. It means each can be tuned independently and each produces its own death message.

**Pow Cake** deserves the specific warning. In Don't Starve it is the joke food: technically edible, practically useless. Here it is registered with a damage type, so treat it as a hazard rather than as emergency rations.

## Monster dishes are a trade

`monster_lasagna` and `monster_tartare` are built on the `crockpot:monster` category, and `monster_food` is a damage type. The design is explicit: **monster ingredients have a use, and using them costs you.**

That is exactly the source game's balance, and it is why the monster category exists at all — see [02 Food categories](02_food_categories).

## Eating speed has five tiers

Consumption duration is a per-food property with five levels, expressed as offsets from vanilla's default:

| Tier | Offset from vanilla |
|:---|:---|
| **Super fast** | **−0.8 s** |
| Fast | −0.4 s |
| Normal | vanilla default |
| Slow | +0.4 s |
| **Super slow** | **+0.8 s** |

Confirmed assignments:

| Food | Tier |
|:---|:---|
| **Popcorn** | **Fast** |
| **Dried foods** | **Fast** |
| Asparagus, corn, eggplant, cooked eggplant, garlic, onion, tomato | Normal |

**Dried food being fast is why the drying rack is worth building** — see [05 Drying, birds and bartering](05_drying_and_other_stations). Drying is not only preservation; it makes food quicker to eat, which matters in combat.

The ±0.8 s tiers are a 40% swing either way against vanilla's default. A super-slow food is genuinely awkward to eat under pressure.

## Practical guidance

| Situation | Advice |
|:---|:---|
| Fighting | carry **dried food** or **popcorn** — fast tiers |
| Exploring the nether | hoglin nose cooks normally; monster dishes cost health |
| Short on food | **do not** fall back on Pow Cake, Candy or Taffy |
| Growing peppers | cook them, never eat them raw |
| Building a feast hall | dishes are blocks — see [04 The dishes](04_the_dishes) |

[Back to index](index)
