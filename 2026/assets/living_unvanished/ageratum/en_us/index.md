---
title: Living Unvanished
navigation:
  title: Living Unvanished
items:
  - living_unvanished:identification_manual
---

# Living Unvanished（方生未逝）

Living Unvanished is a TeaCon 2026 entry by qyl27, mod id `living_unvanished`, group `dev.yuluo.mc`, version `1.0.0`, targeting Minecraft `[26.1,26.2)`.

It is about **extinction**. You brush remains out of suspicious ground, identify what you found, read the diaries of the people who watched two real animals disappear, and bring them back: the **Mauritius Blue Pigeon**, hunted out by the 1730s, and the **Thylacine**, whose last individual died in a zoo in 1936.

The writing is the heart of this mod. Six Leftover Pages tell the two extinctions in the voices of the people responsible, and the last thylacine page is a zoo notice that ends with a discount offer. Nothing in this guide improves on reading them in game.

## Requirements and licensing

**GeckoLib is a required dependency**, declared properly on both sides. Both animals are GeckoLib-animated; the mod will not load without it.

The license is **`All Rights Reserved`** — modpack redistribution needs the author's permission.

Its Minecraft range is **`[26.1,26.2)`**, a genuine range rather than a single pinned version.

## What is registered

| Registry | Entries |
|:---|:---|
| Entities | 2 — `mauritius_blue_pigeon`, `thylacine` |
| Blocks | 6 — three suspicious blocks, mud slurry, pigeon egg, restoration table |
| Items | 27 definitions — remains, leftover pages, manual, memoir, buckets, spawn egg |
| Menu | 1 — the Identification Manual |
| Damage type | 1 — `suffocate_in_mud` |
| Loot tables | 6 — 2 block, **4 identification tables** |
| Tags | 4 own, 2 vanilla |
| Mixins | 3 |
| **Recipes** | **none — there is no recipe directory at all** |
| Commands / config | none |

## Three things to know first

**Nothing is craftable.** There is no `recipe` directory in either the source or generated resources. Everything comes from digging, identification, or the creative tabs.

**The Restoration Table does nothing.** Its class is a bare block with a constructor and no behaviour — no block entity, no interaction, no menu. It is currently a decorative block, and it also has no loot table, so breaking it destroys it.

**There is no Thylacine spawn egg.** The Blue Pigeon has one; the Thylacine does not, despite both being fully registered with attributes, models and AI.

## Reading path

1. [01 Getting started](01_getting_started) — where everything comes from, and which tabs to look in.
2. [02 Excavation](02_excavation) — the three suspicious blocks, brushing, and mud slurry's lethal side.
3. [03 Identification](03_identification) — the manual, the four identification tables, and why luck matters.
4. [04 Leftover Pages](04_leftover_pages) — the six diaries and what they document.
5. [05 The two species](05_the_two_species) — the pigeon, the thylacine, and who hunts them.
6. [06 Good to know](06_technical_and_limits) — the Restoration Table is a shell, raiders hunt your pigeons, and what actually works.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `living_unvanished` / Living Unvanished, v1.0.0 |
| Author | qyl27 |
| License | **All Rights Reserved** |
| Minecraft | **`[26.1,26.2)`** — a real range |
| Required dependency | **GeckoLib** |
| Localization | English and Chinese, **41 keys each** |
