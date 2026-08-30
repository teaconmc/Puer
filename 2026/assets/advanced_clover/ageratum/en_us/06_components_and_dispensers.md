---
title: "Components and Dispensers"
navigation:
  title: "06 Components and Dispensers"
---

# Components and Dispensers

Magic Clover registers three persistent data components for command-created, loot-table, and data-pack variants.

## Source Namespace

```mcfunction
/give @s advanced_clover:magic_clover[advanced_clover:ingredient_namespace={namespace:"ae2"}]
```

`ingredient_namespace.namespace` is a string. Normal dynamic crafting writes the other ingredient's mod ID here automatically.

## Custom Entity List

```mcfunction
/give @s advanced_clover:magic_clover[advanced_clover:entity_list={chance:300,entity_list:["minecraft:zombie","minecraft:skeleton"]}]
```

- `chance` uses `0` through `1000`; divide it by `10` for the percentage.
- `entity_list` must contain at least one summonable entity-type ID that `EntityType.create` can construct. Merely being present in the registry is not enough.
- A string can also carry SNBT after the entity ID; validate such stacks in a test world before distribution.

## Custom Item List

```mcfunction
/give @s advanced_clover:magic_clover[advanced_clover:item_list={item_list:["minecraft:diamond","minecraft:iron_ingot"]}]
```

`item_list.item_list` accepts complete, exact item IDs only. It does not support regex or wildcards. At least one valid entry makes it replace the source namespace and global lists.

## Dispenser Behavior

A dispenser consumes one Magic Clover and calls only the random **item** generator, then dispenses the result. It does not run the entity roll or read a custom entity list. If no item can be generated, it dispenses one ordinary Four-leaf Clover as the refund.

::: warning
Do not create an empty `entity_list`: the current implementation accesses a random or first entry during use and tooltip generation, so an empty list can raise an exception. Non-creatable types such as the player trigger failure handling twice and can refund two ordinary Four-leaf Clovers. The `minecraft:ender_pearl` entity has a special launched-projectile branch but then continues through generic entity creation, creating a risk of two ender pearl entities.
:::

The current version has no mod-specific commands or key bindings; the `/give` lines above are vanilla administrator-command examples.

[Back to the Advanced Clover index](index)
