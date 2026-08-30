---
title: "Sharing and limits"
navigation:
  title: "06 Sharing and limits"
items:
  - kilagraphdemo:work_scoreboard
---

# Sharing and limits

Both holograms and slide-show effects use the same publishing system: you author locally, upload to the server, and other players download, like and display.

## The publishing loop

| Action | Effect |
|:---|:---|
| Upload | publishes your local work to the server |
| Download | copies a shared work into your local list |
| Update / Re-download | pulls a newer version of something you already have |
| Like / Unlike | adds or removes your like |
| Delete (local) | removes your local copy only |
| Delete from server | permanently removes the published work |

Server lists can be sorted by **Liked**, **New** or **Old**, and filtered to **Mine**. Each row shows the author, first-published and updated times, like count, and for holograms the model name. A row marked **(update available)** means the server copy is newer than yours.

Downloads are chunked and show a percentage while they run.

## You can publish exactly one work

This is the limit most likely to surprise you: **the per-player publish limit is 1.**

To publish something new you must first delete your existing published work. The interface says so plainly — *You can publish at most 1 works. Delete one of yours first.* Your **local** library is unaffected; you can hold as many local works as you like and simply choose which single one is public.

Plan accordingly on a server: treat your published slot as your exhibit piece, not as storage.

## Every size limit

| Limit | Value |
|:---|:---|
| Bundled model | 2 MiB |
| Bundled textures (total) | 4 MiB |
| Upload payload | 8 MiB |
| Decompressed size | 32 MiB |
| Transfer chunk | 24 KiB |
| Chunks per transfer | 2048 |
| Concurrent transfers | 2 |
| Published works per player | 1 |
| Scoreboard rows | 10 |

The **32 MiB decompressed ceiling** is a separate guard from the 8 MiB payload cap — it stops a small compressed upload from expanding into something huge on the server. That is a deliberate defence, not an oversight.

On success the dialog reports exactly what went out: *Bundled N texture(s), N model(s), N KB.*

## Why an upload gets rejected

The server and client both validate, and each failure names its cause:

| Message | Cause |
|:---|:---|
| Description required | you left the description blank |
| Graph does not compile | fix the graph first |
| Missing shader functions | the work references functions you deleted |
| Bundled textures are N MB (max N MB) | over the texture budget |
| Bundled model is N MB (max N MB) | over the model budget |
| Upload limit reached | you already have a published work |
| Please wait Ns before uploading again | cooldown |
| Too many uploads in progress | concurrent transfer cap |
| chunk too large / work too large / malformed work | server-side rejection |

**The missing-shader-functions check is the one worth internalising.** Deleting a shader function resource does not clean up the nodes that used it, so a work can look fine locally and refuse to upload later. The message lists the names — restore them, or remove the nodes that reference them.

Notice also that **a work must compile before it can be published**. You cannot share a broken graph, which means anything you download from the server is at least structurally valid.

## Reading the likes ranking

The **Hologram Likes Scoreboard** block is a billboard listing the most-liked shared works, refreshed when the data changes rather than on a timer, and showing up to 10 rows.

Pair it with a row of Server Holograms to build a gallery where the board credits whatever is currently popular.

[Back to index](index)
