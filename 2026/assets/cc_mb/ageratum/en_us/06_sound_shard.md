---
title: Sound Shards
navigation:
  title: Sound Shards
description: Record any sound in the game, replay it as an instrument, and lure mobs with it.
---

# Sound Shards

The Sound Shard is the most interesting item in the mod. It **records a sound that is playing near you** and stores it, so any sound in the game can become a Music Box instrument.

## Recording

A freshly crafted shard is empty. Using it starts **listening mode**:

- You raise the shard with the **bow-drawing animation** and hold it for up to **30 seconds**.
- While listening, every sound the shard picks up is shown on your action bar **in gold**, live. You can hear-and-see what it is catching before committing.
- **Release** to keep the last sound. It is confirmed **in dark green** and written onto the shard.

A shard that holds a sound **glows like an enchanted item**, so a full shard is obvious at a glance. Its tooltip names the captured sound in dark green.

## The cooldown, and the enchantment trick

Every use puts the shard on a **55-tick cooldown**. That cooldown is **reduced by 10 ticks for each level of Efficiency** on the shard, capped at level 5.

So an **Efficiency V Sound Shard has only a 5-tick cooldown** — practically instant. Enchanting what looks like a simple utility item is a real and completely undocumented optimisation; if you plan to record a lot of sounds, or to use a shard as a hand instrument, this is the upgrade to make.

## Replaying, and the die symbol

Using a filled shard plays its sound. Two things happen alongside:

- It fires the vanilla **instrument-play game event**, so **sculk sensors hear it**.
- **Nearby mobs listen** — see below.

The tooltip may end with a **`⚄`** die glyph. That means the shard has **no fixed sound seed**, so the pitch varies randomly on each play. A shard with a fixed seed sounds identical every time. Which you want depends on the job: fixed for music, random for ambience.

## Erasing and re-rolling

| Action | Requirement | Result |
|:---|:---|:---|
| Use on a **powder snow cauldron** | any mode | **erases** the sound, lowers the cauldron, powder-snow sound |
| **Sneak** + use | creative only | **re-rolls** the sound seed and plays it with the new one |
| Use from the **off hand** | creative only | **erases** the sound |

The powder snow cauldron is the survival route — worth knowing, because there is no other way to clear a shard without creative mode.

## The Sound Box

A shard on its own is a handheld noisemaker. To make it an instrument, put it in a **Sound Box**.

| State | Meaning |
|:---|:---|
| `has_sound_shard` | a shard is loaded |
| `powered` | redstone signal present |

- Use a shard on an empty box to insert it. If the shard has **no sound**, the box refuses it with a red **"The shard doesn't have a sound"**.
- **Sneak** + use to take the shard back out.
- The box plays when **powered**, when **left-clicked**, or when **used** — with one crucial exception.

**The exception: a Sound Box directly underneath a Music Box goes silent on its own.** All three of those trigger paths check whether a Music Box sits above, and skip playing if one does. That is deliberate — when it is under a Music Box, the Music Box drives it as an instrument, and letting it also self-trigger would double every note.

So the Sound Box has two distinct roles depending on placement:

| Placement | Role |
|:---|:---|
| Anywhere | a redstone-triggerable sound player |
| **Directly under a Music Box** | the Music Box's instrument |

## Lightning re-rolls the seed

If a loaded Sound Box is next to a **powered lightning rod pointing at it**, the box's sound seed is re-rolled and an electric-spark effect plays.

This is a survival-accessible way to vary a sound without creative mode, and a lovely piece of design: a thunderstorm literally retunes your instrument.

## Luring mobs with sound

Whenever a shard's sound plays, every **pathfinding mob within about 8 blocks** is given a chance to react. The built-in behaviour is simple and specific:

> If the played sound **is that mob's own ambient sound**, and the mob is not already walking somewhere, and it is not a sitting tamed animal, then **the mob paths toward the source**.

In other words: record a cow's moo, play it, and **cows walk to you**. Record a villager's idle sound and villagers come. It is a sound-based lure built out of nothing but ambient sound matching.

Two conditions are easy to trip over: a mob already navigating somewhere ignores the call, and **a sitting tamed wolf or cat will not come** — sitting is respected.

The listener list is a public, extensible collection, so addons can register additional reactions beyond the ambient-sound one.

[Back to index](index)
