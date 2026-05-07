---
title: Enmity and Provoking
navigation:
  title: Enmity and Provoking
description: The enmity multiplier attribute, the Aggro Up effect, the Provoking Stick and the boss bar's aggro readout.
---

# Enmity and Provoking

This fight uses an **enmity (aggro) model** on top of vanilla targeting, exposed both as an attribute and as an effect.

## Enmity multiplier attribute

`lanfasie_benderson:enmity_multiplier` is a ranged attribute (translation key `attributes.lanfasie_benderson.enmity_multiplier`, "Enmity Multiplier") with:

- default **1.0**
- minimum **0.1**
- maximum **100**

The higher your multiplier, the more enmity your actions generate.

## Aggro Up

`lanfasie_benderson:aggro_up` is a **beneficial** effect ("Provoke"). It applies a modifier to the enmity multiplier attribute:

- modifier id `lanfasie_benderson:effect.aggro_up`
- amount **+10**, operation **ADD_VALUE**

So an affected player has an enmity multiplier of roughly 11 instead of 1 — a deliberate tank/taunt role.

The effect has its own icon item, `aggro_up_icon`.

## Provoking Stick

`provoking_stick` (2-tick use cooldown) is a **toggle**:

- Using it while you **do not** have Aggro Up applies Aggro Up with an **infinite duration** (amplifier 0, not ambient, no particles, but with an icon).
- Using it while you **already** have Aggro Up removes it through the effect-removal protector.
- **Dropping** the stick while Aggro Up is active also removes the effect.

Because the effect is applied with infinite duration, the stick is the intended way to hand the taunt role around mid-fight.

## Effect-removal protection

The mod includes a removal protector used by the Provoking Stick path (`grantAndRemove`). Its purpose is to make the mod's own removal of Aggro Up legitimate, as opposed to arbitrary external clearing. The mod additionally mixes into the vanilla effect commands.

## Boss bar

Benderson's boss bar is drawn with an enmity-aware drawer, and the string `text.lanfasie_benderson.enmity_bar.aggro` ("Aggro") labels the aggro readout, so players can see who currently holds the boss's attention.

## Vulnerability Up

`lanfasie_benderson:vulnerability_up` ("Vulnerability Up") is the paired **harmful** effect, raising incoming damage on the affected entity. It works together with the damage-gate attribute described in [Attributes and damage types](08_attributes_and_damage_types.md).

[Back to index](index)
