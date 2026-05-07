---
title: "Quests, home and daily life"
navigation:
  title: "04 Quests, home and daily life"
items:
  - girlfriends:watering_can
---

# Quests, home and daily life

## Quests

Two kinds exist:

| Type | |
|:---|:---|
| **Fixed Quest** | authored, specific |
| **Random Quest** | generated from a template |

Open **View Quest** from the interaction screen to see an **Objectives** list, then choose **Accept Quest** or **Think Again**. Completing one and handing it in with **Deliver Quest** prints *"Quest completed!"*.

::: warning
**Only Momo has quest content.** The data files bear this out plainly:

| Character | Fixed quests | Random templates |
|:---|---:|---:|
| **Momo** | **10** | **8** |
| Yuxi | 0 | 0 |
| Meishu | 0 | 0 |
| Wanying | 0 | 0 |
| Youruo | 0 | 0 |

Everything else is even across all five — gift preferences, gift quotes, schedules, blessings, pick-up lists all exist for each character. Quests are the one system that has been filled in for a single character only.

So if you want the quest half of this mod, summon Momo. The other four are complete as companions but have nothing to ask of you.
:::

Quests can be switched off server-wide, which produces *"Quests are disabled in this server"*.

## Inviting her home

This is the final relationship step and it has a precise, easily-missed requirement.

::: danger
**Your respawn point must be a double bed.**

The failure message says so directly: *"Failed to invite home. Please check if your respawn point is a double bed."* And if you have no respawn point at all: *"Please set your respawn point before inviting home."*

So the sequence is: place **two beds side by side**, sleep to set your spawn there, then use **Invite Home**. Success prints *"Successfully invited to live together!"* and the character reaches the **Home Partner** tier.

A single bed will not do, and neither will a respawn anchor.
:::

Home invitation can also be disabled server-side, giving *"Home invitation is not allowed in this server"*.

## Follow modes

Cycle the **Follow Mode** button through four states:

| Mode | Behaviour |
|:---|:---|
| **None** | no following behaviour |
| **Follow** | stays with you |
| **Stay** | holds position |
| **Home** | goes to and remains at home |

**Home** is the mode that pairs with the invitation above — once a character is a Home Partner, this is how you send her back rather than dragging her along.

Set **Stay** before you go somewhere dangerous. The characters notice hostiles and seek shelter, but they are player-sized companions rather than combatants.

## Daily schedules

Each of the five has a **schedule defined in data**, and this is the most interesting technical feature of the mod.

A schedule is a set of **keyframes over a 24,000-tick Overworld day**, driving an activity track for that character:

| Time (ticks) | Activity |
|:---|:---|
| 0 | morning |
| 2,000 | day work |
| 6,000 | afternoon |
| 11,000 | sunset |
| 13,000 | night rest |

So a character's behaviour depends on the time of day, not only on what you ask of her. Visiting Momo's garden in the morning and at sunset are different experiences by design.

All five schedules are separate files, so a datapack can retime any character — move her working hours, add keyframes, or give her a different rhythm entirely — without touching code.

## Confirming the relationship

**Confirm Relationship** is the step to the **Intimate** tier, printing *"Your relationship has deepened…"*. Like the other two milestone features it can be disabled server-side, which gives *"Relation binding is not allowed in this server"*.

All three toggles — quests, relationship binding, home invitation — are **on by default**, so a fresh install has everything available. See [05 Good to know](05_technical_notes).

## What happens on death

The mod has dedicated handling for character death rather than leaving it to vanilla. What that handling does is not something the data files establish, so it is noted here as present rather than described — but it means losing a companion is a case the author thought about.

[Back to index](index)
