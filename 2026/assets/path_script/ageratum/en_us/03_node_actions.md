---
title: "Node actions"
navigation:
  title: "03 Node actions"
---

# Node actions

Each node can carry actions, which fire when the maid reaches it. Open a node's screen by right-clicking it twice with the editor, then use **+ Add Action**.

## The five action types

| Action | Label in the list | What it does |
|:---|:---|:---|
| Message | `[M] …` | sends a chat message |
| Label | `[L] …` | shows a text label at the node |
| Beacon Beam | `[B] #RRGGBBAA` | draws a coloured beacon beam at the node |
| Icon | `Icon[ … ]` | shows an item icon at the node |
| Sound | `[S] …` | plays a sound |

Each type has its own small editor, reached from the same screen. The Beacon Beam editor works in **hex colour with alpha** — the list shows the raw value, so `#FF00FFFF` is opaque magenta.

## What each one is good for

**Message** is narration. It reaches the player as chat, prefixed with the maid's name, so a stop on the tour can explain itself.

**Label** and **Icon** are in-world signage. They stay at the node rather than scrolling past in chat, which makes them the right choice for naming a place or showing what is made there.

**Beacon Beam** is for finding the node from far away. A beam is visible over terrain, so it works as a "next stop is here" marker rather than a detail label.

**Sound** plays an arbitrary sound event. The mod ships one of its own, a `welcome` sound, but the action is not limited to it.

## Managing a node's actions

The node screen offers **Edit** and **Delete** per action, plus **Delete Node** for the node itself, which asks for confirmation first.

Remember that the **start node cannot be deleted** — you can strip all its actions, but the node stays.

## Actions and branches together

The two features combine in the obvious way, and it is worth planning for: put a **Message** on a fork node asking the question, and a **Label** or **Beacon Beam** on each of its exits so the player can see the options before choosing.

Without that, a fork just shows the maid stopping with the default prompt and no indication of what either route leads to.

[Back to index](index)
