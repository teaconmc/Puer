---
title: Damage Stages
navigation:
  title: Damage Stages
description: The three-stage wear chain, the mixin that drives it, and why a damaged wooden anvil is a dead end.
---

# Damage Stages

Like a vanilla anvil, a wooden anvil degrades as you use it. Unlike a vanilla anvil, this mod supplies its own progression chain.

## The chain

Each form has exactly three stages, and wear moves one step down:

```
<wood>_anvil  →  <wood>_chipped_anvil  →  <wood>_damaged_anvil  →  (destroyed)
```

The stripped forms have their own parallel chain — **stripping is preserved through damage**. A chipped stripped oak anvil degrades to a damaged stripped oak anvil, never back to a bark-covered one.

The block's **facing is preserved** at every step, so an anvil does not rotate when it wears.

## How it is implemented

`AnvilBlockMixin` injects at the **head** of vanilla `AnvilBlock.damage` and, when the state is a `WoodenAnvilBlock`, cancels the vanilla path and returns this mod's own next state instead:

```
if (WoodenAnvilBlock.isWoodenAnvil(state)) {
    cir.setReturnValue(WoodenAnvilBlock.damageWoodenAnvil(state));
}
```

Because the injection replaces the return value rather than adding a separate mechanism, wooden anvils wear out **on exactly the same triggers and at exactly the same probability as vanilla anvils**. There is no separate durability, no extra config, and no way to make them wear faster or slower.

`damageWoodenAnvil` looks the current block up in `DAMAGE_MAP` and returns the mapped next state, or `null` if there is no entry. Returning `null` is vanilla's signal that the anvil is gone — so the damaged stage is the last one.

## The damaged stage is a dead end

Three facts combine here, and together they matter more than any of them alone:

- **`DAMAGE_MAP` only contains two links per form** (base → chipped, chipped → damaged). The damaged stage has no outgoing entry, so it maps to `null` and the block is destroyed.
- **There are no recipes for the chipped or damaged stages.** All 24 recipes produce base-stage anvils only.
- **There is no repair mechanism of any kind** — no smithing, no crafting, no right-click-with-material, no command.

So a worn wooden anvil cannot be restored. You can pick it up and place it elsewhere (it keeps its stage), but the only way back to a pristine anvil is to craft a new one.

::: tip
A damaged wooden anvil is not worthless — it is still a working anvil, and it is still burnable as fuel at full value. See [Tags, tools and fuel](05_tags_tools_and_fuel.md).
:::

## Every stage is a working anvil

All three stages extend `AnvilBlock` and all three open the anvil menu with their own display name. A damaged anvil enchants and repairs exactly as well as a fresh one; the stage is purely a wear counter and a texture, with no effect on function.

[Back to index](index)
