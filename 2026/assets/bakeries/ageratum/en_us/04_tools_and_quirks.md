---
title: Tools and Their Quirks
navigation:
  title: 04 Tools and Their Quirks
---

# Tools and Their Quirks

Several of this mod's tools use non-obvious controls, and the tooltips are the only place they are documented. This page collects them.

## Flour Sieve — hold it in the off hand

```
tooltips.bakeries.flour_sieve_0 = Sift the item in the main hand while holding it off hand
```

**The sieve goes in your off hand and the material in your main hand** — the reverse of what most tools expect. Getting this backwards is the most likely reason a new player concludes the sieve is broken.

The mod is aware people will try to sift the wrong things, and answers with three escalating refusals:

| Tooltip | Text |
|:---|:---|
| `flour_sieve_1` | *What are you doing?* |
| `flour_sieve_2` | *You can't sift it!* |
| `flour_sieve_3` | *I don't have the power, you know?* |

::: tip
Those three are worth reading as a set — they are a deliberate joke about attempting to sieve something unsievable, escalating from bafflement to the sieve disclaiming responsibility. Seeing them means the control is working and the *material* is wrong.
:::

## Bread Knife — cuts what you are looking at

```
tooltips.bakeries.bread_knife = When using cut the object pointed by the target.
```

**The knife acts on your crosshair target**, not on an inventory slot. It has 5 recipes of its own type, so cutting is a real production step rather than a cosmetic action.

## Mould — long-press to release, with a knife equipped

```
tooltips.bakeries.mould = When the secondary weapon has a Knife long-pressing the right button can disengage it
```

Two conditions at once: **a knife in the secondary slot** *and* **a long right-click**. Neither alone releases the mould. There are two mould blocks (`mould`, `mould_two`).

## Toaster — left hand starts it

```
tooltips.bakeries.toaster_0 = Right-click with your left hand to start baking
tooltips.bakeries.toaster_1 = %s and right-click to retrieve the item
```

**Starting uses the left hand**; retrieval uses a key combination the tooltip fills in at runtime. Like the sieve, this is a deliberately off-hand-driven interaction.

## Drink — the Enjoy effect scales

```
tooltips.bakeries.drink = The Enjoy effect can be enhanced to a %s
tooltips.bakeries.shake = Right shake
```

Drinks apply an **Enjoy** effect whose strength can be raised — the tooltip substitutes the reachable level. `shake` ("Right shake") indicates a shaking interaction, presumably on a drink container.

## Eternal Baguette — it is a weapon

```
tooltips.bakeries.eternal_baguette = Impose a forced knock back and slow effect on Entity
```

**Forced knockback plus slowness.** In Literary Chinese it is **亙久芳司棍饢**. A bread mod with one joke weapon is a reasonable thing to have, and the tooltip is honest that it affects entities rather than being decorative.

## Eat versus Drink

```
tooltips.bakeries.repeat_eat_item_eat  = Eat
tooltips.bakeries.repeat_eat_item_drink = Drink
```

The mod distinguishes the two consumption verbs, and the key names (`repeat_eat_item_*`) suggest repeated consumption is handled explicitly — and it pairs with the list of easily-missed behaviours in [Languages and good to know](05_localization_and_technical_notes).

## Summary of non-obvious controls

| Tool | The part people get wrong |
|:---|:---|
| Flour Sieve | **Sieve in off hand**, material in main hand |
| Bread Knife | Acts on **crosshair target** |
| Mould | Needs **knife in secondary** *and* **long press** |
| Toaster | **Left hand** to start |
| Drink container | Right **shake** |

None of these are documented anywhere except the tooltips and the Patchouli book — which is, again, why the mod asks you to install Patchouli on login.

[Back to index](index)
