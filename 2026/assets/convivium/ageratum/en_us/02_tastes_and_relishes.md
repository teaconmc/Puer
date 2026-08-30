---
title: Tastes and Relishes
navigation:
  title: 02 Tastes and Relishes
---

# Tastes and Relishes

Two systems sit under everything: **five taste axes** that describe a drink numerically, and **six relishes** that describe its character. Recipes are matched on relishes; tastes are what you read and adjust.

## The five tastes

Every beverage carries five values, and the tooltip shows them as compact abbreviations:

| Taste | Full key | Tooltip shows |
|:---|:---|:---|
| Sweetness | `taste.convivium.sweetness` | `%sSw` |
| Astringency | `taste.convivium.astringency` | `%sAs` |
| Pungency | `taste.convivium.pungency` | `%sPu` |
| Thickness | `taste.convivium.thickness` | `%sTh` |
| Soothingness | `taste.convivium.soothingness` | **`%sRo`** |

::: info
**Note the last abbreviation.** Four of the five follow the first two letters of the word — Sw, As, Pu, Th — but soothingness renders as **`Ro`**, not `So`. That is what the language file says, so it is what you will see on the tooltip. Treat it as the intended abbreviation for this taste rather than assuming a typo in your reading.
:::

The tastes are why the mod has a **whisk**: the string `gui.convivium.whisk.requires_taste` reads *"Adjustment required:"*, so the whisk is the tool that moves a drink's taste values toward what a recipe wants.

## The six relishes

A relish is a character tag on a drink. There are six plus a `none` state, and **the internal id and the displayed name are completely different** — the ids are functional English, the names are Roman deities:

| Internal id | Displayed name | Deity's domain |
|:---|:---|:---|
| `wine` | **Liber** | Wine and freedom |
| `bath` | **Minerva** | Wisdom and crafts |
| `cereal` | **Ceres** | Grain and harvest |
| `hearth` | **Vesta** | The hearth |
| `seasons` | **Vertumnus** | Seasons and change |
| `fire` | **Vulcanus** | Fire and the forge |
| `none` | None | — |

::: warning
**You will meet both naming layers, and they never appear together.** In game the tooltip and GUI show the deity names — *Active Relish: [Liber]*. In recipe files, datapacks and JEI internals the ids are `wine`, `bath`, `cereal`, `hearth`, `seasons`, `fire`.

So a recipe requiring `hearth` and `seasons` is, on screen, a drink of **Vesta and Vertumnus**. When reading this mod's recipes or writing a datapack, use the ids; when telling another player what to brew, use the names.
:::

## One or two relishes at a time

The tooltip has two forms, and that tells you the cap:

```
tooltip.convivium.major_relish_1 = Active Relish: [%s]
tooltip.convivium.major_relish_2 = Active Relishes: [%s, %s]
```

There is a singular form and a two-slot plural form — **no three-relish string exists**. A drink therefore carries at most **two** active relishes, which is what makes relish combinations a meaningful design space rather than a checklist.

## Where relishes come from

Two recipe types produce them:

| Type | Count | Role |
|:---|---:|:---|
| `convivium:relish` | 7 | Produces a relish |
| `convivium:relish_fluid` | 10 | Produces a relish-bearing fluid |

Seven relish recipes for six relishes is close to one apiece — this is a small, deliberate set rather than a large crafting tree.

## Why this matters before you brew

A beverage recipe does not ask for a list of ingredients in slots. It asks **which relishes are present**, using a condition tree — and only then does it produce a drink whose tastes you may still need to adjust.

That is the subject of [Beverages and recipes](03_beverages_and_recipes).

[Back to index](index)
