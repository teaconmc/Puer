---
title: "Pipe Appearance"
navigation:
  title: "10 Pipe Appearance"
---

# Pipe Appearance

Pipe appearances change how rendered pipe segments look without changing slide mechanics. Appearances are stored per dimension in saved data and synced to clients.

## Appearance tool

Craft the pipe appearance tool:

<recipe id="superpipeslide:pipe_appearance_tool"/>

- Right-click empty space to open the appearance editor and store a draft on the tool.
- Right-click a pipe segment to brush the configured draft onto that segment.
- Sneak-right-click a pipe segment to copy its current appearance as the new draft.
- Right-click a pipe segment with no draft to open the editor for that segment.

Edits raycast up to 8 blocks with a pick radius of `0.58`.

## Structure and variant

The editor separates the structure style from the material coating:

- **Round Pipe**: classic circular pipe; Basic or Ribbed variant.
- **Box Pipe**: stable square profile; Basic, Split or Ribbed.
- **Triangular Beam**: inverted triangle track; Basic or Keel.
- **Rail Track**: twin rails with optional ties; Basic or Heavy.
- **Slide Channel**: open U-channel; Basic, Rim, Curved or Curved Rim.
- **Faceted Pipe**: octagonal Minecraft-style pipe; Basic, Edge or Ribbed.
- **Monorail Beam**: compact beam with a top track; Basic or Heavy.
- **Covered Tube**: base track with a transparent canopy; Half, Framed or Ringed.

## Structure parameters

Each style exposes its own parameters, including:

- `radius`, `width`, `height`, `depth`, `top_flatness`
- `gauge`, `rail_width`, `rail_height`, `tie_interval`, `tie_width`
- `rim_width`, `wall_slope`, `floor_ratio`, `edge_width`

The preview shows the player slide line as a cyan guide and marks acceleration, highway, one-way and platform overlays for the selected segment.

## Material slots and coatings

Material slots vary by structure and variant. Slots include Body, Ribs, Top/Bottom, Sides, Top Plate, Keel, Rails, Ties, Bed, Floor, Walls, Rims, Edges, Beam, Track, Base, Canopy and Frame. Click any slot to open the coating selector:

- Use a block from your inventory as the texture source.
- Choose from recommended material categories: Minimal, Base, Warm Wood, Industrial, Minerals, Glass, Energy, Nature, Nether and End.
- Pick a custom color or enable the overall glow toggle.
- Standard, modded and complex textures carry risk notes when a texture may not look correct on the model.

## Dye and apply

The tool preset can be saved, then applied to a single segment or to the whole connected run. The editor also marks whether the target segment currently has acceleration, highway, direction or platform data.

[Back to the SuperPipeSlide index](index)
