---
title: Spell programming
navigation:
  title: Spell programming
---

# Spell programming

Spells are data-driven items registered as `spell_display_*` (`SpellRegistry`), each a `BaseSpellItem` grouped by subcategory in the creative tab. The available families:

- **Numbers & constants** — `NumberDigit0..9`, `Pi`, X/Y/Z unit vectors, `True`/`False`.
- **Number operations** — add, subtract, multiply, divide, remainder, exponent; `Sin`/`Cos`/`Tan`/`Asin`/`Acos`/`Atan`; `Ceil`/`Floor`; `RandomNumber`; vector length/X/Y/Z; entity armor/health/max-health.
- **Dynamic constants** — `Timestamp`, `CameraDirection`, `CasterPosition`, `SpellPosition`, `CasterEntity`, `SpellEntity`, `NearestEntity`.
- **Other compute** — block position, parentheses, comma, `SetStore`/`GetStore` storage, build vector, entity position/velocity.
- **Logic & flow** — `>`/`<`/`=`/`>=`/`<=`/`!=`, and/or/not, block-is-air / block-has-gravity; loops (`ForLoop`), `Continue`/`Break`, `IfStart`/`IfEnd`, `Stop`, `Restart`.
- **Triggers** — condition invert, `TouchGround`, `TouchEntity`, `Delay`.
- **Base spells** — `DebugPrint`, `Teleport`, `Velocity`, `ApplyPotion`, `SendToInventory`, `BreakBlock`, `MineBlock`, `PlaceBlock`, `Explosion`.

Spells are colored and reordered by subcategory (`SPELL_COLORS`); spell items get their own models via `SpellItemModelProvider`.

[Back to index](index)