---
title: "Graphs in the world"
navigation:
  title: "04 Graphs in the world"
---

# Graphs in the world

A graph in the editor does nothing. This page covers the four ways graphs reach the game.

## Blueprints on keys

The mod registers **ten blueprint keys** in their own keybind category, all **unbound by default**. Bind them in Controls and each becomes a slot you can fire a graph from — effectively a custom ability bar.

This is the most direct route: build a graph, put it on a blueprint slot, press the key.

## Binding a graph

Four commands manage the relationship between graphs and the world:

| Command | Purpose |
|:---|:---|
| `/graph_bind` | attach a graph |
| `/graph_unbind` | detach it |
| `/graph_list` | list available graphs |
| `/graph_download` | pull a graph from the server |

Note that `graph_list` is registered **twice** — once as a client command and once as a server command — so the mod can list what you hold locally and what the server offers.

`/graph_download` is backed by a proper request-and-response packet pair, and there is a matching pair for listing. That means **a server can host a shared library of graphs** and players pull them into their own editor rather than passing files around by hand. For a build server or an adventure map, that is the intended distribution route.

## Area debugging

One command sits under the mod's own root and it is the only one with a permission gate:

```
/geometry_node debug area on [radius]
/geometry_node debug area off
```

The radius accepts **1.0 to 2048.0** and has a built-in default if you omit it.

**This command requires gamemaster permission.** That is worth calling out as a positive: many mods in this batch register command trees with no `requires` clause at all, so anyone could run them. Here the debug command is properly gated.

What it does is visualise the **area event** — the single event node that fires based on a region — so you can see the region your graph is testing against instead of guessing.

## Dialogue

The dialogue subsystem has six nodes, its own event, its own renderer and its own command root with **`choose`** and **`close`** subcommands.

The shape is what you would expect: a graph presents lines, offers choices, and the player's selection routes execution down a branch. `choose` submits an option and `close` dismisses the conversation, which means dialogue can be driven from commands as well as from clicks — useful for testing a conversation tree without walking to the NPC.

The dialogue renderer swaps the active screen and restores the previous one when finished, so a conversation can interrupt whatever you were looking at and hand control back cleanly.

## Shops

A shop system exists with its own menu and an in-game **editor overlay**. Trade offers are identified by an id, and if an offer has no explicit id one is generated from its index — so a shop is a list of offers you edit in place rather than a data file you write.

::: warning
**The shop system has 38 translation keys and none of them are in English.** All 38 exist only in `zh_cn`. The shop is fully functional but its interface is unlabelled on an English client — this is the subsystem most affected by the translation gap described in [05 Technical notes](05_technical_notes).
:::

## Where graphs live

Graphs are **files on disk**, browsed through the editor's asset browser. They are not world data, which has two consequences:

- A graph is **portable** — you can copy the file to another world or send it to someone.
- A graph is **not part of your save**, so backing up a world does not back up your graphs.

Combined with the download commands, the intended flow is: author locally, publish to a server, and let players pull copies.

[Back to index](index)
