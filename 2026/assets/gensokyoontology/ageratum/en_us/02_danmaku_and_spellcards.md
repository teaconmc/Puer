---
title: "Danmaku and Spell Cards"
navigation:
  title: "02 Danmaku and Spell Cards"
---

# Danmaku and Spell Cards

## The Danmaku Table is a 5×5 grid — and it is not a vanilla recipe

The mod adds `gensokyoontology:danmaku_table` with a **Danmaku Crafting** screen. Its menu class lays out the slots explicitly:

| Constant | Value | Meaning |
|:---|---:|:---|
| `RESULT_SLOT` | 0 | The output |
| `CRAFT_SLOT_START` | 1 | First craft slot |
| **`CRAFT_SLOT_COUNT`** | **25** | **A 5×5 grid** |
| `CRAFT_SLOT_END` | 26 | |
| `INV_SLOT_START` / `END` | 26 / 53 | Player inventory |

::: tip
**This is why the mod needs no `data/` directory.** The menu class imports `Container`, `Inventory`, `Player`, `ItemStack` and the inventory package — but **no recipe classes at all**. Matching is the mod's own logic over a 25-slot grid, not `RecipeManager` lookups.

So "no recipes on disk" and "there is a crafting station" are consistent, not contradictory. A datapack cannot add danmaku patterns, because there is no recipe type to add them to.
:::

A second station, the **Danmaku Builder** (`danmaku_builder`, with `container.gensokyoontology.danmaku_builder.title`), exists alongside it.

## The trajectory editor is three-axis

The GUI strings reveal a full 3D orientation editor rather than a simple direction picker:

```
gui.gensokyoontology.rail_adjust.title   = Rail Adjustment
gui.gensokyoontology.label.roll          = Roll:
gui.gensokyoontology.button.increase_roll / decrease_roll   = + / -
gui.gensokyoontology.button.increase_yaw  / decrease_yaw    = + / -
gui.gensokyoontology.button.increase_pitch/ decrease_pitch  = + / -
gui.gensokyoontology.silder_prefix.angle_x = X Axis Angle:
gui.gensokyoontology.silder_prefix.angle_y = Y Axis Angle:
gui.gensokyoontology.silder_prefix.angle_z = Z Axis Angle:
```

Two control styles are provided at once: **+/− buttons for roll, yaw and pitch**, and **sliders for X, Y and Z axis angles**. "Rail" is the mod's term for a bullet's path.

::: info
The key `silder_prefix` is misspelled in the source (should be *slider*). Like other real-but-misspelled identifiers in this batch, **the key must be written that way to match** — but since it is a translation key rather than something a datapack references, it has no player-visible effect.
:::

## The projectile roster

Eight distinct shot entities, all separately registered:

| Entity | Name |
|:---|:---|
| `danmaku_entity` | Danmaku Shot |
| `large_shot` / `small_shot` | Large / Small Shot |
| `heart_shot` | Heart Shot |
| `star_shot_small` / `star_shot_large` | Star Shot Small / Large |
| `rice_shot` | Rice Shot |
| `scale_shot` | Scale Shot |

Plus `fake_lunar` and the spell-card carrier `spell_card_entity`.

The mod also registers its own death message:

```
death.attack.danmaku = Player is killed by danmaku
```

**Danmaku is a real damage source**, not a decorative particle.

## Spell cards carry their canonical titles

Spell cards are entities in their own right, and the naming follows Touhou convention with the bracketed title form:

| Key | Displayed |
|:---|:---|
| `spellcard.wave_and_particle` | Spell Card「Wave And Particle」 |
| `spellcard.sc_ido_no_kaiho` | Spell Card「Ido no Kaiho」 |
| `spellcard.sc_hell_eclipse` | Spell Card「Hell Eclipse」 |
| `spellcard.sc_mountain_of_faith` | 「Mountain Of Faith」 |
| `spellcard.sc_mobius_ring_world` | "Mobius Ring World" |

There is also an item form, `sc_rorshach_danmaku`, displayed as **Unconscious "Rorschach in Danmaku"** — the two-part *difficulty + title* structure the games use.

::: info
**The quoting is inconsistent across entries** — `「…」` on some, plain `"…"` on others, and `sc_mountain_of_faith` omits the `Spell Card` prefix entirely. That is what the language file contains; it is cosmetic, but it means spell card names will not all look uniform in game.
:::

## Spell behaviours live in code

`SpellBehaviors.java` defines effects as lambdas, for example `MANIA_DEPRESS` typed as `Spell<LivingEntity>`.

::: warning
**Do not confuse `SpellBehaviors.MANIA_DEPRESS` with a status effect.** The language file has `effect.gensokyoontology.mania` and `effect.gensokyoontology.depression` keys, but those are **not** connected to this spell behaviour — and as [Good to know](04_registries_and_technical_notes) explains, none of those six effects are currently active.

The spell is real; the effect keys are not.
:::

[Back to index](index)
