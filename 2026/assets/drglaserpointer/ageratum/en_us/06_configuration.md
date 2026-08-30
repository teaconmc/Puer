---
title: Configuration
navigation:
  title: Configuration
description: The one common option and the two client options, their real keys, defaults and ranges.
---

# Configuration

The mod registers two config specs: a **COMMON** one and a **CLIENT** one. Each option lives in its own TOML section, because the config builder pushes a section named after the option's path before defining the key.

## Common config

| Section | Key | Type | Default | Range |
|:---|:---|:---|:---|:---|
| `[laser_range]` | `laserRange` | integer | `80` | `0` – `511` |

`laserRange` is the reach of the pointer's ray trace, in blocks. It is used for three things at once: how far the aim ray is cast, how far away another player must be before their beam stops being requested, and the divisor for the beam's fade-out, so raising it also makes short beams look more opaque.

Comment in the file: *"The range of laser. Default value: 80"*.

## Client config

| Section | Key | Type | Default | Range |
|:---|:---|:---|:---|:---|
| `[cube_mark_model]` | `cubeMarkModel` | boolean | `false` | — |
| `[mark_display_range]` | `markDisplayRange` | integer | `120` | `0` – `511` |

- `cubeMarkModel` — `false` (default) renders marks as a **sphere**; `true` renders the **cube** model instead, drawn at 75 % scale. Comment: *"Set to true to enable cube mark model."*
- `markDisplayRange` — how far away a mark may be and still get a HUD label and a glow outline, in blocks. Comment: *"The display range of marks. Default value: 120"*.

The same range value is used by both the HUD label pass and the glow-collection pass, so lowering it hides labels and outlines together.

## Restart notes

`laserRange` is read **once**, into a constant, the first time the pointer's hit helper class is loaded. Changing the value in the file will not take effect in a running game, and the derived squared range is computed from that same snapshot — restart the game (and the server, if the value differs there) before testing a new range.

`cubeMarkModel` and `markDisplayRange` are read live every frame or tick, so they can be changed without a restart.

## Which side matters

`laserRange` is a COMMON option, but the aim ray, the beam and the mark request are all evaluated on the **client**. In multiplayer the value that decides how far you can mark is therefore the one in **your own** config file, not the server's. If a server wants a consistent reach it has to hand out a matching config, because the server does not re-check the distance of an incoming mark.

[Back to index](index)
