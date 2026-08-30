---
title: "Projection Designer"
navigation:
  title: "09 Projection Designer"
---

# Projection Designer

Projection blocks render dynamic world text and route information as a projection. Two projector blocks exist: `station_name_projector` and `platform_projector`. Both attach to the side of a solid block and emit light level 4.

## Projector blocks

Place a station name projector near a station; it automatically binds the nearest station within 16 blocks:

<recipe id="superpipeslide:station_name_projector"/>

Place a platform projector near a claimed platform; it automatically binds the nearest platform within 24 blocks:

<recipe id="superpipeslide:platform_projector"/>

Right-clicking either block opens its device panel:

- **Binding**: `Auto` or `Manual`; the station projector stores the bound station, the platform projector stores the bound platform and route layout.
- **Offset**: X and Y offsets between `-10` and `10`.
- **Backside projection**: optionally project on the reverse face.
- **Station name projector**: can show an exit label of up to 4 characters.
- **Platform projector**: chooses `Auto`, `Forward`, `Reverse` or `Bidirectional` service direction.

## Projection layout designer

The layout designer item opens your **personal layout library**:

<recipe id="superpipeslide:projection_layout_designer"/>

- Right-click the item to create, duplicate, edit or delete layouts from templates or a blank canvas.
- Use the item on a projector to apply the selected layout.
- Sneak-use on a projector to copy its applied layout into your library.
- Layouts are target-specific: a `station_name` layout can only be applied to a station name projector, and a `platform` layout only to a platform projector.

Deleting a library layout does not change projectors that already have an applied copy.

## Canvas and components

The canvas editor supports layers, document size, templates and a component palette. Available components include:

- Background panel, dividers and custom text.
- Station title groups, station name text, translated name text and route lists.
- Route text, route icons, outline icons, capsules and backplates.
- Exit badges.
- Platform title groups, platform badges, direction titles and status tags.
- Current line nodes, single line bands, icons, terminal strips, transfer lists and transfer matrices.

Every component has alignment, overflow, font size, colors, border, fill, opacity and visibility controls. Text overflow can scale to fit, scroll, wrap, hide or compact into a `+N` count. Route colors can follow route order or the first route.

## Network images

Projection layouts can include a network image component. The client downloads the image URL asynchronously; the server never fetches it. The current defaults:

- Network images enabled: `true`.
- Plain HTTP allowed: `false` (HTTPS only).
- Cache size: 64 images.
- Max download: 4 MiB.
- Max decoded size: 2048 × 2048 pixels.

The image component reports loading, success, too-large and decode-failure states. WebP is reported as unsupported.

[Back to the SuperPipeSlide index](index)
