---
title: "Technical notes"
navigation:
  title: "04 Technical notes"
---

# Technical notes

Reference material and known issues, all read from the current source.

## Registries

The mod registers exactly one thing: the key mapping `key.autosprint.auto_run`, under the key category `autosprint:category`.

There are **no** items, blocks, block entities, entities, menus, recipes, loot tables, advancements, commands, creative tabs, sounds, particles, network payloads, data attachments, or mixins. Everything happens in a single client-tick handler.

## Known issue: the language files are in the wrong namespace

This is the most important thing to know about the current build.

The mod's translations ship at `assets/autorun/lang/*.json`, but the mod ID is `autosprint`. Minecraft loads language files by namespace, so **files under `autorun` are never matched to this mod**. The practical consequence is that every translation key falls back to its raw form:

| What you should see | What you actually see |
|:---|:---|
| The key's name in Controls | `key.autosprint.auto_run` |
| The key category header | `key.category.autosprint.category` |
| Config screen labels | `autosprint.configuration.autoSprint`, etc. |
| Toggle hint messages | `autosprint.custom_message.on.3`, etc. |

The mod still functions correctly — only the display text is affected. Fixing it means renaming the asset folder from `autorun` to `autosprint`; the keys inside the files are already correct.

Five locales are provided and all are affected equally: `en_us`, `zh_cn`, `zh_tw`, `zh_hk`, and `lzh` (Literary Chinese).

## Input handling reads physical keys

The toggle key itself uses the normal key-mapping click queue, so it respects the in-game conflict context. But the forward, back, and sprint keys are detected by polling the OS window directly for the raw key state, rather than by asking Minecraft whether the binding is active.

Two consequences follow:

- **Screen focus is not considered** for those three keys. Their press edges are read from hardware state, so behaviour can differ from what you would expect while a screen is open.
- **Only keyboard bindings are polled correctly.** The poll asks for a keyboard key by its code. If you have bound forward, back, or sprint to a mouse button, that code is a mouse-button code and the query will not report it meaningfully — so the W-handover and sprint-toggle shortcuts may not respond.

If auto-move seems to ignore your forward or sprint key, check whether that action is bound to a mouse button.

## Documentation discrepancies

| Source | Claim | Actual |
|:---|:---|:---|
| README | Default key is "Mouse-4" | The code binds mouse button 5 |
| Source comment | An `autoJump` option | Commented out; no auto-jump exists |

The in-game control list and config screen reflect the code, which is authoritative.

## Metadata

| Field | Value |
|:---|:---|
| Mod ID | `autosprint` (gradle `mod_id` and the `@Mod` constant agree) |
| Version | `0.org-itk.0.1` — not a standard semantic version |
| License | CC0 |
| Author | luoxueyasha |
| NeoForge target | 26.1.2.55-beta |
| Dependencies | `neoforge` and `minecraft` only, both required |

The mod metadata file is a build template, so the values above are substituted at build time from `gradle.properties`.

Note that both dependency entries declare side `BOTH` even though the mod itself is client-only; this is harmless because the mod class is client-gated.

The client-setup handler logs a song title on startup — a harmless easter egg, not an error.

[Back to index](index)
