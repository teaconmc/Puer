---
title: Letters and Packages
navigation:
  title: Letters and Packages
description: Writing and sealing letters, attaching stamps, and packing items into a parcel.
---

# Letters and Packages

Two things can travel through the mail: a **letter** and a **package**.

## Letters

`letter` opens its own screen with a text area, a stamp slot and three buttons: **Save**, **Seal** and **Delete**.

A letter has two states, shown in its tooltip:

- **Unsealed** — still editable.
- **Sealed** — finished and ready to post.

Only a **sealed** letter is accepted by a mailbox. Sealing also records the author, and the tooltip then shows:

- `Stamp: <name>` if one was attached (the stamp slot shows "No stamp" when empty)
- `Signer: <name>` for the person who wrote it

Attaching a stamp is what makes letters collectible — see [Stamps](04_stamps.md).

## Packing boxes and packages

`packing_box` is the empty container; `package` is the sealed result.

The packing screen has **Pack** and **Unpack** actions:

1. Put items into the packing box and **pack** it — the box becomes a `package`.
2. The package tooltip then shows `Contains %s items`.
3. The recipient **unpacks** it, reported as "Package opened."

A package, like a sealed letter, can be handed to a mailbox for delivery.

## Stamp album

`stamp_album` is a dedicated storage item with its own screen, used to hold a stamp collection rather than filling your inventory. It stacks to 1 and has a crafting recipe.

<recipe id="letter_signal_phone:stamp_album"/>

## Filtered slots

The letter, package and album menus use filtered slots, so each slot only accepts the item type it is meant for — you cannot, for example, drop arbitrary items into a stamp slot.

[Back to index](index)
