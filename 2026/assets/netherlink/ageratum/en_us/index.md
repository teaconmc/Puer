---
title: NetherLink
navigation:
  title: NetherLink
---

# NetherLink

NetherLink (namespace `netherlink`, v0.1.0-tc, by MUYU_Twilighter) is a multi-loader (Fabric + NeoForge) mod for Minecraft 26.1 that brings a **friend list** and **P2P server presence/join** integration. Friends can see each other's online games, and — with consent and a valid online session — join a friend's hosted world directly through NetherLink, peer-to-peer (WebRTC) without configuring port forwarding.

For TeaCon it also ships a small **intro-sign** set: an **Intro Card** that writes double-sided wooden signs, and a **Friend Card** to send friend requests to a sign's owner.

It has no crafting recipes and no world content of its own.

## Reading guide

- [01 Overview](01_overview.md) — what NetherLink does, backends and accounts.
- [02 Hosting from the server](02_server_hosting.md) — the `/nli` command for accounts and presence on a server.
- [03 Friends and joining](03_friends_and_joining.md) — the friends screen, statuses and joining.
- [04 Intro cards and friend cards](04_intro_card_and_friend_card.md) — the double-sided wood signs and the two cards.

## At a glance

| Concern | Details |
|:---|:---|
| Mod id / name | `netherlink` / NetherLink, by MUYU_Twilighter, MIT with Additional Terms, v0.1.0-tc (beta) |
| Loaders | Fabric + NeoForge, Minecraft 26.1.2 |
| Purpose | Friend list + P2P server presence / join (WebRTC) |
| Server command | `/netherlink` (alias `/nli`) |
| Account data | `netherlink/accounts/*.json`, refresh every 1200 ticks |
| Config | `config/netherlink/config.json` → `activeService`, `instanceName` |
| TeaCon items/blocks | `intro_card`, `friend_card`, wooden `intro_card_*_sign` + hanging-sign set |
| Recipes | None |

[Back to top](#netherlink)
