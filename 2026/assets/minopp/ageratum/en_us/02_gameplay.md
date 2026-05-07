---
title: Gameplay
navigation:
  title: Gameplay
---

# Gameplay

A game runs inside a `mino_table` at its core block entity (`BlockEntityMinoTable`), coordinated by the server-side `CardGame` state machine. Players at the table take turns playing `Card` matches from their `hand_cards`.

## Matching and turns

On your turn you play a card that matches the top of the discard pile (the classical match-colour / match-value rules implemented in the server `CardGame`). Playing a card sends a `C2SPlayCardPacket`; the result is broadcast to the table as an `S2CActionEphemeralPacket` and applied to the game state.

## Shouting "Mino"

When you have one card left you may call "Mino". Trigger it by typing `mino`, `uno` or `minopp` in chat (handled by `Mino.onServerChatMessage`), or by running `/minopp shout`. If no game is bound to your hand cards, the command fails with "no game".

## Doubting

If you believe another player illegally called "Mino" while still holding more than one card, **attack them** — this sends a `C2SPlayCardPacket` doubt request (`C2SPlayCardPacket.Client.sendDoubtMinoC2S`), and the server verifies the disputed call.

## The auto player

`minopp:mino_auto_player` is a creature entity that can occupy a seat and play for a missing player. Configure it through the auto-player screen (`AutoPlayerScreen`, driven by `S2CAutoPlayerScreenPacket` / `C2SAutoPlayerConfigPacket`); the seat-control screen (`SeatControlScreen`) manages seating.

## Rewards

An operator can set a win prize for a table with `/minopp set_table_award` while standing on the table holding an item (permission level 2). The prize is handed to the winner when the `CardGame` ends, and effects (sound, glow, fireworks) are queued and played for the table.

## Effects

`EffectQueue` / `EffectEvents` animate the game — sound effects, player glow and fireworks are dispatched as `EffectEvent`s and applied to the matched players.

[Back to index](index)