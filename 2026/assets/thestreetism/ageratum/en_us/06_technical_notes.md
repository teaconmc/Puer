---
title: For Server Owners
navigation:
  title: "06 For Server Owners"
---

# For Server Owners

Three behaviours here are worth deciding about **before** you open a server with this mod.

## ⚠️ The street-art command has no permission requirement

::: danger
**Every subcommand of `/thestreetism` is available to every player.** Nothing is restricted to operators.

Two consequences in particular:

- `spraycan remote` lets any player point the spray can at an **arbitrary URL** as its pattern source.
- `spraysize` has a lower size bound but **no upper bound** — a player can set a graffiti large enough to cover a building.

If either of those does not suit your community, there is currently no built-in way to restrict them.
:::

## ⚠️ Graffiti and banners have no protection

::: danger
**Ownership is recorded but never enforced.**

Both graffiti and banners remember who created them — and then nothing checks that against whoever acts on the entity later. Anyone can remove or alter anyone's work.

The Paint Scraper in particular removes any graffiti or banner regardless of owner and drops nothing, so removal is instant and silent.

**If you want builds or artwork protected, that protection has to come from outside this mod** — claims plugins, land protection, or trust rules among your players.
:::

## The 50 built-in patterns are not in the build

The mod advertises fifty built-in graffiti patterns, but **none of them ship** — the texture folder contains only error and preview images.

It degrades rather than crashes: players see the fallback texture instead of a pattern. But do not advertise a pattern library that is not actually there.

## One command speaks Chinese on every client

Four command responses (the "hold the spray can" warning, pattern and size confirmations, and the pattern list) are **hardcoded Chinese**, so English clients see Chinese for exactly those messages.

Everything else is fully translated in both languages.

## It needs Kotlin for Forge

The mod is written entirely in Kotlin, so **Kotlin for Forge must be installed** alongside it. Without it the mod will not load.

## Version note

The current build's version string carries a `-debug` suffix — treat it as a development snapshot rather than a finished release when planning around it.

## Summary

| Thing | Status |
|:---|:---|
| Command permissions | ⚠️ **None — every player gets every subcommand** |
| Remote URL patterns | Available to all players |
| Graffiti size cap | **None** |
| Ownership protection | ⚠️ **Recorded but never enforced** |
| Built-in patterns | ⚠️ **Not shipped** |
| Kotlin for Forge | **Required** |
| Licence | MIT |
| English / Chinese | Complete apart from four command messages |

[Back to index](index)
