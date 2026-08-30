---
title: Perforation Table
navigation:
  title: Perforation Table
description: Five modes, and the tool in your hand decides which one you are in.
---

# Perforation Table

The Perforation Table is the workbench. It is the only block in the mod **without** a block entity — it holds nothing between sessions; all state lives on the items you put in.

It is also the toughest block here, at strength 2.5 against 0.8 for the three boxes.

## The mode is chosen by what you insert

There is no mode button. The table looks at three slots — the main Note Grid, a second grid, and a tool — and picks a mode. The current mode's description is shown in the screen, so you always know where you are.

| Main grid | Tool | Second grid | Mode | Screen text |
|:---|:---|:---|:---|:---|
| empty | — | — | **EMPTY** | "Put the Note Grid in to operate" |
| present | empty | — | **CHECK** | "Check the Note Grid" |
| present | **Awl** | — | **PUNCH** | "Punch the Note Grid with Awl" |
| present | **Paper Paste** | — | **FIX** | "Fix the Note Grid" |
| present | **Shears** | must be **empty** | **CUT** | "Cut the Note Grid from the end of the current page" |
| present | **Slime ball** | a **Note Grid** | **CONNECT** | "Connect the right Note Grid to the end of the left one" |
| present | anything else | — | falls back to **CHECK** | |

That is why the creative tab includes vanilla shears and a slime ball: **shears cut paper, slime glues it**. Nothing else in the mod uses them.

## The five modes

**CHECK** — read-only inspection. With an empty tool slot you can page through the grid and see what is punched without any risk of editing it. This is the safe default, and it is also where an unrecognised tool lands you, so a stray item can never damage a grid.

**PUNCH** — the actual composing mode. With the Awl in the tool slot you click cells in the note editor to add and remove notes. The editor shows the grid as a page of 64 beats against 25 pitch rows.

**FIX** — repair. Paper Paste in the tool slot restores a damaged grid.

**CUT** — split. With shears and **no second grid**, the table cuts the grid at the end of the page you are currently viewing, giving you two shorter grids. There is one guard: attempting to cut when you are on the last page reports **"Cannot cut the last page"** rather than producing an empty grid.

**CONNECT** — join. With a slime ball and a second Note Grid, the right-hand grid is appended to the end of the left-hand one. The mode only becomes available if the two grids can actually be joined — the combined length must fit inside the 64-page ceiling, so joining a 40-page and a 30-page grid is not offered.

## Practical workflow

1. Craft a one-page grid, or take a pre-sized blank from the creative tab.
2. Insert it, add the **Awl**, and punch your melody page by page.
3. Need more room? Punch a second grid and **connect** it with a slime ball.
4. Made a section you want to reuse? **Cut** it out with shears and keep the piece.
5. Grid getting worn? **Fix** it with Paper Paste.

Because CUT and CONNECT are exact inverses, a long composition is comfortable to work on in pieces — write four-page phrases separately, then glue them in the order you want.

## Next

- A faster way to enter a lot of notes: [04 Writing music](04_writing_music)
- Automating the punching entirely: [07 Puncher Box and technical notes](07_puncher_box_and_technical)

[Back to index](index)
