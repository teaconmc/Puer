---
title: Mino++
navigation:
  title: Mino++
---

# Mino++（米诺）

Mino++ (mod id `minopp`, version 1.4.0) recreates a classical card game inside Minecraft, playable at a physical card table. It is developed by Zbx1425 and MalayP (MIT license) and targets Minecraft 26.1.2 on NeoForge (`26.1.2.66-beta`) and Fabric.

## What the game is

- **Card table** — place the `minopp:mino_table` in the world; it holds a running game and seats nearby players (multi-block, with a core).
- **Hand cards item** — `minopp:hand_cards` (and `minopp:hand_cards_nobewlr`, no-BEWLR variant) shows your hand in the world; each player is bound to a card game position via the `minopp:card_game_binding` / `minopp:client_hand_index` data components.
- **Shout "Mino"** — on a full hand you can shout by typing `mino`/`uno`/`minopp` in chat or using `/minopp shout`; you can also **doubt** (challenge) another player's shout by attacking them.
- **Auto player** — `minopp:mino_auto_player` is a creature entity that can play at a seat for a missing player, configured through the auto-player screen.
- **Coupon** — `minopp:coupon` is a card-style token item used with the table.

## Registered content

- **Block** — `minopp:mino_table` (with its block entity).
- **Items** — `minopp:hand_cards`, `minopp:hand_cards_nobewlr`, `minopp:coupon`.
- **Entity** — `minopp:mino_auto_player`.
- **Data components** — `minopp:card_game_binding`, `minopp:client_hand_index`.

## Commands

- `/minopp shout` — shout "Mino" for the game at your hand-cards position.
- `/minopp set_table_award` — requires permission level 2; while standing on a `mino_table` holding an item, set that item as the table's win reward.

## Reading path

- [Getting started](01_getting_started) — the card table, hand cards, coupons and starting a game.
- [Gameplay](02_gameplay) — turns, matching cards, shouting Mino, doubting and the auto player.
- [Configuration and compatibility](03_configuration_and_compat) — YACL dependency and Touhou Little Maid integration.
