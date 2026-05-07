---
title: Puncher Box and Technical Notes
navigation:
  title: Puncher Box and Technical Notes
description: Redstone-driven punching, its pitch ceiling, the two mixins, and packaging facts.
---

# Puncher Box and technical notes

## The Puncher Box punches by redstone

The Puncher Box holds a Note Grid and writes to it when a redstone signal **rises**. The signal strength is the instruction:

| Signal strength | Action |
|:---|:---|
| **1** | advance to the next beat **without punching** — a rest |
| **2 – 15** | advance to the next beat and punch note **strength − 2** |

So strength 2 punches pitch 0, strength 3 punches pitch 1, and so on. Use the **Awl** on the box to read its current position and state.

This turns composition into a redstone problem: a sequence of pulses at controlled strengths writes a melody automatically, and a comparator-driven loop can transcribe a repeating figure without a single manual click.

### The pitch ceiling is real

Redstone strength stops at 15, and 2 is the lowest punching value, so the Puncher Box can only reach **pitches 0 through 13**. The Note Grid supports **25** pitches.

**The top eleven pitches — 14 through 24 — cannot be punched by redstone at all.** Anything using them has to be finished by hand at the Perforation Table, or written in a book. This is an inherent consequence of the signal encoding rather than an oversight, but it is the first thing to plan around when designing an automatic composer.

## Mixins

Two, and both are purposeful — no empty scaffolding here.

| Mixin | Side | What it does |
|:---|:---|:---|
| `MixinMob` | both | an accessor exposing a mob's ambient sound, used by the sound-luring logic |
| `MixinSoundEngine` | client | **skips vanilla pitch calculation** for the mod's own sound instances |

That second one matters musically. Vanilla clamps note block pitch to its own two-octave range; by bypassing that calculation for its own sounds, the mod gets the **full 25 pitches across five octave offsets** to actually sound correct rather than being flattened at the extremes. The author documented the reason in the mixin itself.

## Data components

| Component | Carried by | Contents |
|:---|:---|:---|
| `cc_mb:notes` | Note Grid | the punched pattern |
| `cc_mb:tick_per_beat` | Awl, Music Box | tempo, 1–20 |
| `cc_mb:sound_info` | Sound Shard | the sound event plus an optional seed |

All three are persistent and network-synchronized, so everything survives storage, transfer and death drops.

## Two cauldron interactions

The mod registers behaviour on vanilla cauldrons, which is easy to miss:

| Cauldron | Item | Result |
|:---|:---|:---|
| **Water** | paper | 16 Paper Paste, lowers the cauldron |
| **Powder snow** | filled Sound Shard | erases the recorded sound |

## Packaging facts

| Concern | Value |
|:---|:---|
| Version | `0.5.4` |
| License | **GPL-3.0** |
| Minecraft | `26.1.2`, single pinned version |
| NeoForge | `26.1.2.36-beta` |
| Logo | `cc_mb.png`, present and correct |
| Commands | none |
| Config file | **none at all** — no config class, nothing to configure |
| Localization | English and Chinese, **42 keys each**, identical key sets |

A mod with no config is worth noting positively here: every tunable thing — tempo, octave, instrument, sound — is an in-world object you interact with, not a file you edit.

## Completeness check

For reference, since so much of this batch has gaps:

- **8 recipes for 8 registered items and blocks** — everything is craftable.
- **4 loot tables for 4 blocks** — everything drops itself.
- **8 advancements**, all recipe unlocks.
- **Zero orphaned translation keys.** The creative tab reuses the Music Box's own name key instead of declaring its own, so the usual `itemGroup` orphan cannot occur.
- **No unregistered content, no dead item classes, no missing textures.**

The one genuine limitation to document for players is the Puncher Box's pitch ceiling described above.

[Back to index](index)
