---
title: "Removing and repairing"
navigation:
  title: "03 Removing and repairing"
items:
  - thestreetism:paint_scraper
---

# Removing and repairing

## The Paint Scraper

Hold the scraper and right-click — you do not need to aim at a block. The tool casts a ray along your entity interaction range and deletes the first matching entity it finds.

Three properties of this tool deserve attention before you put it on a server:

**It removes banners as well as graffiti.** The filter accepts both entity types, so the same right-click that scrapes a tag off a wall will also delete a Street Banner you spent six wool on. There is no confirmation and no distinction in the animation.

**It has unlimited uses.** Unlike every other item in the mod, the scraper has no durability. One scraper can clear an entire city.

**Nothing is dropped.** The target entity is discarded outright, so removing a banner destroys it rather than returning the item. A banner also carries its own text, colours and font settings — all of that is gone with it.

**Ownership is not checked.** Graffiti and banners both record who created them, but the scraper does not compare that against the person using it. Anyone holding a scraper can remove anyone else's work.

For a public server, that combination — unlimited uses, no ownership check, no drops, and banners included — is worth protecting with a claim or permission plugin rather than relying on the mod.

The search box is also slightly generous: the ray's bounding box is inflated by one block, so a target just outside your crosshair can still be caught.

## The Pigment Bag

Right-click anywhere while holding the bag. It scans your **entire inventory**, finds every Spray Can and Street Banner that qualifies, and repairs all of them at once.

| Detail | Value |
|:---|:---|
| Repairs | Spray Cans and Street Banners |
| Qualifies when | remaining durability is **below 75** |
| Restores | **25** durability per item |
| Cost | 1 use of the bag |
| Bag capacity | **5 uses** |

Two things follow from the threshold that are easy to get wrong:

- **A lightly used can cannot be topped up.** Both cans and banners have 100 durability, so "remaining below 75" means the item must already have lost more than 25 uses. A can sitting at 80/100 is simply ignored, and if nothing in your inventory qualifies the bag does nothing and is not consumed.
- **One use repairs everything that qualifies.** The bag is at its most efficient when you are carrying several worn cans, because a single use restores 25 to each of them. Carrying one nearly-broken can wastes most of the bag's value.

With five uses restoring 25 each, one bag is worth at most 125 durability spread across your gear — a little over one extra spray can.

[Back to index](index)
