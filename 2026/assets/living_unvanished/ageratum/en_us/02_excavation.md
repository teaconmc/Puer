---
title: Excavation
navigation:
  title: Excavation
description: Three suspicious blocks, what each turns into, and the mud that can kill you.
---

# Excavation

## Three suspicious blocks

The mod extends vanilla's brushing archaeology with three new suspicious blocks. All three are brushed with an ordinary brush and all three are destroyed by pistons.

| Block | Brush sound | Turns into when brushed out | Strength |
|:---|:---|:---|--:|
| **Suspicious Mud** | mud | **Mud** | 0.25 |
| **Suspicious Red Sand** | brush sand | **Red Sand** | 0.25 |
| **Suspicious Rotten Wood** | wood | **Air** | 0.20 |

Two details set them apart from vanilla suspicious sand and gravel:

**Suspicious Rotten Wood turns into nothing.** Where the other two leave behind an ordinary block, rotten wood leaves **air** — it crumbles away completely. Plan for a hole where it stood.

**Suspicious Rotten Wood has an axis.** It is a rotated pillar block, so it orients like a log along whichever face you place it against, and it renders accordingly. It is the only suspicious block in the game with an orientation.

All three use the snare note-block instrument, which is a small consistent touch matching vanilla suspicious blocks.

None of the three has a block loot table, so — as with vanilla suspicious blocks — **breaking one instead of brushing it destroys the find**. Always brush.

## Mud Slurry

`mud_slurry` is the mod's hazard block. Its properties are deliberately unlike a normal solid:

- **dynamic shape** and **non-occluding**
- **not a redstone conductor**
- strength 0.5, mud sounds

You obtain and place it with the **Mud Slurry Bucket**, which is a solid-bucket item exactly like the vanilla powder snow bucket — one per stack, placed by using it on a block.

### It suffocates

The mod registers a **custom damage type**, `suffocate_in_mud`, with two death messages:

> `<player> suffocated in mud slurry`
>
> `<player> suffocated in mud slurry while trying to escape <attacker>`

The second variant is the standard vanilla pattern for a death caused while fleeing, which means the mud is a genuine environmental hazard that combat can push you into, not merely a trap you walk into by yourself.

Suffocation is driven by a data attachment on the entity plus an event listener, so the state persists correctly rather than being recomputed from scratch each tick.

Treat mud slurry the way you treat powder snow: useful as a trap or an obstacle, dangerous to place carelessly near your own paths.

## The Pigeon Egg block

`mauritius_blue_pigeon_egg` is a placeable egg block with a block entity — the pigeon's nest and the route to new pigeons.

Its loot table has one condition that is easy to lose an egg to:

> **It only drops itself when broken with Silk Touch.**

Without Silk Touch the block yields **nothing at all**. If you find or breed an egg and want to relocate it, bring an enchanted tool.

The block is non-occluding, forced solid on top, strength 0.5 with metal sounds, and is destroyed by pistons.

## Digging by proxy

Two block tags exist specifically for the Blue Pigeon:

| Tag | Purpose |
|:---|:---|
| `#living_unvanished:mauritius_blue_pigeon_seed_diggables` | blocks a pigeon will dig seeds from |
| `#living_unvanished:mauritius_blue_pigeon_suspicious_diggables` | suspicious blocks a pigeon will dig |

A tamed Blue Pigeon has a dedicated dig behaviour, which means **the bird can excavate for you**. That is the mod's most charming loop: the animal you rescued from extinction helps you find the remains of the next one. See [05 The two species](05_the_two_species).

## Tool tags

The mod contributes to two vanilla mining tags — `mineable/axe` and `mineable/shovel` — so its blocks break with the tools you would expect from their materials.

[Back to index](index)
