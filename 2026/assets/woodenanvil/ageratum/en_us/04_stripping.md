---
title: Stripping
navigation:
  title: Stripping
description: Converting a placed wooden anvil to its stripped form with an axe, and the sneak requirement that makes it non-obvious.
---

# Stripping

A placed wooden anvil can be stripped in the world, exactly like a log — but with one extra condition that is easy to miss.

## How to strip

Hold an axe, **sneak**, and right-click the anvil. It converts to its stripped counterpart, keeping its facing and its damage stage.

::: warning
**Sneaking is mandatory.** The check is `context.getPlayer().isSecondaryUseActive()`, so a plain right-click with an axe does **nothing** — it will not strip, and because the anvil is a functional anvil, a non-sneaking right-click **opens the anvil menu** instead. If stripping seems broken, you are almost certainly not sneaking.
:::

This differs from vanilla logs, where stripping needs no sneak. The sneak requirement exists precisely because a non-sneaking right-click already has a meaning here (opening the menu), so the two actions had to be separated.

## What is preserved

| Property | Preserved? |
|:---|:---|
| Facing | **Yes** — explicitly copied via `setValue(FACING, ...)` |
| Damage stage | **Yes** — each stage has its own stripping entry |
| Wood type | Yes |

So a chipped cherry anvil strips into a *chipped stripped cherry anvil*, not into a fresh one. Stripping is cosmetic; it neither repairs nor damages.

## One-way only

`STRIPPING_MAP` only maps normal → stripped. There is **no reverse entry**, so:

- You cannot un-strip an anvil.
- Axe-right-clicking an already-stripped anvil returns `null` from `getToolModifiedState`, which means nothing happens (and a non-sneaking click still just opens the menu).

If you want the bark back, break it and craft a new one from the appropriate recipe — see [Getting started](01_getting_started.md).

## Implementation note

The conversion is implemented through NeoForge's standard `getToolModifiedState` override, keyed on `ItemAbilities.AXE_STRIP`. That means it works with **any** item that carries the axe-strip ability, not just vanilla axes — modded axes get this for free. It also means the durability cost, sound and particles are whatever the vanilla stripping path applies; this mod does not customise them.

Stripping does **not** consume the anvil or drop anything; it is a pure state swap.

[Back to index](index)
