---
title: Getting started
navigation:
  title: Getting started
---

# Getting started

## Start with a template

The first advancement (`start`) asks you to craft a golem template and use the Stonecutter to cut it into golem parts. The crafting recipe `metal_golem_template` and the stonecutting conversions (e.g. `metal_golem_body_from_metal_golem_template_stonecutting`) cover the metal, humanoid and dog part sets.

## Golem parts by type

Each golem expects specific parts:

- **Metal Golem** — body, left, right and leg parts.
- **Humanoid Golem** — body, arms and legs.
- **Dog Golem** — body and legs.

## Assemble a golem

Use the `golem_workbench` to combine the parts; the crafted result is a golem holder that places the corresponding golem entity (`modulargolems:metal_golem`, `humanoid_golem` or `dog_golem`).

## Materials and expansion

Golem materials are defined per registered material. The generated material config (`modulargolems:vanilla`) ships copper, iron, gold, netherite and sculk, each with its own stat and modifier profile. The third-party material dispatches are commented out on the current 26.1 branch, so no external material packs (Botania, AlltheModium, ...) are active; the config system itself remains extensible via data.

## Upgrades

Golems accept upgrades (`modifier.modulargolems.*`) which add behaviors such as fireballs (`blazing`), mana-based healing (`mana_mending`) or area effects. Upgrade slots can be expanded with `add_slot_*` modifiers; the `max` advancement needs 12 upgrades installed on one golem, and `full` requires using up all slots.

## Command, summon and retrieval wands

- **Command wand** — order golems around.
- **Summon wand** — summon stored golems (the `summon_mass` advancement summons at least 24 at once).
- **Retrieval wand** — collect your golems back.

## Repairing

A metal golem can be repaired with ingots directly (advancement `hot_fix`) or in an anvil (`anvil_fix`).

[Back to index](index)