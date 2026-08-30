---
title: "Editing Players and Text"
navigation:
  title: "02 Editing Players and Text"
---

# Editing Players and Text

## Opening the editor

A Creative player can right-click a placed doll normally to open its editor. The screen contains Player ID and Short Content fields, plus Cancel and Done buttons.

- **Done:** sends the current contents of both fields to the block and closes the screen.
- **Cancel:** closes the screen without sending this edit.

::: tip
Sneak-right-click cycles the pose instead of opening the editor. Stand normally when you only want to change text.
:::

## Player ID

Player ID accepts up to `64` characters. Saving a non-empty value creates an unresolved player profile, which the client skin cache then uses to look up the skin.

- An exact player name is the most reliable input.
- Saving an empty value clears the profile, after which the renderer uses the default player skin.
- A profile that has not resolved yet, or cannot resolve, may temporarily use the default skin as well.

Player ID affects only the profile and skin. It does not change the pose or block orientation.

## Short Content

The Short Content editor accepts at most `16` lines. Saving blank content suppresses the overhead text entirely.

The renderer wraps the saved text again to a maximum width of `100` pixels, so the in-world result can contain more visual lines than were entered manually. It draws white text over a translucent background and rotates it toward both the viewer's yaw and pitch.

## Saved data

The player profile, current pose, and Short Content are stored in the block entity and synchronized to clients. The editor changes only the profile and text; the pose is changed separately in the world.

[Back to the Display Doll index](index)
