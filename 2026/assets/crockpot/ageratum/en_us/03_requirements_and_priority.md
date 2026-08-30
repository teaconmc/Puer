---
title: Requirements and Priority
navigation:
  title: Requirements and Priority
description: Eight requirement types, an AND/OR tree, and the priority field that decides ties.
---

# Requirements and priority

## A dish is a boolean expression

Each cooking recipe carries a `requirements` array, and each entry is one of **eight requirement types**:

| Type | Meaning |
|:---|:---|
| **`CATEGORY_MIN`** | a category total is **at least** *n* |
| **category min exclusive** | strictly **greater than** *n* |
| **category max** | **at most** *n* |
| **category max exclusive** | strictly **less than** *n* |
| **must contain ingredient** | a specific item is present |
| **must contain ingredient less than** | a specific item is present fewer than *n* times |
| **combination AND** | all child requirements hold |
| **combination OR** | any child requirement holds |

Because AND and OR are themselves requirement types, **requirements nest**. A dish's condition is a tree, not a flat list — you can express "at least 2 meat, and either fish or egg, but fewer than 1 inedible".

The inclusive/exclusive pairs matter with fractional values: `≥ 1.5` and `> 1.5` are genuinely different when an ingredient contributes exactly 0.5.

## Every requirement has a drawable twin

For each of the eight types there is a matching **drawable** class. That is not internal tidiness — it means **the requirement tree is rendered in JEI**.

So with JEI installed you can read a dish's actual condition instead of guessing at it. The mod went to the trouble of making its matching logic legible, which is the single most player-friendly decision in it.

## The four fields of a cooking recipe

```json
{
  "type": "crockpot:crock_pot_cooking",
  "cookingtime": 200,
  "potlevel": 0,
  "priority": 10,
  "requirements": [ … ],
  "result": { "id": "crockpot:hot_chili" }
}
```

| Field | Meaning |
|:---|:---|
| `cookingtime` | duration in ticks |
| **`potlevel`** | minimum pot tier — see [01 Getting started](01_getting_started) |
| **`priority`** | the tiebreak |
| `requirements` | the condition tree |
| `result` | the dish |

## 🔑 Priority is the mechanic nobody guesses

Several dishes can satisfy one set of ingredients simultaneously. When that happens, **the pot cooks the highest-priority match.**

That single field explains most confusing behaviour:

- **Adding an ingredient can change the result to something unrelated** — you crossed into a higher-priority dish's requirements.
- **Removing an ingredient can too** — you dropped out of the high-priority dish and fell back to a lower one.
- **A dish you can theoretically make may never appear** if a higher-priority dish always matches the same ingredients.

There is no in-game explanation of priority. If you are trying to cook something specific and keep getting something else, you are being outranked — look for what else your mix satisfies.

## Aiming for a specific dish

1. In JEI, read the dish's **requirement tree** — the drawable classes make it readable.
2. Note its **priority**.
3. Check what **else** your intended ingredients satisfy at a higher priority.
4. Adjust to satisfy your target while **failing** the higher-priority competitor — usually by pushing a category **below** its max, not by adding more.

That last point is the practical trick: **max and max-exclusive requirements are your steering wheel.** Adding more of something rarely narrows a result; taking something out often does.

## For pack authors

Priority is the lever for integrating your own dishes without breaking the vanilla set. A new dish with a **low** priority fills gaps; a **high** priority one will shadow existing dishes whose requirements it overlaps.

Requirements being a nested tree means you rarely need new requirement types — combine the eight you have.

[Back to index](index)
