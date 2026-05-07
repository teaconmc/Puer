---
title: "Configuration"
navigation:
  title: "05 Configuration"
---

# Configuration

Extra Interaction has exactly one config file and it is **client only**. It is registered as a client config named `extra_interaction_client.toml`, and only when the game is running on a client — a dedicated server creates no config file at all.

The mod also registers a config screen factory, so the file can be edited in game through the Config button next to Extra Interaction in the mod list.

## Options

| Key | Default | Range | Meaning |
|:---|:---|:---|:---|
| `xPosPercent` | `70` | `0`–`100` | Horizontal position of the option list, as a percentage of screen width |
| `yPosPercent` | `50` | `0`–`100` | Vertical position of the first option, as a percentage of screen height |
| `optionWidth` | `120` | `30`–`999` | Width of one option row, in pixels |
| `optionHeight` | `20` | `13`–`99` | Height of one option row, in pixels |
| `showCount` | `3` | `1`–`12` | Number of option rows that are fully visible at once |

`xPosPercent` and `yPosPercent` are percentages in the file and are divided by 100 internally, so `70` and `50` mean 70% and 50%. Both are stored as decimals, which means fractional values such as `72.5` are accepted.

The in-game screen shows translated names for all five options, from the `extra_interaction.configuration.*` keys in the language files.

## How the Values Interact

- The list is anchored so that the first row is vertically centred on `yPosPercent`; the visible region extends downward from there by `optionHeight × (showCount + 1)`.
- `showCount` only controls how many rows are visible, never how many exist. Extra options remain reachable by scrolling, and a scrollbar appears once the option count exceeds `showCount`.
- `optionHeight` has a floor of `13` because the row must stay tall enough to fit a line of text and the 14-pixel icon.

::: info
Every option here is cosmetic layout. There is no server config and no common config, so these settings cannot be enforced or overridden by a server, and they never affect which interactions exist or whether they can be used.
:::

## Rebinding the Key

The interact key is a normal key mapping, `key.extra_interact.interact`, listed under the Gameplay category in Options → Controls. It is not part of the config file. Rebinding is the supported way to resolve a clash with the vanilla Swap Item With Offhand action, although the mod already suppresses that vanilla action while options are on screen — see [Option List and Controls](02_option_list_and_controls).

[Back to the Extra Interaction index](index)
