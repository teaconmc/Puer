---
title: Maid Storage Manager
navigation:
  title: Maid Storage Manager
items:
  - maid_storage_manager:storage_define_bauble
---

# Maid Storage Manager（女仆仓管）

An addon by xypp that teaches your maids to fetch, sort and craft.

It teaches Touhou Little Maid's maids to **run your storage for you**: mark chests as theirs, hand them a request list, and they will search, fetch, sort, restock and even craft what is missing — walking the crafting dependency graph to work out what has to be made first.

## Touhou Little Maid is required

`touhou_little_maid` is declared a **required** dependency at `[1.3.7,)` on both sides. This addon registers no maids of its own; it gives the parent mod's maids new jobs, new items and new AI behaviours.

Several other mods are supported and enabled by default, including **AE2**, **Refined Storage**, **Mekanism QIO**, **Create**, **JEI**, **EMI** and **Patchouli** — see [Playing with other mods](07_integrations).

## The headline feature you cannot see in the registry

The addon ships **three AI assistant skills** into the parent mod's namespace. They are Markdown files with front matter describing tools an LLM-driven maid can call:

| Skill | What it lets you ask for |
|:---|:---|
| `get_storage_manual` | any question about what is in storage |
| `find_storage_manual` | **where** a specific item is — she marks it for you |
| `fetch_item_manual` | **find or craft** something and bring it to you |

So on a setup where the parent mod's conversational maid is active, you can ask in plain language where something is or for something to be made, and this addon is what answers. Details in [06 AI skills and communication](06_ai_skills_and_communication).

## What is registered

| Registry | Entries |
|:---|:---|
| Items | **15** |
| **Blocks** | **none** |
| Entities | 2 — both invisible display helpers |
| Data components / attachments | yes |
| Memory modules | yes — new maid brain memories |
| Menus / GUIs | several |
| Recipes | **22**, in three types |
| Advancements | 13 |
| Tags | 11 |
| **Loot tables** | **0 — correct, because there are no blocks** |
| Commands | 2 debug subcommands |
| Config | **very large**, and mostly about other mods |

## Reading path

1. [01 Getting started](01_getting_started) — the altar, the 15 items, and why nothing is a block.
2. [02 Marking storage](02_storage_marking) — telling maids which containers are theirs.
3. [03 Requests and logistics](03_requests_and_logistics) — lists, filters and moving goods.
4. [04 The crafting engine](04_crafting_engine) — dependency solving and multi-output altar recipes.
5. [05 The Progress Pad](05_progress_pad) — a live dashboard inside an item frame.
6. [06 AI skills and communication](06_ai_skills_and_communication) — talking to maids, and maids talking to each other.
7. [Playing with other mods](07_integrations) — which storage systems your maids can use, and the two numbers worth changing.
8. [08 Configuration and limits](08_configuration_and_limits) — speeds, retry caps, debug commands.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id | `maid_storage_manager`, v`2.0.0-neoforge+mc26.1.2` |
| Author / licence | xypp / **MIT** |
| Required | **Touhou Little Maid `[1.3.7,)`** |
| Declared optional | EMI, JEI, Create, Cloth Config |
| Undeclared integrations | AE2, Refined Storage, Mekanism QIO, KubeJS, Patchouli |
| Localization | English and Chinese, **512 keys each** |
