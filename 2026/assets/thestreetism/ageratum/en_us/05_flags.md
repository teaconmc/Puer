---
title: "Flags"
navigation:
  title: "05 Flags"
items:
  - thestreetism:flag_cloth
---

# Flags

Flags are the mod's larger building feature: you construct a physical rectangle out of blocks, then stitch it into a single editable flag.

**Remember that none of the three pieces can be crafted** — Flag Pole, Flag Cloth and Stitching Tool all have no recipe, so this system is creative-only unless an operator gives them out. See [01 Getting started](01_getting_started).

## The two blocks

| Block | Strength | Sound | Notes |
|:---|:---|:---|:---|
| Flag Pole | 2.0 / 6.0 | metal | the supporting frame |
| Flag Cloth | 0.5 | wool | the flag surface |

Both are non-occluding, so they do not darken neighbours or hide adjacent block faces.

## Building a valid flag

The structure rules are strict, and the mod tells you exactly which one you broke. All of the following must hold:

1. **Flat** — the cloth must be one block thick. A two-deep slab of cloth is rejected.
2. **A complete rectangle** — every cell of the rectangle must be filled. Notches, holes and L-shapes are rejected.
3. **Corners supported by flag poles** — the corners of the rectangle must sit against flag poles.
4. **Not already stitched** — a cloth block already bound to a finished flag cannot be re-used.

If any check fails you get a specific chat message rather than a generic error, which makes debugging a large flag straightforward.

## Stitching

Hold the Stitching Tool and right-click **a cloth block** — not a pole. Right-clicking anything else tells you to target cloth.

- If that cloth is **not yet stitched**, the tool attempts to stitch the whole structure and reports either success or the exact rule you failed.
- If that cloth is **already part of a stitched flag**, the same right-click opens the **Flag Editor** instead. The tool is both the builder and the key.

The stitching tool has 50 uses.

Once stitched, the structure gains a controller that stores the flag's data. Note that the controller block entity is attached to the **cloth**, not to a separate machine block — there is no separate controller block to place or find.

## The flag editor

The editor is richer than the banner one:

| Control | Purpose |
|:---|:---|
| Name | the flag's name |
| Flag Text | the displayed text |
| Font | choose among registered fonts |
| Colour | text colour |
| Align | left, centre or right |
| Preview | live preview of the result |
| Reload Fonts | re-scan fonts without restarting |
| Save | commit the change |
| Text / JSON | switch between plain text and raw component JSON |

**The JSON mode is forgiving.** If what you type is not valid component JSON, the editor tells you so and keeps using the last valid version rather than clearing your flag or crashing. You can experiment without losing work.

**Reload Fonts** exists because the mod builds its own font atlas rather than relying only on vanilla fonts. If you add a font while the game is running, this button picks it up.

## Flags versus banners

Both display styled text, so the practical differences are what matter:

| | Street Banner | Flag |
|:---|:---|:---|
| Made of | one item, placed as an entity | a built rectangle of blocks |
| Craftable | yes | **no** |
| Placement | three right-clicks between two anchors | build, then stitch |
| Editor | colour, text, scale, alignment | the above plus name, fonts, preview, JSON mode |
| Persistence | entity | block structure with saved data |

Use banners for a quick sign on a wall; use flags when you want a large, font-controlled surface and have creative access to the parts.

[Back to index](index)
