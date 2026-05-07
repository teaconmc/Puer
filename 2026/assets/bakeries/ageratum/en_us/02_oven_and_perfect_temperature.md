---
title: The Oven and Perfect Temperature
navigation:
  title: 02 Oven and Perfect Temperature
---

# The Oven and Perfect Temperature

This is the mechanic the whole mod is built around, and it is worth understanding before you bake anything.

## The oven is controlled with the mouse wheel

Open an oven and the screen tells you two things:

```
container.bakeries.oven.temperature = Current temperature
container.bakeries.oven.rolling     = Scroll the middle mouse to adjust the temperature.
```

**Temperature is a continuous setting you dial in with the scroll wheel**, not a fuel level and not a fixed duration. The oven displays the current value while you adjust it.

::: info
This is why the mod is not simply "a fancier furnace". A furnace has one behaviour; this oven has a range, and the same dough gives different results depending on where in that range you put it.
:::

## Recipes declare a minimum temperature

Item tooltips carry the requirement:

```
tooltips.bakeries.row_item_temperature = Min %s °c
```

So each bakeable has a floor — bake below it and you do not get the intended result. That floor is the easy half of the mechanic.

## Perfect Temperature is the hard half, and it has a real reward

Beyond merely meeting the minimum, hitting the right band produces food carrying a **Perfect Temperature** entry:

```
tooltips.bakeries.pile_item_perfect = Perfect Temperature
```

And the guide states plainly what that entry does:

::: tip
**"Food with a Perfect Temperature entry can be eaten even when you are not hungry."**

That is a genuine mechanical benefit, not a cosmetic label. Ordinary food is refused at full hunger; Perfect Temperature food is not. It turns careful baking into **stockpiling usable healing** rather than just making nicer-looking bread.
:::

## Two advancements track it

| Advancement | Description |
|:---|:---|
| **Precise Temperature Control** | *"In the oven"* |
| **Perfect Temperature** | *"With a more precise temperature, the food will be more delicious."* |

The pairing is the intended learning curve: first learn that the oven has a temperature at all, then learn to land it precisely.

## How to actually hit it

The mod does not print the target band in the tooltip — only the minimum. The band itself is book content, which is the concrete reason the login message insists on Patchouli.

Practically:

1. Read the entry for the item you are baking in the **Baking Guide**.
2. Scroll to the stated temperature before inserting.
3. Check the output tooltip for the **Perfect Temperature** line.
4. If it is absent, you met the minimum but missed the band — adjust and retry.

::: warning
**The minimum and the perfect band are two different numbers.** `Min %s °c` on the tooltip is only the floor. Baking at exactly the minimum reliably produces the item and reliably does *not* produce the Perfect Temperature entry. Anyone who reads only the tooltip will conclude the mechanic does not work.
:::

## Why the guide has a category for it

The book has a dedicated category:

```
guide.bakeries.categories.perfect_temperature = §6Perfect Temperature
```

Gold-coloured (`§6`), separate from the ordinary recipe categories — the authors treated it as the headline feature, and these pages agree.

[Back to index](index)
