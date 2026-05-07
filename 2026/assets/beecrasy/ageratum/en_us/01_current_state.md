---
title: "Current State and Entry Requirements"
navigation:
  title: "01 Current State and Entry Requirements"
items:
  - "beecrasy:apistle"
---

# Current State and Entry Requirements

Beecrasy `1.0.0` already provides genetics, hives, pressing, mail, and music, but it registers no world generation for wild nests or starter bees. With the mod alone, a survival player cannot enter the main progression naturally. A modpack can supply an entry through quests, loot, or trading; otherwise Creative mode or commands must provide a queen, wild nest, or populated hive.

<recipe id="beecrasy:crafting/apistle"/>

The Apistle is intended as an in-mod reference, but its bundled pages are still example and debug placeholders. It does not replace this guide. The three Bee City blocks also have no survival recipes and are currently best treated as testing or pack-provided content.

`beecrasy:apite`, `beecrasy:bumblebee_jasper`, and base `beecrasy:pheromone` are registered and used but have no recipe, loot, or other output source. The block Sequencer, Handheld Mailbox, and Beedibox are gated by Apite, while the Buzzer is gated by Bumblebee Jasper. A diamond recipe bypasses Apite for the Handheld Sequencer only; the other devices still need pack-provided materials.

## Suggested starter kit

A minimal playable start needs a queen with a valid genome, several drones, and a Skep. Flowers are not a condition for hive work; an operating hive separately attempts to transform grass or ferns into mod flowers. If a pack grants a wild nest instead, it should also provide a Butterfly Net so the player can break the nest and receive its generated bee family as intended.

::: warning
The `/beecrasy` debug command group currently has no permission-level requirement. Server administrators should restrict it with a permissions mod because it can inspect or modify held bee genomes and products.
:::

[Back to the Beecrasy index](index)
