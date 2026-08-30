---
title: Spear of Longinus
navigation:
  title: Spear of Longinus
description: A thrown weapon with no item of its own, gated behind orange juice, whose armour-piercing is silently broken.
---

# Spear of Longinus

This is the mod's hidden feature, and almost nothing about it works the way you would guess.

## There is no Spear of Longinus item

The mod contains a spear item class, a spear model and a spear renderer — but **the item is never registered**. It appears in no creative tab, has no id you can `/give`, and cannot be crafted or bought. The class is dead code.

What *is* registered is the **thrown entity**. The spear exists only in flight.

## How you throw it

The mod mixes into vanilla's `TridentItem` and takes over the release of a charged throw, **but only if the thrower has the `Sincerely For You` effect**. So the actual recipe for using the strongest thing in the mod is:

1. Buy an **Orange Juice** from the wine list — 5 emeralds, the cheapest entry.
2. Drink it. You now have **Sincerely For You for 60 seconds**.
3. Throw an ordinary **vanilla trident** during that window.

Instead of a trident, a **Spear of Longinus** flies. Nothing in the game hints at this chain — no tooltip on the juice, no advancement, no message.

Outside that 60-second window the trident behaves exactly like vanilla.

## What the takeover preserves

The replacement path deliberately mirrors vanilla, so trident habits still apply:

- You must **charge for at least 10 ticks**; a tap does nothing.
- **Riptide still works normally.** If the trident has Riptide and you are in water or rain, you get the usual spin-attack dash — the spear is *not* thrown in that case.
- A trident that would **break on the next hit refuses to throw**, exactly as vanilla does.
- The trident takes **1 durability** and the vanilla throw sound (or an enchantment-provided one) plays.
- In creative the projectile is flagged creative-only for pickup.

So the spear replaces only the plain, non-riptide throw.

## The A.T. Field damage type

The spear deals damage through the mod's own damage type, `sip_moment:at_field`, and it has a themed death message: **"<player> Melted into LCL"**. The type is configured with zero exhaustion and difficulty scaling that applies only when the source is a non-player living entity.

## The armour-piercing does not work

The mod clearly intended the A.T. Field to ignore everything. It ships seven damage-type tag files that would have added `at_field` to:

`bypasses_armor`, `bypasses_effects`, `bypasses_enchantments`, `bypasses_invulnerability`, `bypasses_resistance`, `bypasses_shield`, `bypasses_wolf_armor`

**None of them load.** They sit in a directory named `data/minecraft/tags/damag_type/` — the folder name is missing a letter. The path Minecraft reads is `damage_type`, so this directory is simply never scanned.

The practical consequences:

- The spear's damage is **reduced by armour** like any ordinary hit.
- **Shields block it.** Resistance reduces it. Protection enchantments apply.
- It does **not** pierce invulnerability, so it will not hurt anything normally immune.

Everything else about the spear works — it flies, it hits, it uses its own damage type and its own death message. Only the "ignores all defences" half is inert, and it is inert because of a one-character typo in a folder name. If you maintain a pack and want the intended behaviour, a datapack that places those same seven files under the correctly spelled `damage_type` directory restores it.

## Music disc

Unrelated to the spear but sharing its "extra content" status: `sip_moment:music_disc_dust_to_dust` is a playable record, the most expensive wine-list entry at **36 emeralds**, with the track credited in-game as *KING_VITIONNOT — Dust To Dust*. It is registered as a proper jukebox song, so it plays in a vanilla jukebox.

## Advancements

Six advancements ship: a root, one for getting drunk, and one each for obtaining Black Star Coffee, Butter Beer, David Martinez and Orange Juice. Note that the four alcohol drinks with no effects — highball, whisky, champagne, Kyoho wine — have **no advancement**, and neither does the spear.

[Back to index](index)
