---
title: Overview
navigation:
  title: Overview
description: What NetherLink is, the backends and accounts behind it, and what it ships for TeaCon.
---

# Overview

**NetherLink** (namespace `netherlink`, v0.1.0-tc, by MUYU_Twilighter) is a **multi-loader** (Fabric + NeoForge) mod for Minecraft 26.1 that adds a **friend list** and **peer-to-peer server presence / join** integration. It targets Minecraft 26.1.2 with the Java 25 runtime.

## What it does

- **Friend list** — add and manage friends through NetherLink's own accounts.
- **Server presence** — friends see which of their friends are currently online and hosting a world.
- **P2P join** — with consent and a valid online session, a friend can join your hosted world directly through NetherLink over WebRTC, **without configuring port forwarding**.

Because the join path is peer-to-peer, the mod needs a working online session and both sides online; it does not replace normal server setup for friends you have not linked.

## Backends and accounts

NetherLink is backend-driven. The active backend is selected through the config, and each backend manages its own account records:

- Accounts are stored per server in `netherlink/accounts/*.json` and are refreshed every **1200 ticks**.
- Configuration lives at `config/netherlink/config.json` with at least the `activeService` and `instanceName` keys.

The implementation is split across platform "bridge" classes common to both loaders — the same core drives Fabric and NeoForge.

## What it ships for TeaCon

For TeaCon the mod also registers a small **intro-sign** set:

- **Intro Card** (`intro_card`) — an item that writes **double-sided wooden signs**.
- **Friend Card** (`friend_card`) — an item that sends a friend request to the owner of a sign.
- Per wood type, `intro_card_<wood>_sign` items and the matching standing / wall / wall-hanging / ceiling-hanging sign blocks.

There are **no crafting recipes** and **no world content** of its own.

## Reading guide

- [01 Overview](01_overview.md) — this page.
- [02 Hosting from the server](02_server_hosting.md) — the `/nli` command for accounts and presence on a server.
- [03 Friends and joining](03_friends_and_joining.md) — the friends screen, statuses and joining.
- [04 Intro cards and friend cards](04_intro_card_and_friend_card.md) — the double-sided wood signs and the two cards.

[Back to index](index)
