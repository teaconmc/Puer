---
title: "What Is Finished and What Is Not"
navigation:
  title: "06 Current State"
---

# What Is Finished and What Is Not

Astral Craft is an ambitious game with a lot built and some parts still open. This page tells you where the edges are, so you can plan a session around what works.

## What works today

| System | State |
|:---|:---|
| **The board** | All 22 square types are implemented and placeable |
| **Dice and movement** | Working, with branching paths |
| **Cards** | A large deck with grades, costs, targeting and real projectiles |
| **Battles** | Attacker/defender preparation and resolution |
| **Characters** | 32 defined, with health, skills, bonds and archives |
| **Skills** | Active and passive, with separate PVE and PVP cooldowns |
| **Chips** | Three rarity tiers with clear stat curves |
| **Outfits** | 58 skins across 6 rarities, with animation preview |
| **Card backs** | Selectable, visible to other players |
| **Quick phrases** | Working chat shortcuts |
| **Localization** | **English and Chinese are both complete** — the mod has roughly 1,850 translated strings per language and the two match exactly |

That is a substantial, playable party game.

## Three limits to know before a long session

::: warning
**1. The included board is a test loop, not a full map.**

Its own description says it is a minimal board graph for development testing, and that production maps should be built from structure templates instead.

**What this means for you:** you get a short circuit that demonstrates every square type — good for learning the game, not sized for an evening of play. If you want a real map, you or a pack author will need to build one.
:::

::: warning
**2. Twenty-six of the 32 characters have no unlock instructions.**

Five are unlocked by default (**Alana**, **Fanny**, **Komachi**, **Mimi**, **Parunan**) and **LingLing** tells you to find her through AstralCraft adventures. The other 26 show as **Locked** with an empty hint.

**What this means for you:** those characters are defined — they have stats, skills and outfits — but the game does not tell you how to obtain them. Play with the six that are reachable.
:::

::: warning
**3. The bond reward layer is not implemented.**

Bonds display a level (commonly up to 6), but the screen carries an explicit placeholder saying the space is reserved for friendship levels, gifts, contracts and contract rewards.

**What this means for you:** you can see a bond number, but there is nothing to spend it on yet. Do not build a session around gift-giving or contracts.
:::

## Only four characters have a Potential

The Potential system — an unlockable skill enhancement — is described for **Fen**, **Jill**, **Mimi** and **Z3000**. The other 28 characters have the tab but no potential defined.

**Mimi is the one to try**, since she is both unlocked by default and has a potential.

## Nothing is craftable

There are no recipes, no loot tables and no smelting for any Astral Craft item. Everything comes from the creative tab, `/give`, or from the board itself.

::: info
**For a party game this is a reasonable choice**, not an oversight — you would not want to grind for a board game. But it does mean **a survival server needs an operator to hand out the starting equipment**, and there is no progression path that gets you a projector by playing normally.
:::

## A realistic way to enjoy it now

1. **Play in Creative, or have an operator distribute equipment.**
2. **Pick from the six reachable characters** — try Mimi if you want to see the Potential system.
3. **Use the included board to learn the squares**, treating it as a tutorial circuit.
4. **Focus on cards and chips**, which are the most complete systems.
5. **Treat bonds as a display**, not a goal.

The board, the deck, the battles and the chip economy are all genuinely finished — that is a complete party game. The unlock and bond-reward layers around them are what is still being built.

[Back to index](index)
