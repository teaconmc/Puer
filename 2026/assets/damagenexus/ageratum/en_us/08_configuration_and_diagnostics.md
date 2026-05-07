---
title: Configuration and Diagnostics
navigation:
  title: Configuration and Diagnostics
description: Every config section, the diagnostic domains, command gating and the known rough edges.
---

# Configuration and diagnostics

Damage Nexus registers a single **`COMMON`** config spec with five sections. Values are baked during common setup and re-baked when the config file loads or reloads.

## Developer

| Key | Default | Meaning |
|:---|:---|:---|
| `testCommandsEnabled` | `false` | Registers the test/item/damage/bypass command branches |
| `strictProcessorErrors` | `false` | Fail loudly on malformed processors |
| `strictRuleErrors` | `false` | Fail loudly on malformed rules |

## Diagnostics

| Key | Default | Meaning |
|:---|:---|:---|
| `configuredMode` | `OFF` | The diagnostic domain |
| `debugMode` | `false` | Registers the mob/effect/attribute/forward/cleanup command branches |
| `postDamageDiagnostics` | `false` | Legacy switch feeding the domain |
| `serverLogVerbosity` | `WARNINGS_ONLY` | Server-side log level |
| `clientForwardMode` | `OFF` | Whether server logs are forwarded to clients |
| `clientForwardVerbosity` | `WARNINGS_ONLY` | Forwarded log level |
| `clientForwardMaxLinesPerTick` | `20` | Forwarding rate cap |
| `clientForwardRequireReceiverOptIn` | `true` | Clients must opt in to receive |

The **diagnostic domain** has four levels, each a superset of the last:

| Domain | Emits |
|:---|:---|
| `OFF` | warnings and lifecycle only |
| `COMPATIBILITY` | + compatibility diagnostics and transaction tracking |
| `SUMMARY` | + per-hit trace summaries |
| `FULL_TRACE` | + full per-hit detail |

Warnings and lifecycle messages are **always** emitted regardless of domain — they cannot be silenced by lowering the level.

### The domain is a maximum of two paths

The effective domain is `max(configuredMode, legacy-derived-domain)`, where the legacy value is computed from `postDamageDiagnostics`, `debugMode`, `serverLogVerbosity` and `clientForwardMode`. Two consequences:

- **You cannot lower the domain by setting `configuredMode` alone.** If `debugMode` is on with `serverLogVerbosity = FULL`, the derived domain is `FULL_TRACE` and setting `configuredMode = OFF` will not reduce it. Turn the legacy switches down as well.
- **`postDamageDiagnostics` does not gate itself.** Its own accessor resolves to the transaction-tracking check, which resolves to "is the domain at least `COMPATIBILITY`". Enabling the flag raises the domain to `COMPATIBILITY`, which then satisfies the check — but raising the domain by any other route enables post-damage diagnostics too, whether or not this flag is set.

## Tooltips

One key, `debugLevel`, defaulting to `OFF`. The four levels are described in [06 Affixes and entries](06_affixes_and_entries.md).

## Combat formulas

| Key | Default |
|:---|---:|
| `asymptoticKValue` | `15.0` |
| `resistanceKValue` | `50.0` |
| `ratingPerProtScore` | `3.5` |

## Vanilla compatibility

`mode` plus four suppression booleans — fully described in [07 How it changes damage](07_vanilla_compatibility.md). Note the booleans are ignored unless the mode is set to Configurable.

## Commands

The command tree is **not registered at all** unless `debugMode` or `testCommandsEnabled` is true. On a default install `/damagenexus` does not exist.

Which branches appear depends on which flag is set:

| Flag | Branches registered |
|:---|:---|
| `testCommandsEnabled` | test, item, damage, bypass |
| `debugMode` | mob, effect, attribute, debug-forward, cleanup |

Both flags can be on together, giving the full tree. Because registration happens on the command-registration event, **turning a flag on requires the command registration to run again** — a world reload or server restart — before the command appears.

## Startup self-check

During common setup the mod runs a startup self-check after freezing its registries and bootstrapping the rule providers, then logs a lifecycle line reporting the active diagnostic domain, debug mode, test-command state and the number of pre-multiplier buckets. That line is your quickest confirmation that the configuration you intended is the configuration that loaded — and it is emitted at lifecycle level, so it appears even with diagnostics `OFF`.

## Known rough edges

- **Only one attribute name is translated, in one language.** `attribute.name.damagenexus.thorns` exists in `en_us.json` only. The other 24 attributes have no translation in either file, and `thorns` has none in Chinese — so English clients show 24 raw keys and Chinese clients show 25. See [04 Attributes](04_attributes.md).
- **`zh_cn.json` is missing 23 of the 217 keys in `en_us.json`** — the thorns attribute name plus 22 test entry/affix names. No key exists only in Chinese, so the gap is one-directional and falls back to English.
- **The `bypasses_damagenexus` tag ships with no file**, so the documented bypass mechanism is inert until a datapack creates it. See [07 How it changes damage](07_vanilla_compatibility.md).
- **`damagenexus:spear_charge` exists twice and works neither way** — as an empty tag file nothing references, and as a damage type id referenced by `is_spear_charge` that the mod never defines. Both are harmless because the reference is optional. See [02 Damage channels](02_damage_channels.md).
- **`is_mace_smash` has no translation and no API constant**, unlike every other `is_*` damage-type tag.
- **The four `rawSuppress*` booleans are dead unless the mode is `CONFIGURABLE`.**
- **The `physical` channel ignores `resistance_physical`** even though that attribute is registered.
- **`vulnerable_damage_additive` defaults to `0.20`, not `0.0`.**
- The mod ships **unit tests** (pipeline, lifecycle, context mutations, damage source policy, channel registry, transaction tracker) — unusual for this batch, and a good sign the pipeline semantics are pinned down.

[Back to index](index)
