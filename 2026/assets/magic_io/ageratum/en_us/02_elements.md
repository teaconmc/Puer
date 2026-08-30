---
title: Elements
navigation:
  title: Elements
description: Sixteen element types and the synthesis tree that connects them.
---

# Elements

Sixteen element types are registered into the mod's own registry. They are not merely labels — twelve of them are **declared as combinations of earlier elements**, forming a synthesis tree that mirrors the tier structure of the zhen blocks.

## The four primaries

| Element | Id |
|:---|:---|
| Earth | `earth` |
| Water | `water` |
| Wind | `wind` |
| Fire | `fire` |

These four have no parents.

## The derived twelve

| Element | Composed of |
|:---|:---|
| Wood | Earth + Water |
| Ice | Water + Wind |
| Metal | Fire + Earth |
| Lightning | Wind + Fire |
| Order | Wood + Metal |
| Space | Ice + Wood |
| Time | Metal + Lightning |
| Chaos | Lightning + Ice |
| Description | Chaos + Order |
| Energy | Space + Time |
| **Soul** | Lightning + Earth + Energy |
| **Creative** | Description + Energy + Soul |

Two of these take **three** parents rather than two — Soul and Creative — which places them clearly at the top of the tree.

Note the display names: the element whose id is `consciousness` is shown in game as **"Soul"**, not "Consciousness". If you are reading logs or writing datapacks, the id is `consciousness`; if you are reading the screen, it says Soul.

## Reading the tree as a progression

The tree lines up with the zhen tier gates described in [03 Zhen tiers and types](03_zhen_tiers_and_types):

| Depth | Elements | Zhen tier where they first appear |
|:---|:---|:---|
| Primary | Earth, Water, Wind, Fire | tier 0 and 10 functions |
| Second | Wood, Ice, Metal, Lightning | tier 10 and 20 functions |
| Third | Order, Space, Time, Chaos | tier 30 functions |
| Fourth | Description, Energy | tier 30 and 40 functions |
| Fifth | Soul | tier 40 |
| Apex | Creative | tier 50 — the single `creative` zhen |

So the element a zhen is bound to is a reliable indicator of how deep in the progression it sits. The one `primeval_creative_zhen` is the only block bound to the Creative element, and it is the only function introduced at tier 50.

## What an element does mechanically

Each zhen type carries exactly one element, assigned at registration. The element is part of the zhen's identity rather than a consumable resource — there is no elemental fuel, no elemental storage and no elemental damage type in the current build. Treat elements as the mod's **classification and progression axis**, not as a fluid you pipe around.

Every element has a translation key of the form `element_type.magic_io.<id>`, and all sixteen are translated in both shipped languages.

## A lookup detail worth knowing

The element lookup helper is written to be forgiving: given an unknown name, a null value, or an id that fails to parse, it **returns Earth** rather than failing. That is a sensible safety net, but it means a typo in a datapack does not produce an error — it silently produces an Earth-element result. If a zhen behaves as though it were an Earth machine when you expected something else, check your ids.

[Back to index](index)
