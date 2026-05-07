---
title: "Blocks, Effects and Enchantments"
navigation:
  title: "06 Blocks, Effects and Enchantments"
---

# Blocks, Effects and Enchantments

## The Four Blocks

| Block | In-game name | Role |
|:---|:---|:---|
| `loose_snow_block` | Loose Snow Block | Soft snow the Implosion Cannon can break into snowballs |
| `snow_trap` | **Snow** | A trap placed by the Snow Trap Setter |
| `critical_snow` | Critical Snow | Left behind by the Critical Frozen Snowball |
| `smart_snow_block` | Smart Snow Block | Golem head, summoner and configuration surface |

::: warning
The Snow Trap's display name is literally **"Snow"** — not "Snow Trap". That is deliberate: a trap that announced itself would be useless. On a PvP map, a block that looks and reads exactly like ordinary snow is the point, so do not expect the tooltip to warn a victim.
:::

Critical Snow is the only one of the four with a block entity (`bsf3lite:critical_snow`), which is how it tracks its own lifetime after the snowball that created it is gone.

The mod also adds `loose_snow_block` and friends to the vanilla `minecraft:block/snow` and `minecraft:block/mineable/shovel` tags, so they behave like snow for other mods and tools.

## Mob Effects

| Effect | Source | What it does |
|:---|:---|:---|
| `cold_resistance` | Drinking Vodka | Resistance to the mod's freezing effects |
| `weapon_jam` | Snow thrown from a Basin | The target cannot use a weapon for a short time |

Weapon Jam is the reason the humble Basin belongs in a serious loadout: it is the only way to shut down an opponent's launcher rather than out-shoot it.

The mod also adds entries to the vanilla `minecraft:entity_type/freeze_immune_entity_types` and `minecraft:entity_type/fall_damage_immune` tags, so its own entities are not victims of their own mechanics.

## Enchantments

Three enchantments are defined as datapack JSON in `data/bsf3lite/enchantment/`:

| Enchantment | In-game name |
|:---|:---|
| `floating_shooting` | Floating Shot |
| `kinetic_energy_storage` | Kinetic Energy Storage |
| `snow_golem_exclusive` | Snow Golem Exclusive |

They are wired up with real tags rather than left dangling:

- `bsf3lite:enchantable/floating_shooting_weapons` defines which weapons can take Floating Shot,
- `minecraft:item/enchantable/durability` gains the mod's tools so they accept Unbreaking,
- `minecraft:enchantment/in_enchanting_table` gains the mod's enchantments so they appear at an enchanting table.

Kinetic Energy Storage is the one with a documented item interaction: the Snow Fall Boots' tooltip says that with it, falling height converts into acceleration.

::: info
Because all three are datapack JSON and registered through vanilla tags, a datapack can retarget or remove them without touching the mod jar.
:::

## Placeholder Tags

Two tags exist purely as scaffolding: `bsf3lite:item_none` and `bsf3lite:block_none`, both declared in code and both backed by an empty JSON file. They hold nothing and are referenced by nothing gameplay-facing — treat them as leftovers, not as extension points.

## Recipes

<recipe id="bsf3lite:snow_trap_setter"/>

[Back to the index](index)
