---
title: Intro Cards and Friend Cards
navigation:
  title: Intro Cards and Friend Cards
description: The double-sided wooden signs and the two TeaCon cards — intro_card and friend_card.
---

# Intro Cards and Friend Cards

For TeaCon, NetherLink ships a small intro-sign set built on **double-sided wooden signs** plus two items: the **Intro Card** and the **Friend Card**.

## Registered blocks and items

Blocks (one set per vanilla wood type, including oak, spruce, birch, jungle, acacia, dark oak, mangrove, cherry, bamboo, crimson and warped):

- `intro_card_<wood>_standing_sign`
- `intro_card_<wood>_wall_sign`
- `intro_card_<wood>_wall_hanging_sign`
- `intro_card_<wood>_ceiling_hanging_sign`

Items:

- `intro_card` — the **Intro Card**.
- `friend_card` — the **Friend Card**.
- `intro_card_<wood>_sign` — combined standing + wall sign item.
- `intro_card_<wood>_hanging_sign` — combined wall- + ceiling-hanging sign item.

## Intro Card

The Intro Card **writes a double-sided wooden sign**. Right-click an empty intro-card sign with it:

- The card is **consumed** (one is removed from the stack).
- You become the sign's **owner / editor**.
- The sign's text editor opens so you can write the intro text.

A sign that already has text (someone already wrote on it) rejects a new Intro Card — you cannot overwrite an existing owner's intro.

## Friend Card

The Friend Card **sends a friend request to the owner of a sign**. Right-click a sign that already has intro text:

- **On another player's sign** — a confirmation screen opens and, on confirm, a friend request is sent to that sign's owner.
- **On your own sign** — the request is rejected with a `friend_card.self_prompt` message (you cannot befriend yourself here).

## Owning, clearing and returning a card

With an **empty hand** on a sign that has text:

- If you are the owner, an owner menu opens (from which a written sign can be cleared / the card returned).
- If you are **not** the owner, clearing is blocked with a failed sound — only the owner may modify their own intro sign.

## No recipes

Neither the cards nor the sign blocks have crafting recipes in this version — they are obtained outside the normal recipe system.

[Back to index](index)
