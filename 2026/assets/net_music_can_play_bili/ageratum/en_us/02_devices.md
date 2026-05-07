---
title: Devices
navigation:
  title: Devices
description: All four blocks and ten items, and which of them you can lose forever.
---

# Devices

## The four blocks

| Block | Id | Role |
|:---|:---|:---|
| **Modern Turntable** | `modern_turntable` | plays a disc; the addon's own player |
| **Speaker** | `speaker` | relays audio from a source to fill a space |
| **Video Projector** | `video_projector` | projects video, not just audio |
| **Lyric Projector** | `lyric_projector` | displays lyrics sourced from Bilibili subtitles |

All four have block entities, and all four synchronise state to clients through a shared synced-block-entity base.

### Two of them cannot be recovered

| Block | Loot table |
|:---|:---|
| `modern_turntable` | ✔ drops itself |
| `video_projector` | ✔ drops itself |
| **`speaker`** | ✘ **none — destroyed when broken** |
| **`lyric_projector`** | ✘ **none — destroyed when broken** |

This holds in creative as well as survival. Place speakers and lyric projectors where you mean to keep them.

## The ten items

Four are block items for the blocks above. The other six are the interesting half.

### MP4 — `mp4`

A handheld media player. It has its own playback control, its own timeline synchronisation, a device identity so the server can track which unit is which, and saved playback state that survives a session.

It renders **video in your hand**, which is why the mod carries a video JNI bridge and dedicated render layers. See [05 Video and projectors](05_video_and_projectors).

### Pad — `pad`

A tablet. It stores a document containing up to **64 media entries** and up to **128 trigger points**, plus map settings, and it can be **published** so others can read it. Documents can be **locked** against further editing.

This is the largest single feature in the mod and has its own page: [06 The Pad](06_the_pad).

### Invisible Headphones — `invisible_headphones`

Private listening. Audio plays for you and not for everyone nearby. "Invisible" is literal — they do not render on your head.

### Cat Headphones — `cat_headphones`

A second headphones variant registered from the same item class, so it behaves identically and differs cosmetically.

### Holographic Glasses — `holographic_glasses`

A wearable display. They carry their own screen settings, can be configured through a dedicated keybind, and can hold a number of linked MP4 devices — the interface reports both a linked count and a "slots full" state.

### Media Management Tool — `media_management_tool`

The administration item. It drives two menus:

| Menu | Purpose |
|:---|:---|
| **Binding** | link a device to a source, confirm or clear the binding |
| **Report** | inspect what is bound and what is playing |

Binding is a server-side service with its own cleanup pass, so links do not accumulate as stale references when devices are destroyed.

## Wearables are attribute- and enchantment-driven

Two **attributes** are registered — `headphones` and `holographic_glasses` — and two matching **enchantments**.

The enchantments are placed in the vanilla `in_enchanting_table` and `non_treasure` tags, which means they are **obtainable from an ordinary enchanting table** rather than being loot-only. Each has its own enchantable-item tag, so the game knows which item accepts which enchantment.

With **Curios** installed, an item tag contributes the headphones and glasses to a **head slot**, and a Curios entity file enables those slots for players. Without Curios they still function; you simply hold or otherwise equip them by the mod's own means.

## Linking devices together

A dedicated link layer keeps track of what is connected to what: audio link data with an index, a registry of links on the client, and a record of which media items a player currently has equipped. Two ability types — headphone and holographic-glasses — describe what an equipped item can do.

This is what allows a speaker wall, a pair of glasses and an MP4 in your pocket to all be driven from one source without each one resolving the stream independently.

## What is not here

No recipes ship with the addon — it inherits NetMusic's progression rather than adding its own crafting chain. Obtain devices from the creative tab, or from whatever routes the parent mod and your pack provide.

[Back to index](index)
