---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

Inkraft is a story engine. Everything you will actually see in game comes from a datapack, not from the mod jar — **on its own it adds no items, no blocks and no commands you would notice**.

## Who is this for

Two very different groups, and it is worth knowing which you are:

**Players.** You will encounter Inkraft through a map or modpack that uses it. There is nothing to configure; you play the stories it ships with. The two commands you might see are `/inkraft start` (admins) and `/inkraft next` (everyone).

**Map and pack authors.** This is the actual audience. You write stories in the **Ink** scripting language, compile them to JSON, and ship them in a datapack. See [Stories and Datapacks](02_stories_and_datapacks).

## Getting something to happen

1. Write a story in ink.
2. **Compile it** to `.ink.json` — Inkraft loads compiled JSON, not `.ink` source. See [Stories and Datapacks](02_stories_and_datapacks).
3. Put it at `data/<your_namespace>/inkraft_story/<name>.ink.json` in a datapack.
4. `/reload`.
5. `/inkraft start <your_namespace>:<name>` — this requires admin permission.
6. The player advances with `/inkraft next`, which does **not** require admin.

## Two platforms, one difference that matters

Inkraft runs on both Fabric and NeoForge, built from one shared codebase.

::: warning
**The two platforms handle permissions differently.**

On NeoForge, command permissions are real permission nodes that a permissions plugin can adjust. On Fabric, they are fixed vanilla permission levels.

So a story command that players can use on NeoForge may be admin-only on Fabric, or the reverse. If your map depends on who can trigger what, test on the platform you are shipping.
:::

## ⚠️ Ask before bundling it in a modpack

::: danger
**The licence situation here is genuinely unclear, so get the author's word first.**

Three different licence statements exist side by side:

- The setting that feeds the in-game mod list says **PolyForm Shield 1.0.0**
- A second file in the repository ships a *different* licence text (PolyForm NonCommercial)
- And the plain `LICENSE` file itself reads **"all rights reserved"**

The most restrictive of the three is also the authoritative one. **Treat Inkraft as permission-required until the author says otherwise**, rather than trusting any single statement on its own.
:::

## Summary

| Question | Answer |
|:---|:---|
| What does it add by itself? | **Nothing visible** — it is an engine |
| Who is it for? | Map and pack authors |
| How do players interact? | `/inkraft next` |
| Who can start a story? | Admins (`/inkraft start`) |
| Platforms | Fabric + NeoForge, permissions differ |
| Modpack use | **Ask the author** |

[Back to the index](index)
