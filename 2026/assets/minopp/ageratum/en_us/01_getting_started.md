---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

Place the `minopp:mino_table` card table as your playing surface and obtain `minopp:hand_cards` (the hand-cards item that displays your hand in the world) plus `minopp:coupon` (card-style tokens).

## The card table

`mino_table` is a multi-block structure with a single core block entity (`BlockEntityMinoTable`) that holds an ongoing game and provides seats for nearby players. Sit at the table and confirm your seat to start a round. The table's reward can be set by an operator via `/minopp set_table_award` to serve as the win prize, which `CardGame` hands out when the game ends.

## Hand cards item

`minopp:hand_cards` renders your hand in three dimensions while held; it is bound to your card-game position through the `minopp:card_game_binding` data component, with `minopp:client_hand_index` recording the client hand index (client-side, unrelated to roaming). A variant without the BEWLR renderer, `minopp:hand_cards_nobewlr`, is also available.

## Coupon

`minopp:coupon` is a card-style token item used with the card table (as rewards or scoring tokens).

[Back to index](index)