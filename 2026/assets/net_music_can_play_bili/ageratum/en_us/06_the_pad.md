---
title: The Pad
navigation:
  title: The Pad
description: A tablet holding a publishable document of media entries, trigger points and map settings.
---

# The Pad

The Pad is the largest single feature in the addon, and the one least suggested by the mod's name. It is a tablet that carries a **document**.

## What a document contains

| Field | Detail |
|:---|:---|
| **Title** | free text |
| **Author** | free text |
| **Locked** | whether the document accepts further edits |
| **Updated at** | a timestamp |
| **Sequence** | a revision counter |
| **Map settings** | how the Pad's map behaves |
| **Media entries** | up to **64** |
| **Trigger points** | up to **128** |

Both caps are hard limits enforced when the document is constructed — a document is truncated to 64 media entries and 128 trigger points rather than growing without bound.

## Media entries are discs

You add media to a Pad by **adding a disc**. Each entry receives a small integer id, allocated from the lowest free slot in the range 1–64, so ids stay stable and compact as you add and remove entries.

That design has a practical consequence: **removing an entry frees its id for reuse**. If you have external notes referring to "media 7", they can end up pointing at something new after an edit.

The Pad therefore functions as a portable library — up to 64 tracks or videos in a single item, playable through its own playback control.

## Trigger points

Up to 128 trigger points can be attached to a document, and a trigger **mode** selects how they behave. Together with map settings, this is what turns the Pad from a playlist into something closer to a programmable tour: positions in the world associated with media, fired according to a mode.

## Locking and publishing

Two related mechanisms:

**Locking.** A document can be marked locked, and the record exposes both a "with locked" and a "copy with locked" operation — so locking is a first-class state change, not a flag someone remembers to check.

**Publishing.** A dedicated publish packet exists, along with server-side document storage and saved data. So a Pad document is not purely a client-side item note: it can be pushed to the server, stored, and made available beyond its author.

That combination is the point. A locked, published document is a stable artefact other players can consult — a guide, a setlist, a tour — rather than a scratchpad that changes under them.

## Maps, and their scope

The Pad carries map settings, and the server keeps **map scope** saved data with its own world-scope packet and a scope synchronisation service. There is also a server-side sampler self-test.

The existence of a **world scope** distinguishes a Pad map from a personal one: a document's map can be defined in terms of the world rather than only the holder, which is what makes a published document's map meaningful to a reader who was not there when it was made.

Map data is cached on disk on the client, with its own cache path handling and a self-test for those paths.

## Server-side state

The Pad has a real server presence, not just item data:

| Component | Purpose |
|:---|:---|
| Document store and saved data | persistent documents |
| Holder tracker | which player is holding which Pad |
| State packet and state mirror | keeping clients in step |
| Map scope saved data and sync | world-scoped map definitions |

Because that state is server-held, it survives more than the item does — and it needs occasional maintenance, which is why a **`pad refresh`** command exists. That command is permission-gated; see [07 Moderation and permissions](07_moderation_and_permissions).

There is a separate **client** command for refreshing the local map cache, which is a different operation from refreshing server state. The server command's own output says so explicitly.

## Playback from a Pad is moderated

Pad playback goes through its own control packet, and that packet is **one of the six whitelist enforcement points**. Playing a source from a Pad on a server with the whitelist enabled is checked exactly like playing it from a turntable, and a refusal names "Pad playback" specifically.

## A design note

The repository contains a **15 KB Pad design document** and a **24 KB document on minimap architecture**, alongside a Python tool for previewing Pad caches. If you are wondering why a Bilibili audio addon contains a mapping subsystem, the answer is that the Pad was designed as a device in its own right and the map is one of its applications.

Those documents are **plans and design notes**, and this page describes only what the shipped code implements.

[Back to index](index)
