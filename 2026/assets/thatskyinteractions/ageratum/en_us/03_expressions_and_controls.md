---
title: Expressions, Camera, and Calls
navigation:
  title: Expressions, Camera, and Calls
---

# Expressions, Camera, and Calls

## Solo Expressions

Press `]` to open the expression menu. The current built-in definitions are:

| Expression | Selectable levels | Action type |
|:---|:---:|:---|
| Bow | 2 | Two separate animations |
| Nod | 1 | One animation |
| No thanks | 1 | One animation |
| Point | 1 | Continuous animation |
| Wave | 3 | Three separate animations |

Expression icons, sort priority, level lists, and animation IDs are data-driven. After an expression is selected, the client requests execution from the server, and synchronized state makes the action visible to other players.

## Interruption and Input Restrictions

Expressions can declare different control rules:

- An expression that allows movement interruption is canceled when the local player moves.
- An expression that restricts movement blocks movement input.
- An expression that restricts the camera constrains first-person view and limits the angle between body and view in third person.
- An expression that restricts interaction cancels the relevant Attack or Use input.

These rules depend on the selected expression's active state; not every expression applies every restriction.

## Camera Control

`=` is the default Unlock Camera key. In the unlocked state, the camera controller takes over third-person rotation and zoom: mouse movement orbits the view, the wheel changes distance, and movement direction is remapped relative to the camera. Press the key again to restore the locked state.

While `Alt` is held, the camera controller does not take over ordinary turning input. Rebind the key in Controls if another mod uses it.

## Player Calls

A call creates a particle at the player's head and plays a voice sound with note-based pitch variation. The server must first select a non-default voice for that player; the default `thatskyinteractions:none` voice produces no call.

After a voice is set, a player can:

- Hold the `Tab` interaction modifier and trigger Attack, then release the combination to send one call.
- Send a non-empty chat message, which also sends one call automatically.

Built-in voice data includes `bird`, `cat`, `fox`, `ghast`, `happy_ghast`, `player`, and `wolf`. See [Server Administration and Data Packs](05_admin_and_datapacks) for the administration command.

[Back to the That Sky Interactions index](index)
