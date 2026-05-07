---
title: "Street banners"
navigation:
  title: "04 Street banners"
items:
  - thestreetism:banner
---

# Street banners

A Street Banner is not a block. It is an entity stretched between **two anchor points** on the same surface, which lets you span a banner across a wall at whatever width you want.

## Placing one takes three clicks

The banner item remembers your progress between clicks, stored as custom data on the item itself.

**First right-click** — on a valid face, this records **anchor A**. You hear a higher-pitched dye sound. Nothing is placed yet.

**Second right-click** — records **anchor B**. The two anchors must be able to share a surface; if they cannot, the click fails and anchor A is kept, so you can simply try a different second point.

**Third right-click** — creates the banner spanning A to B. Its height comes from where you click on this third interaction, so you drag the height out rather than typing it. This costs **1 durability** and plays the wool placing sound.

Both of the first two clicks require the usual conditions: a full-collision block, inside the world border, in a loaded chunk, within interaction range, and a face the mod accepts as an anchor. Failing those clears your stored anchors and you start over.

Because the anchors live on the item, **a half-placed banner stays half-placed**. If you put the item away after one click and come back later, anchor A is still remembered.

## Defaults of a new banner

| Property | Default |
|:---|:---|
| Text | `Streetism` |
| Background | a pale cream |
| Text alignment | centre |
| Font scale | 1.0 |
| Owner | the placing player's UUID |

## The banner editor

Right-clicking a placed banner opens the Banner Editor, which is a real container-style screen. It carries the banner's background colour, text colour, text, font scale and alignment.

The editor stays open only while you are **within 8 blocks** of the banner and it is still alive. Walk away or let someone scrape it and the screen closes.

Text length is capped by the mod; the limit is enforced both when the screen is opened and when your edit is sent back to the server.

## Removal

There is no way to pick a banner back up. The Paint Scraper deletes it outright with no drop, and it has unlimited uses and does not check who placed the banner — see [03 Removing and repairing](03_removing_and_repairing) before building anything you care about on a public server.

## A note on the networking

The banner packets are labelled **"legacy"** in the source, while the flag system uses a newer set. Both are registered and both work; the naming simply suggests banners were the earlier feature and flags the successor. If you are choosing between the two for a build, flags are the more actively developed half — see [05 Flags](05_flags).

[Back to index](index)
