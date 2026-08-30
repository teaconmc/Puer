---
title: Mailboxes and Delivery
navigation:
  title: Mailboxes and Delivery
description: Binding a mailbox to yourself, addressing mail by player name, and how long delivery takes.
---

# Mailboxes and Delivery

The mailbox is the backbone of the postal system. Everything else — letters, packages, stamps — is routed through it.

## Binding

Placing a mailbox **binds it to you**. The binding is persistent server-side data, not just a block property.

Two rules follow from that:

- **One mailbox per player.** Attempting to own a second one is refused with "Every player can only have one mailbox."
- **Only the owner may use their mailbox** for sending. Interacting with someone else's gives "This is not your mailbox."

## Sending

Open your own mailbox and you get a recipient field plus a confirm button:

1. Hold a **sealed letter or a package** in hand. Unsealed letters are refused with "Please hold a sealed letter or package."
2. Type the recipient's **player name**. An empty field is refused.
3. Confirm the name. The mailbox reports either "*name* has a mailbox." or "That player has no mailbox." — mail can only be addressed to someone who owns one.
4. Send.

On success the mailbox reports: **"Mail sent; it will arrive in about a minute."** Delivery is deliberately delayed rather than instant.

## Receiving

Delivered mail lands in the recipient's own mailbox. A particle effect marks a mailbox with new mail, so you can see at a glance that something arrived.

## Maintenance

Bindings can drift out of sync if a mailbox block is destroyed or a world is edited externally. The `/lsp mail refresh` command re-syncs your binding and clears missing or invalid mailboxes; `/lsp mail locate` finds a mailbox by player name. See [Commands and configuration](09_commands_and_configuration.md).

[Back to index](index)
