---
title: Grack
navigation:
  title: Grack
---

# Grack

Grack (namespace `grack`, MIT, v0.1) is a scripting-mod for Minecraft 26.1 / NeoForge that lets you run **Groovy** scripts from inside the game. It has no items, blocks, or entities of its own: everything it does happens through two commands, a data-pack script library, and one configuration option.

- On a **server**, data-pack scripts under `data/grack/script/` are loaded into a script library and can be run with `/gscript`.
- On the **client** (single-player dev builds), Groovy expressions can be evaluated directly with `/geval`.

Grack is built on top of the [Groovy](https://groovy-lang.org/) scripting language.

## Reading guide

- [01 Overview](01_overview.md) — what Grack does, its registries and how scripts are organised.
- [02 Server scripts](02_server_scripts.md) — the `/gscript` command and the data-pack script library.
- [03 Client evaluation](03_client_eval.md) — the `/geval` command for client-side Groovy evaluation.
- [04 Configuration](04_configuration.md) — the `exhibitionMode` option, config screen and languages.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `grack` / Grack, by cn.maxpixel.mods, MIT, v0.1 |
| Version target | Minecraft 26.1.2 / NeoForge 26.1.2.76 |
| Items / blocks / entities | None — a command-and-script mod |
| Command argument type | `grack:gscript` (custom Groovy-script argument) |
| Server command | `/gscript <script> [<arguments>]` |
| Client command | `/geval <expression> [<arguments>]` |
| Script library | Data pack `data/grack/script/*.groovy` |
| Configuration | `exhibitionMode` (boolean, default `false`) |

This guide is read in both languages; it mirrors the mod's own `en_us` / `zh_cn` translations.

[Back to top](#grack)
