---
title: "Option List and Controls"
navigation:
  title: "02 Option List and Controls"
---

# Option List and Controls

The option list is rebuilt from scratch every HUD frame. It reads whatever the crosshair currently points at, collects the interactions registered for that target, and draws them in registration order.

## What Gets Targeted

- A block hit contributes the block position, and the mod looks up interactions by the block's registry ID at that position.
- An entity hit contributes the entity, and the mod looks up interactions by the entity type's registry ID.
- A miss, a null level, a null player, or any open screen clears the list and draws nothing.

Because block lookups happen by the block ID at the hit position, an interaction registered for `minecraft:oak_door` applies to every oak door in the world, not to one specific placement.

## Controls

| Input | Effect |
|:---|:---|
| Interact key (`F` by default) | Run the currently selected option |
| Mouse wheel up | Move the selection up, wrapping around |
| Mouse wheel down | Move the selection down, wrapping around |
| Hold Ctrl (Command on macOS) | Force every registered option to show, including ones you cannot use |

The selected row is drawn in yellow and gains a small rendered key cap showing the current interact key binding, so a rebound key is reflected on screen.

::: warning
While you are looking at a target that has **two or more** options, the mouse wheel is consumed by the option list and the event is cancelled. Hotbar slot switching by scrolling will not work in that moment. A single option does not capture the wheel.
:::

## The Vanilla Key Conflict

The default `F` binding is also the vanilla Swap Item With Offhand key. A client-side mixin wraps one `consumeClick()` call inside the vanilla keybind handler (the tenth such call, ordinal `9`) and forces it to report "not clicked" whenever both conditions hold:

- the key being checked is the same key as the interact binding, and
- the option list currently has at least one entry.

The practical result is that pressing the interact key while options are on screen runs the interaction *instead of* the vanilla action on that key, rather than both. When no option is showing, the vanilla action behaves normally. Rebinding the interact key in Controls is fully supported.

## Usable and Locked Options

Every interaction carries a condition. When the list is built, each entry is tested against the current player and target:

- If the condition passes, the entry is added and marked usable.
- If the condition fails, the entry is added **only** while the force-display key is held, and it is marked unusable.

Unusable entries are drawn with a padlock icon in place of the interaction's own icon. Pressing the interact key on an unusable entry does not run anything; instead the interaction's tip is shown as a red message above the hotbar.

## Tips

An interaction may carry any number of tip strings and one is chosen at random each time. When an interaction carries no tips at all, one of three fallback keys is used at random: `extra_interaction.default_tip0`, `extra_interaction.default_tip1`, `extra_interaction.default_tip2`.

Tips are displayed through the translation system, so a tip that is a valid translation key is localised, and a tip that is plain text is shown verbatim.

::: info
Two localisation quirks exist in the shipped resources. The three `extra_interaction.default_tip*` entries hold the same Chinese text in `en_us.json` and `zh_cn.json`, so the fallback tip is not translated into English. The bundled entity-talk interaction also passes a plain Chinese sentence as its tip rather than a translation key, so that sentence is shown as-is in every language.
:::

## Labels and Icons

Option labels are resolved in two steps: the registered name is first looked up as a translation key, falling back to the literal string if there is no such key, and the result then has its [placeholders](04_placeholders) resolved. That is why an interaction can be registered under a lang key, under plain text, or under a placeholder such as `` `<name>` ``.

Icons are optional. An interaction with no icon simply draws its label further left. The mod's own textures are `extra_interaction:textures/option.png` for the row background, `extra_interaction:textures/lock.png` for locked entries, and `extra_interaction:textures/talk.png` for the bundled talk interaction.

## Scrolling and Overflow

Only a configurable number of rows is fully visible; the region is clipped to that height. Once the selection moves past the visible window, the whole list shifts upward so the selection stays in view. When there are more options than visible rows, a thin scrollbar is drawn to the left of the list, with a thumb whose size and position reflect the current selection.

[Back to the Extra Interaction index](index)
