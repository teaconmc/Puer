---
title: "The guide sign"
navigation:
  title: "05 The guide sign"
items:
  - path_script:guide_sign
---

# The guide sign

A Guide Sign is a finished path in item form. Instead of assigning one of your own maids, it summons a **disposable guide** who exists only for the tour.

## Making one

Combine a source item with a sign **on an anvil**. The mod's own transfer recipe accepts three sources:

| Source | Result |
|:---|:---|
| Path Editor | a sign carrying that path |
| Written Book or Book and Quill | accepted as a source |
| Smart Slab holding a maid | a sign carrying the path **and that maid** |

The last one is the interesting route. Touhou Little Maid's Smart Slab stores a specific maid; transferring it into the sign means the guide who appears is **that maid**, with her own appearance and settings, rather than a generic one.

An empty sign tells you what to do: *"No path data on this guide sign. Combine with a Path Editor on an anvil first."*

## Right-click is a toggle

The same click both summons and dismisses, which is the behaviour most likely to catch you out.

**No guide out yet?** The sign creates a maid, loads the stored maid data if the sign has any, puts her on the path, and spawns her. You get *"Guide maid created, starting at …"*.

**Guide already out?** The same right-click **discards her** and clears your path markers. There is no confirmation.

So you can never have two guides at once — the mod tracks one guide per player. If you want to restart a tour, click twice: once to dismiss, once to summon fresh.

## The welcome message

A sign can carry a welcome message, which the guide delivers when she starts. This is how a Guide Sign introduces itself without needing a Message action on the start node.

## Reading the sign

The tooltip shows **"Has maid data"** when a specific maid is stored, and **"Guide maid generated"** once the sign has produced one.

## Guide maids are protected

While on the Path Navigate task, a guide maid is shielded from everyone except her owner:

| Attempt by a non-owner | Result |
|:---|:---|
| Interacting with her | **blocked** |
| Attacking her | **blocked** |

That makes a Guide Sign safe to use on a public server — other players cannot hijack your guide, open her inventory, or kill her mid-tour.

**Two limits are worth being precise about.** The protection covers **players who are not the owner**. It does **not** stop mobs, and it does **not** stop environmental damage — a guide can still be killed by a creeper or a fall. And her panic behaviour is disabled, so she will not flee from either. Route your tour through safe ground.

## Guides stay out of your maid backups

Touhou Little Maid keeps backups of your maids. Guide maids created by a Guide Sign are **deliberately excluded** from that system.

This is a good thing and easy to miss: a temporary guide you summon and dismiss twenty times will not fill your backup list with twenty copies. But it also means a guide maid is genuinely disposable — **if you dismiss her, there is no backup to restore her from.** If a sign carries a maid you care about, remember the original still lives in the Smart Slab you made it from.

[Back to index](index)
