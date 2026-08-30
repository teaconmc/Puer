---
title: "Themes and Components"
navigation:
  title: "04 Themes and Components"
---

# Themes and Components

```
data/<namespace>/chatbox/theme/<name>.json
```

A theme is the visual half of the system. It defines the dialogue box, the option buttons, the named portraits a dialogue may summon, the function buttons, the key prompt, and any reusable animations. Switching theme with `/chatbox theme` re-skins a conversation without editing it.

## Theme Sections

| Section | Shape | Purpose |
|:---|:---|:---|
| `portrait` | object, name → portrait | The named portraits dialogue lines may reference |
| `option` | one portrait-like object | Template for every option button |
| `dialogBox` | one portrait-like object | The dialogue box frame and its text layout |
| `functionalButton` | array | Log / fast-forward / auto-play buttons |
| `keyPrompt` | object | The "right-click to continue" hint |
| `customAnimation` | object, name → keyframe list | Reusable animations referenced by name |

## Shared Component Fields

Every visual element accepts this common set:

| Field | Meaning |
|:---|:---|
| `x`, `y` | Position, interpreted against the alignment |
| `width`, `height` | Size |
| `widthReference`, `heightReference` | What the size is measured relative to |
| `scale` | Uniform scale factor |
| `alignX`, `alignY` | Anchor edge: `left`/`center`/`right`, `top`/`center`/`bottom` |
| `renderOrder` | Draw order; lower is further back |
| `brightness` | Brightness multiplier |
| `opacity` | Alpha |
| `angle` | Rotation |
| `hidden` | Start hidden |
| `renderEvents` | Events attached to this component |

### Default render order

Because layering trips people up, the built-in defaults are worth memorising:

| Element | Default `renderOrder` |
|:---|:---|
| Video | `-1` |
| Dialogue box | `0` |
| Options | `10` |
| Portraits | `20` |
| Function buttons | `30` |
| Key prompt | `40` |

A dialogue-line portrait override that omits `renderOrder` deliberately resets it to unset rather than inheriting `20`, so an override can fall behind the box if you do not set it explicitly.

## Portrait Fields

Portraits carry the shared fields plus:

| Field | Meaning |
|:---|:---|
| `type` | `texture` (default), `player_head`, `item`, `entity` |
| `value` / `texture` | The resource to render; the two names are aliases |
| `hoverTexture` / `selectTexture` | Hover appearance; also aliases |
| `isLock`, `lockTexture` | Locked state and its texture |
| `itemCount` | Stack size, for `item` portraits |
| `animation` | Named animation to play |
| `customAnimation` | Inline keyframe list |
| `loop` | Loop the animation |
| `attachment` | Extra items drawn attached to this portrait |
| `yOffset`, `stareAt`, `stareAtX`, `stareAtY` | Entity-render only: vertical offset and gaze target |

### The four portrait types

| `type` | What `texture` means |
|:---|:---|
| `texture` | A texture identifier, drawn as a flat image |
| `player_head` | A player name — `@s` renders the viewing player's own head |
| `item` | An item identifier, rendered as an item stack with `itemCount` |
| `entity` | An entity name or `@s`, rendered as a living entity that can be told where to look |

`stareAt` with `stareAtX` / `stareAtY` points an `entity` portrait at a screen position, which is what makes a rendered character appear to follow the dialogue.

## Dialogue Box and Options

The dialogue box adds text layout on top of the shared fields:

| Field | Meaning |
|:---|:---|
| `lineWidth` | Wrapping width for the body text |
| `nameX`, `nameY` | Speaker-name offset inside the box |
| `textX`, `textY` | Body-text offset inside the box |
| `textAlign` | `left` (default), or another alignment |

Options add `optionChatX`, `optionChatY` and `textAlign` for label placement, and use `texture` / `selectTexture` / `lockTexture` for their normal, hovered and locked art.

## Function Buttons

`functionalButton` is a list, and each entry's `type` picks its behaviour:

| `type` | Behaviour |
|:---|:---|
| `log` | Open the history-log screen |
| `fastforward` | Turn on fast-forward and cancel auto-play |
| `autoplay` | Toggle auto-play |

Each type has a built-in normal and hover texture, so a theme may list a button with no artwork and still get a working, styled control. Buttons default to a 5 × 8 size anchored bottom-right with `renderOrder` 30, and are auto-spaced horizontally by index — 5 pixels per step, leftwards for right-aligned buttons and rightwards for left-aligned ones — unless you set `x` yourself.

## Key Prompt

| Field | Default | Meaning |
|:---|:---|:---|
| `visible` | `true` | Show the prompt at all |
| `mouseTextureWidth` | `16` | Prompt icon width |
| `mouseTextureHeight` | `16` | Prompt icon height |
| `rightClickTexture` | — | Icon for "right-click to continue" |
| `scrollTexture` | — | Icon for "scroll to change option" |

The mod ships default `right_mouse` and `scroll_mouse` textures for these.

## Animations

`customAnimation` maps a name to a keyframe list; a portrait then plays it either by naming it in `animation` or by carrying its own inline `customAnimation`. Playback rate comes from the dialogue file's `animationFPS`, and `loop` decides whether it repeats. The `RESTART_ANIMATION` and `PLAY_ANIMATION` events let a render event restart an animation or switch to a different one mid-line — see [Events and Conditions](05_events_and_conditions).

::: info
Themes are client-side presentation only. A theme cannot gate progression, run commands or change what a dialogue says; it decides where things sit and what they look like.
:::

[Back to the ChatBox index](index)
