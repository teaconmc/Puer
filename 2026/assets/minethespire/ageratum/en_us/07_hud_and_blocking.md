---
title: "Blocking Value & HUD"
navigation:
  title: "Blocking Value & HUD"
---

# Blocking Value & HUD

Blocking Value is the mod's damage-absorption layer: a decaying pool that soaks incoming damage before it reaches your health, drawn as an extra row of icons under the vanilla hearts.

## How it is stored

Blocking Value is **not** a capability or NBT field. It is the *base value* of an attribute, which is why it is visible to Jade, to `/attribute`, and to the HUD without any extra networking.

| Attribute | Default | Min | Max |
|:---|:---|:---|:---|
| `minethespire:blocking_value` | 0 | 0 | 256 |
| `minethespire:blocking_value_change_rate` | −0.5 | −1024 | 1024 |

Every living entity has both attributes attached, so mobs can hold Blocking Value too.

## Decay and regeneration

`BlockingValueHandler.tick` runs on every living entity every tick and adds `blocking_value_change_rate` to the current value, clamped at 0. With the default rate of `−0.5`, Blocking Value **drains 10 points per second**.

The change rate is what buffs manipulate:

| Source | Modifier | Resulting rate |
|:---|:---|:---|
| Barricade effect | +0.5 | `0.0` — decay stops entirely |
| Quick Block effect | `amplifier + 1.5` | strongly positive, rapid regeneration |

Barricade is therefore not "extra shield" but "your shield stops draining", and Potion of Barricade holds that for 8 minutes.

## Absorption

On `LivingDamageEvent.Pre`, damage is reduced by up to the current Blocking Value, and the same amount is subtracted from the pool. If the pool covers the whole hit, the damage becomes 0.

Order matters within that event: **Vulnerable's damage multiplier is applied first**, then Blocking Value absorbs the already-amplified number. Intangible's flat clamp to 1.0 happens even earlier, on `LivingIncomingDamageEvent`.

## Gain methods

The handler exposes three distinct operations, and which one a source uses changes how it stacks:

| Operation | Behaviour | Used by |
|:---|:---|:---|
| `add` | adds to the current value | Frost Orb, Impervious, `prepared_blocking` relics |
| `grant` | sets the value to `max(current, amount)` — **does not stack** | Lizard Tail |
| `multiply` | multiplies the current value | Entrench |

| Source | Amount |
|:---|:---|
| Anchor | +30 on entering combat |
| Horn Cleat | +40 on entering combat |
| Captain's Wheel | +50 on entering combat |
| Frost Orb passive | `focus + 5` per cycle |
| Frost Orb evoke | `focus + 20` |
| `minethespire:impervious` | +200 when consumed |
| `minethespire:entrench` | ×2 when used |
| Lizard Tail death save | granted to `2 × max health` |

Because the attribute maximum is **256**, several of these are silently capped. Impervious at +200 nearly fills the pool by itself, and Lizard Tail's `2 × max health` grant clamps to 256 for any entity above 128 max health.

`prepared_blocking` (default 0, max 256) is the attribute the three ship relics contribute to; it is read once on entering combat and converted into Blocking Value, so raising it does not give you a permanent shield.

## The Blocking Value HUD row

`BlockingValueHudRenderer` draws an extra row of icons above the vanilla heart row using two sprites:

- `minethespire:hud/heart/blocking_value_full`
- `minethespire:hud/heart/blocking_value_half`

Behaviour details:

- The row is hidden entirely when Blocking Value is 0 or less, when the GUI is hidden, or when the current game mode cannot hurt the player.
- Icons continue the heart grid: they start immediately after the health and absorption containers and wrap at 10 per row, using the same compressed row height vanilla uses when you have many hearts.
- One icon represents 2 points, and the last icon renders as a half icon on an odd total.
- The renderer reports its own height back into `leftHeight`, so other HUD elements stack above it correctly.

There is no config toggle for this row; it appears whenever you have Blocking Value.

## The Combat State HUD

`CombatStateHudRenderer` draws a small indicator in the **bottom-right** corner, and is **off by default**. Enable the client config option `combat_state` ("Render Combat State Info") to see it.

| Element | Detail |
|:---|:---|
| Icon | `minethespire:hud/combat_state_combat` while in combat, `minethespire:hud/combat_state_idle` otherwise |
| Icon size | 18 × 18, 8 px from both edges |
| Line 1 | `Time: <n>s` — remaining combat ticks rounded up to whole seconds |
| Line 2 | `Hostiles: <n>` — size of the hostile UUID set |
| Background | semi-transparent black panel behind the text |

Both strings are hard-coded English literals in the renderer, so they are **not translated** and will read `Time:` / `Hostiles:` even in a Chinese client.

## Jade integration

With Jade installed, a Blocking Value line is added to the tooltip of any living entity.

- Registered by `MineTheSpireJadePlugin` as an entity data provider plus an entity component provider, both for `LivingEntity`.
- The config entry is `config.jade.plugin_minethespire.blocking_value` ("Blocking Value"), enabled by default.
- The value is served from the server side and rendered as a success-coloured text element, so you can read a mob's shield before committing to a hit.

## Practical reading

Because decay is 10 points per second, Blocking Value is a burst resource, not a passive buff. The intended loops are: stack `prepared_blocking` relics so every fight opens with a shield; keep a Frost Orb channelled for a steady trickle; drink Barricade to freeze the pool; and save Entrench for doubling a pool you have just filled.

[Back to index](index)
