---
title: "Ammo and Weapons"
navigation:
  title: "03 Ammo and Weapons"
---

# Ammo and Weapons

Launchers do not hold ammunition themselves. They read a chosen ammo type off the weapon, then pull matching snowballs out of your inventory — preferring storage tanks over loose stacks.

## Storage Tanks

Two tank items are registered, `snowball_tank` and `large_snowball_tank`, and both start empty. Their tooltips describe the full loading protocol:

| Action | Result |
|:---|:---|
| Tank in off-hand, snowballs in main hand, use | Load those snowballs into the tank |
| Off-hand empty, tank in main hand, use | Take one snowball back out |
| Tank in main hand plus the modifier key | Take **all** snowballs out |

A tank stores a large number of a single snowball type and then serves as the ammunition source for weapons. The stored type lives in the `bsf3lite:ammo_item` data component, and the fill level is carried on the stack's damage value — which is why the weapon's ammo search picks the **fullest** matching tank when you carry several.

## Choosing Ammunition

| Key | Default | Action |
|:---|:---|:---|
| `key.bsf3lite.ammo_switch_next` | `H` | Switch to next ammo |
| `key.bsf3lite.ammo_switch_prev` | `G` | Switch to previous ammo |

Both sit in the key binding category **Better Snowball Fight** (`bsf3lite:main`). The HUD shows the previous, current and next ammunition alongside an "Ammo in use:" label, built from a launch order the weapon recomputes from your inventory each tick.

Which snowballs are offered depends on the weapon: each launcher carries a type flag, and only snowballs whose flag overlaps are eligible. Some weapons additionally refuse loose snowballs.

::: info
The compatibility indicator keys in the language file are spelled `lunch_yes_cannon` / `lunch_no_cannon` and so on — "lunch" rather than "launch". It is only an internal key name and does not affect the displayed "Cannon ✓ / Cannon ✗" text, but it is what you will grep for.
:::

## Cannons

| Item | Behaviour |
|:---|:---|
| `snowball_cannon` | Launches a high-speed snowball |
| `powerful_snowball_cannon` | Snowball moves faster and carries a weakening effect |
| `freezing_snowball_cannon` | Snowball carries a freezing slow effect, and significantly enhances ice-type snowballs |
| `implosion_snowball_cannon` | Consumes Explosive Snowballs to push every entity ahead of it |

The Snowball Cannon is the base of the family. The Powerful and the Freezing cannon are the only two weapons made by **smithing transform**, using the `snowball_cannon_upgrade_smithing_template` plus a core — the template tooltip lists "Applies to: Snowball Cannon" and "Ingredients: Snowball Cannon Upgrade Core" explicitly. Those two are also the only smithing recipes in the mod besides the Netherite Snowball Clamp, which follows the usual vanilla netherite-upgrade pattern. The Implosion Snowball Cannon, despite being the most exotic of the four, is an ordinary shaped recipe.

The Implosion Snowball Cannon is the odd one out: it is a pusher rather than a damage dealer, it has its own 32-block fixed-range sound event, its own particle type, and it **destroys Loose Snow to form snowballs**.

## Rifles

| Item | Relationship |
|:---|:---|
| `snowball_rifle` | Base rifle |
| `powerful_snowball_rifle` | Higher-powered variant |
| `freezing_snowball_rifle` | Freezing variant |

The three rifles mirror the cannon tiers. Note that no rifle appears in the 62 recipe files — the rifles are registered and functional but have **no crafting recipe in this build**.

## Rapid Fire

| Item | Behaviour |
|:---|:---|
| `snowball_machine_gun` | Fires snowballs quickly; **can only fire from snowball tanks** |
| `snowball_shotgun` | Fires four snowballs at once, with heavy recoil |

The machine gun's tank-only restriction is stated in its own tooltip. It also tracks a firing timer and an overheat flag in data components, and has a dedicated `machine_gun_cooling` sound — sustained fire forces a cooldown.

The shotgun's recoil is not fixed: its tooltip says the magnitude **depends on the snowball type loaded**, so a heavy obsidian load kicks harder than a smooth one. It has two firing sounds, `shotgun_fire1` and `shotgun_fire2`.

## Special Launchers

| Item | Behaviour |
|:---|:---|
| `sculk_snowball_launcher` | Launches noise-making Sculk Snowballs |
| `snowman_in_hand` | High-speed snowball launch; modifier reduces scattering, and it absorbs any snow to refill its storage |

The Sculk Snowball Launcher is where the mod's **87 meme sound events** live. Modifier plus mouse scroll cycles the sound, and the HUD reports either "Sound *n*" or "Random sound":

- sound id `-1` means random selection,
- ids `0`–`86` select `memesound00` through `memesound86` directly.

The selected id is stored per stack in the `bsf3lite:sculk_sound_id` component, and cycling wraps around in both directions.

## Recipes

<recipe id="bsf3lite:snowball_cannon"/>

<recipe id="bsf3lite:snowball_machine_gun"/>

<recipe id="bsf3lite:snowball_shotgun"/>

<recipe id="bsf3lite:snowball_storage_tank"/>

[Back to the index](index)
