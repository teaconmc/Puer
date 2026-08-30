---
title: AI Skills and Communication
navigation:
  title: AI Skills and Communication
description: Three skills that let you ask a maid in plain language, and the terminal that lets maids coordinate.
---

# AI skills and communication

## Three AI skills, shipped into the parent mod

The addon writes three files into **Touhou Little Maid's own data namespace**, under a `skills` directory. Each is a Markdown document with front matter — a **name**, a **description**, and a body of instructions.

They are not documentation for players. They are **tool manuals for an LLM-driven maid**: the description tells the model when to use the skill, and the body tells it which tool to call and how.

| Skill | Description as written | Tool it drives |
|:---|:---|:---|
| `get_storage_manual` | *"Use this when answering any question about item and storage."* | `get_storage` |
| `find_storage_manual` | *"Find and mark item in storage for user. When user ask for the LOCATION of something, use this skill."* | `find_mark_storage` |
| `fetch_item_manual` | *"Use this when user ask you to find or craft some item for them."* | `storage_fetch` |

The bodies are concrete. `get_storage` accepts **an optional filter pattern** — omit it and every item is returned. `storage_fetch` **generates a request list**, and the instructions then say the task will continue collecting or crafting everything on that list and hand it to the player when done.

So the natural-language path and the paper path are the same machinery: **asking a maid to fetch something literally produces a request list**, which is then executed exactly as if you had written one by hand. That is the cleanest possible integration, and it means everything you learn about request lists in [03 Requests and logistics](03_requests_and_logistics) also describes what happens when you just ask.

### What this depends on

These skills are **data files in the parent mod's namespace**. They do nothing on their own — they are consumed by Touhou Little Maid's conversational maid feature. If your setup does not have that feature active, the three files sit inert and the addon works normally through its items.

Nothing about this appears in the addon's own registry, its item list, or its recipes. It is invisible unless you go looking in `data/touhou_little_maid/skills/`.

## The Configurable Communicate Terminal

`configurable_communicate_terminal` is the addon's item for the other kind of communication: **between maids**.

The code carries a dedicated communication layer — a communicable interface, a utility, three maid behaviours (checking, preparing and working) and a set of menu widgets including a mark menu with method and slot selectors, plus a rolling text display.

The shape of that — check, prepare, work — describes a **handshake**: a maid confirms she can take part, gets set up, then does the job. That is what allows several maids to divide a task rather than duplicating it.

The terminal being "configurable" is reflected in its interface: the mark menu lets you pick a **method** and a **slot**, so what gets communicated is something you set rather than a fixed protocol.

## A Patchouli guidebook you may never see

The addon ships **40 files** of Patchouli guidebook content, again **inside Touhou Little Maid's namespace** rather than its own.

Two things follow:

- **Patchouli is not declared as a dependency at all** — not required, not optional. And there is **no Java code in the addon that references Patchouli**; the books are pure data.
- Therefore the guidebook is **inert without Patchouli installed**, and its presence costs nothing. With Patchouli installed, forty pages of in-game documentation appear inside the parent mod's book.

This is worth knowing precisely because it is easy to misread as an undeclared dependency. It is not: no code path touches Patchouli, so nothing can fail. It is optional content that either renders or does not.

## Why it is in the parent mod's namespace

Both the skills and the books are placed under `touhou_little_maid` rather than `maid_storage_manager`. That is deliberate: both are **extensions of the parent mod's own systems** — its maid skill registry and its guidebook — and content for those systems belongs in their namespace so the parent mod finds it.

This is the same pattern as the altar recipes in [01 Getting started](01_getting_started): the addon consistently plugs into the parent's structures rather than building parallel ones.

[Back to index](index)
