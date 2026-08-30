---
title: "Affection and gifts"
navigation:
  title: "03 Affection and gifts"
items:
  - girlfriends:pink_ribbon
---

# Affection and gifts

## The six tiers

Affection is tracked per player per character and reads out as a named tier:

| Tier | |
|:---|:---|
| Stranger | starting point |
| Familiar | |
| Trust | |
| Affection | |
| Intimate | reached by **Confirm Relationship** |
| **Home Partner** | reached by **Invite Home** |

The last two are not passive thresholds — they are actions you take from the interaction screen. Reaching Intimate prints *"Your relationship has deepened…"*, and becoming a Home Partner requires the specific setup described in [04 Quests, home and daily life](04_quests_home_and_daily_life).

## Five gift outcomes

Every gift lands in one of five categories, and each reports the affection change:

| Outcome | Message |
|:---|:---|
| **Favorite** | a dedicated per-item response |
| **Liked** | *"… accepted your gift, affection +N"* |
| **Accepted** | polite acceptance |
| **Rejected** | *"… isn't interested in this gift…"* |
| **Disliked** | *"It seems that … doesn't like your gift, affection −N"* |

**Disliked gifts lower affection**, so gifting is not a one-way ratchet. The distinction between *rejected* and *disliked* matters: rejection is neutral disinterest, dislike is an actual penalty.

## Favourites are per item, not per category

A favourite is recorded against a **specific item**, with **three separate quotes** so repeat gifts do not read identically. Confirmed examples:

- Momo — **honeycomb** and **bouquet**
- Yuxi — **nautilus shell**

The quotes are written in character rather than generic. Momo's bouquet responses run from *"You picked each flower carefully, didn't you?"* to *"This bouquet will never wither — because it's from you."* There are **133 gift-quote entries** in the language file, which makes gifting comfortably the most-written part of the mod.

## The daily cap

::: warning
**Each character accepts a limited number of gifts per day.** Once the cap is reached you get *"… doesn't want any more gifts today…"* and further gifts do nothing.

This is the single most important pacing fact in the mod: affection cannot be rushed by emptying a chest of bouquets into one character. Plan on raising a relationship over several in-game days.
:::

A separate refusal, *"Unable to give gift to …"*, covers cases where gifting is not permitted at all rather than merely exhausted for the day.

## Voice lines accompany gifts

Each gift response can play a voice line. The system is well built: voice events are keyed to match the quote — a favourite bouquet response from Momo plays the sound registered for that exact quote — and the server tells the client which line to play rather than the client guessing.

::: info
**The audio is Chinese only, but the subtitles are translated.**

All 103 voice files sit under a `zh_cn` directory, and the sound event names themselves contain `zh_cn`. The structure is clearly built to hold more languages, but only Chinese has been recorded.

Subtitles are a separate matter and handled properly: they use real translation keys, so an English client with subtitles on reads *"Momo — favourite"* style captions over Chinese audio. Twenty-five subtitle keys cover the situations.
:::

## Ribbons and the watering can

The four ribbons are gathered under their own item tag, which suggests they are handled as a group rather than individually. They stack to 16, unlike the single-item bouquet and watering can.

The watering can carries a **water level component**, and the mod ships a `grass_to_weed` block tag listing grass, ferns, bushes, leaf litter and nether sprouts. Read together, those two point at a gardening interaction around Momo's theme — but the exact behaviour is not something the data files alone establish, so treat the connection as suggestive rather than confirmed.

## Checking affection directly

Operators can inspect and adjust affection with a command that reports, sets and adds values, and refuses politely if you point it at something that is not one of the five characters. It **requires gamemaster permission** — see [05 Good to know](05_technical_notes).

[Back to index](index)
