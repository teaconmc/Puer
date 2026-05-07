---
title: "Dialogue Files"
navigation:
  title: "03 Dialogue Files"
---

# Dialogue Files

```
data/<namespace>/chatbox/dialogues/<name>.json
```

Each file is one conversation document. It holds named **groups**, and each group is an ordered array of **lines**. `/chatbox skip <file> <group> [index]` starts playback at a given line.

## Top-Level Fields

| Field | Default | Meaning |
|:---|:---|:---|
| `dialogues` | required | Object mapping group name to an array of line objects |
| `isEsc` | `true` | Whether Escape may close the dialogue |
| `isPause` | `true` | Whether the dialogue pauses the game (single-player) |
| `isHistoricalSkip` | `true` | Whether already-seen lines may be fast-forwarded |
| `theme` | — | Theme identifier to switch to for this conversation |
| `isScreen` | — | `true` for screen mode, `false` for overlay mode |
| `animationFPS` | `60` | Animation frame rate for component keyframes |
| `autoPlayTick` | `20` | Ticks auto-play waits on a finished line |
| `maxTriggerCount` | `-1` | Server-side only: how many times a player may trigger this file |
| `criteria` | — | Server-side only: advancement criteria that auto-trigger this file |

`maxTriggerCount` and `criteria` are explicitly marked server-only in the source; the client never acts on them.

## Line Fields

Every element of a group array accepts these keys. All of them are optional except that a line with no visible content will simply render an empty box.

| Field | Default | Meaning |
|:---|:---|:---|
| `dialogBox` | `{name:"", text:""}` | The speaker name and the line text |
| `portrait` | — | List of portraits to show; each entry is a theme portrait name, or an object overriding one |
| `options` | — | Choice list presented on this line |
| `sound` | — | Sound played when the line starts |
| `bgm` | — | Background music started on this line |
| `stayTick` | `0` | Ticks to hold the line before it may advance |
| `command` | — | Command string run on the server when this line is reached |
| `backgroundImage` | — | Full-screen background texture |
| `video` | — | Video component (requires WaterMedia) |
| `clearOldPortrait` | `true` | Clear all portraits carried over from the previous line |
| `removePortrait` | — | When not clearing, remove only these portrait ids |
| `renderEvents` | — | Render events attached to the line itself |

### Portrait entries

A `portrait` entry may be either form:

- **A string** — the name of a portrait defined in the active theme.
- **An object** — the same fields a theme portrait accepts, plus `id` (which theme portrait to base on) and `replace`. With `replace: true`, any existing portrait carrying that id is removed first, so the new definition takes its place rather than stacking.

If the named portrait does not exist in the theme, the line logs an error and that entry is skipped; the rest of the line still renders.

### Options

| Field | Default | Meaning |
|:---|:---|:---|
| `text` | — | Option label |
| `isLock` | `false` | Whether the option starts locked |
| `unlockCommand` | — | Condition that decides whether the option unlocks |
| `next` | — | Where to jump when chosen |
| `click` | `{}` | An event `type` and `value` fired on click |
| `tooltip` | — | Hover text |

`next` accepts three shapes, all handled by the `JUMP` event:

- empty — advance to the following line,
- an integer — jump to that line index in the current group,
- any other string — jump to the group with that name (the literal `this` means "stay put").

## Video

The `video` object takes `path`, plus `canControl`, `canSkip` and `loop` (all `true`, `true`, `false` by default). `path` is resolved first against the game directory, then as a plain file path, then as a URI.

::: warning
Video needs WaterMedia. Without it the video component is silently dropped — the line still plays, just with no video. Treat video as an optional enhancement, never as a required step in a scripted sequence.
:::

## Sound and Music

`sound` fires once when the line begins; `bgm` starts background music. The client config option `soundInterruptionEnabled` decides whether a line with no new sound interrupts whatever is still playing. The bundled sound event is `chatbox:ciallo`.

## Text Capabilities

Line text is not plain text. It supports, all at once:

- translation keys, so a single file can serve multiple languages,
- vanilla formatting codes for colour, bold and italic,
- `@s`-style player substitution,
- inline MVEL blocks written as `` `<<expression>>` ``,
- target placeholders such as `` `<player>` `` and `` `<target>` ``,
- a `ruby` annotation form used by the bundled demo for furigana-like side text.

Details of the expression and placeholder syntax are in [MVEL and Placeholders](06_mvel_and_placeholders).

## Groups and Criteria: One Group Per File

The criteria system attaches to a **file**, but a file can hold many groups — so the implementation binds the criteria to whichever group comes first in the group set.

::: warning
If you use `criteria`, put exactly one group in that file. With several groups, only one of them can ever be auto-triggered, and which one is not something you control. The source itself records this as a known limitation. Files that are only started by `/chatbox skip` are unaffected and may hold as many groups as you like.
:::

[Back to the ChatBox index](index)
