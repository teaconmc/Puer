---
title: "Designer Workflow"
navigation:
  title: "02 Designer Workflow"
---

# Designer Workflow

## Three tabs

The Designer has three fixed tabs:

- **Parameters** edits commands, chains, and the in-world preview.
- **Tada** asks the server to package the current MadParticle command as an item.
- **Settings** adjusts particle capacity, threads, takeover behavior, translucency, and the light cache.

The Settings tab pauses the in-world preview. The other pages do not deliberately pause the game.

## Editing and unwrapping a command

The top text box holds the complete command and accepts up to `32500` characters. Changes in the right parameter panel rebuild the text. After pasting an existing command, use Unwrap to split its arguments back into editable controls. Copy sends the current complete command to the system clipboard.

The central chain list represents each segment separated by `expireThen`. Selecting a segment edits only that segment on the right. After adding, deleting, or rearranging segments, inspect the generated full text again.

## In-world preview

The left panel controls the preview emission period and optional absolute coordinates. Empty coordinates use the current client command-source position; filling all three previews from that explicit location. A period of `1` attempts an emission every client tick.

Left-click empty preview space to capture the mouse and rotate the view, right-click to release it, and scroll to change third-person camera distance. The particle browser selects the texture to reuse.

::: warning
When client frame rate is at or below `30 FPS`, the Designer pauses particle preview and displays a warning. This protects only the editing screen; a server command already running is not stopped automatically.
:::

## Command-block entry point

The default `optimizeCommandBlockEditScreen=true` setting widens the command-block input. When its content is empty or starts with `mp`, `madparticle`, or their slash-prefixed forms, the screen also offers an Edit in MadParticle Designer button and passes the current text to the parser.

Disabling the option restores the vanilla command-block layout. MadParticle commands themselves remain available.

## Rebuilding and recovery

Closing normally with `Esc` restores the previous camera and retains the Designer instance. `Ctrl+M` rebuilds it and clears the current screen object, which is useful for an unparseable old command or stale panels. Copy anything important before rebuilding.

[Back to the MadParticle index](index)
