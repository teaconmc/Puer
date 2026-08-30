---
title: "Hooks"
navigation:
  title: "02 Hooks"
---

# Hooks

The hook decides what your bobber *is*. Nine of them, in three families.

## Spiked hooks — the damage tiers

Four hooks that hurt what they hit, using the mod's own damage type.

| Hook | Damage |
|:---|---:|
| Golden Spiked Hook | 4 |
| Iron Spiked Hook | 5 |
| Diamond Spiked Hook | 6 |
| Netherite Spiked Hook | 7 |

**Gold is the weakest, not the strongest.** It sits below iron, matching vanilla tool progression rather than the intuition that gold is precious. Iron is the cheap sensible pick.

They damage on two occasions:

- **On reel-in**, the full value.
- **While hooked, if the victim moves fast** — above a speed threshold it takes **40% of the value**, is slowed to a fifth of its velocity, and **tears free of the hook**.

That second rule is the interesting one. A mob sprinting away from you does not simply stay hooked; it rips loose, takes a parting cut, and is left almost stationary. Reeling a runner in is therefore a sequence of short hooks rather than one long tether.

The damage type is registered in `minecraft:no_knockback`, so a hooked mob is not launched by the hit.

## Nether hooks — fireproof, and they catch mobs

Three hooks survive lava and can fish in it. What makes them worth building is that **in the Nether they can pull up a living mob instead of loot**.

| Hook | Chance of a mob | What it pulls |
|:---|---:|:---|
| Netherite Spiked Hook | 15% | Magma Cube, size 4 |
| Blaze Hook | 20% | Blaze |
| **Nether Brick Hook** | **75%** | 20% Magma Cube (size 5), 40% Blaze, 40% **Wither Skeleton** |

**The Nether Brick Hook is the standout.** Three casts in four bring up a mob, and two in five of those are Wither Skeletons — which makes lava fishing a viable route to wither skulls, with no fortress spawner needed. The mob appears just above the bobber and is dragged toward you.

Note the netherite hook does double duty: it is both the top damage tier **and** fireproof, so it is the one hook that does not force you to choose.

Outside the Nether these hooks still fish lava, but pull loot rather than mobs. See [06 Lava fishing](06_lava_fishing).

## The Blaze Hook does three more things

It is the busiest item in the mod, and none of this is obvious from its name:

**It melts ice.** Every tick it checks a 3×3×3 cube around the bobber and converts any ice to water — **dropping the ice as an item first**. Cast into an ice sheet and you harvest it and open water at the same time.

**It sets the catch on fire.** A hooked entity that is not already burning and not in water or rain is ignited — 20 ticks continuously while hooked, and 100 ticks (5 seconds) on reel-in.

**It smelts hooked items.** If the thing on your hook is a dropped item stack with a smelting recipe, the stack is replaced by its smelted form **at the same count**. Hook a dropped stack of raw iron and reel in ingots. This is a free bulk furnace with no fuel, limited only by what you can hook.

## Sticky Hook — for blocks, not fish

The Sticky Hook grabs the **block** it hits and lets you drag it toward you.

Three conditions apply:

- The block must **not require a specific tool for drops** — ores and stone are out.
- It must be breakable at all (destroy speed above zero), so bedrock and barriers are out.
- Your game mode must allow block placing, so **adventure mode cannot use it**.

Note this hook is **not** fireproof — it extends the plain vanilla bobber, so it cannot fish lava.

## Tipped Hook — potions on a line

The Tipped Hook carries potion contents like a tipped arrow and applies them to what it hooks, at **quarter duration**. Instant effects (harming, healing) apply in full immediately.

The creative tab contains **one Tipped Hook per potion registered in the game**, including potions added by other mods, so the list is as long as your modpack's potion registry.

## Wind Hook — an area pull

On reel-in the Wind Hook pushes **every living entity within 3 blocks of the hooked target** toward you, not just the target itself. Creative and spectator players are excluded.

It deals no damage. Its use is positioning: hook one mob in a group and the whole cluster comes with it.

[Back to index](index)
