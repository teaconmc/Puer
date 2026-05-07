---
title: Getting Started
navigation:
  title: Getting Started
description: Using the /womm command and how world templates are turned into a world on your local machine.
---

# Getting Started

Works On My Machine is driven entirely from a single command and the `world_templates` datapack data that backs it. There are no items, menus, or recipes to collect.

## The `/womm` Command

Registered command:

- `/womm <identity>`

`identity` is the identifier of a world template loaded from the `world_templates` data folder. The command offers tab completion from the templates currently loaded by the server.

When run by a player on a **non-singleplayer** server, the command sends the chosen template to that player's client over the network. In singleplayer the command is effectively a no-op.

## World Templates

The server reads world templates from `data/<namespace>/world_templates/*.json`. Each template describes how to build a world when triggered, for example:

- the **world name** used for the level, derived from the identity (`WOMM-<identity>`), or timestamped when `alwaysRecreate` is enabled,
- the **game mode**, **difficulty**, **hardcore** and **locked** flags,
- the **data pack configuration** and **world preset**,
- optional **seed**, whether to **generate structures**, and a **bonus chest**,
- optional per-world **game rules**.

Duplicate identities are rejected and logged by the server.

## Client-Side Loading

On the client, receiving the template causes the mod to:

1. look up the template by identity (or accept an inline template shipped in the payload),
2. assemble a load context for the world,
3. disconnect from the current world,
4. prepare resources and load the world through the pipeline (fresh world, or an existing saved world when present).

If the template is not recognized on the client, the payload is ignored.

## What This Means in Practice

The intended workflow: configure and test a world scenario once, capture it as a `world_templates` template, then run `/womm <identity>` from a server so the exact scenario is reproduced on a connected client — guaranteeing the setup "works on my machine."

> Built-in data and example templates are not shipped by the mod itself; you provide the `world_templates` files you want to reproduce.

[Back to index](index)
