---
title: Configuration
navigation:
  title: Configuration
---

# Configuration

Grack exposes a single configuration entry, registered as a **COMMON** config (`ModConfig.Type.COMMON`).

## `exhibitionMode`

| Option | Type | Default |
|:---|:---|:---|
| `exhibitionMode` | boolean | `false` |

**Exhibition Mode**（展会模式）is the only option. Its comment reads *"Whether to enable the exhibition mode"*. Currently it is a declared config flag; the source includes it mainly as the demonstration config value. Toggle it under the **Grack 配置 / Grack Configs** screen.

## Config screen

The client class `GrackModClient` registers a NeoForge **ConfigurationScreen** as the config-screen factory for the mod, so you can edit `exhibitionMode` from the Mods screen → Grack → Config rather than editing the TOML by hand.

## Languages

Grack ships translations in both `en_us` and `zh_cn`. In Chinese the mod labels are: *Grack 配置*（configs）and *展会模式*（Exhibition Mode）.

[Back to index](index)
