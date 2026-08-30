---
title: "Bee Mail Delivery"
navigation:
  title: "09 Bee Mail Delivery"
items:
  - "beecrasy:mail"
  - "beecrasy:handheld_mailbox"
---

# Bee Mail Delivery

Mail can carry up to `8` attachment stacks, and its postage slot accepts only `beecrasy:honey_drop`, not Honey Buckets or arbitrary honey-tag substitutes. Enter the recipient, insert attachments and enough Honey Drops, then use the prepared Mail item on a block in `#beecrasy:mailbox`. That tag contains the four wild-nest stages and Natural Hive, not the Skep or Hive. This block interaction performs the actual dispatch. Check the address first because attachments transfer with the delivery process.

<recipe id="beecrasy:crafting/mail"/>

<recipe id="beecrasy:crafting/handheld_mailbox"/>

The Handheld Mailbox recipe is valid but requires `beecrasy:apite`, which currently has no output source. Without a pack-provided material it is available only through Creative mode or commands.

The Handheld Mailbox receives deliveries. Its location must have open sky above it, and the system spawns `beecrasy:bee_swarm` for presentation and delivery. If mail does not arrive indoors, underground, or under an overhang, carry the mailbox to an unobstructed outdoor location.

## Server usage

1. Test the first delivery with a valueless item to verify the recipient and location.
2. Leave at least one attachment slot empty so the interface state is easy to read.
3. Receive away from regions that prevent or immediately remove entities.
4. Do not treat bee mail as cross-server transport or an offline backup; it handles delivery only inside the current world.

::: warning
Open sky is a functional delivery condition, not merely a visual effect. Transparent roofs and unusual blocks work only when the actual sky-visibility check passes.
:::

[Back to the Beecrasy index](index)
