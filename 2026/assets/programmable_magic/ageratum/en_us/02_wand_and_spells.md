---
title: Wand and spells
navigation:
  title: Wand and spells
---

# Wand and spells

## Wand GUI

The `wand_menu` screen (`WandScreen`, with `WandSlots`/`WandWidgets`) is where a program is composed. It is driven by plugins registered in `WandPluginRegistry`:

- **`SpellStoragePlugin`** — store spell tokens in the wand.
- **`SpellSupplyPlugin`** — feed spells from a supply.
- **`SpellReleasePlugin`** — release/charge the composed program.
- **`SpellPackerPlugin`** — pack a composition into a `packed_spell`.
- **`ColorThemePlugin`** — change the wand's color theme.

Tooltips (`ItemTooltipHandler`) and an auto-charge HUD (`WandAutoChargeHud`) assist the player.

## Casting

When released, the composed program runs in the world; the actual effect travels as the **`spell_entity`** projectile (0.5×0.5, `MobCategory.MISC`, tracking 64, update interval 1). `SpellEntity` and a dedicated `spell_entity` ticket controller keep the casting chunk loaded.

[Back to index](index)