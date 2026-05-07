---
title: "Placeholders"
navigation:
  title: "04 Placeholders"
---

# Placeholders

Extra Interaction ships a small placeholder resolver. Any `<...>` token in a string is looked up in a resolver table and replaced; anything not in the table is left exactly as it was, angle brackets included.

## Where Placeholders Apply

- **Option labels.** Every option name is resolved right before it is drawn, using the local player and the current target.
- **Entity talk commands.** Each command string is resolved before execution, using the interacting player and the target entity.

## Available Placeholders

The `<...>` tokens below resolve against the **target** — the entity or block you are looking at:

| Placeholder | Resolves to |
|:---|:---|
| `` `<name>` `` | For an entity, its display name. For a block, the translated block name. |
| `` `<uuid>` `` | For an entity, its UUID string. Unresolved for a block. |
| `` `<pos>` `` | The block position of the entity, or the block position itself, as space-separated coordinates. |

These resolve against the **player** who is interacting:

| Placeholder | Resolves to |
|:---|:---|
| `` `<player.name>` `` | The player's display name |
| `` `<player.uuid>` `` | The player's UUID string |
| `` `<player.pos>` `` | The player's block position, as space-separated coordinates |

## Resolution Rules

- Only tokens that contain no further `<` or `>` are considered, so nesting is not supported.
- A token with no matching resolver is copied through unchanged. A typo like `` `<player.names>` `` therefore appears literally in the label or command.
- A resolver that has nothing to return — for example `` `<uuid>` `` while targeting a block — also leaves the token unchanged rather than producing an empty string.
- Coordinates are produced by stripping the commas out of the short position form, which is what makes `` `<pos>` `` and `` `<player.pos>` `` directly usable as three command arguments.

## Practical Uses

Because positions come out comma-free, a talk command can target its own subject without any extra work:

```json
"commands": [
  "summon minecraft:firework_rocket <pos>",
  "tp @s <player.pos>",
  "tag <player.name> add greeted"
]
```

And because labels are resolved too, an interaction registered under the literal name `` `<name>` `` displays as the target's own name — exactly how the bundled [entity talk](03_entity_talk) option shows the entity it belongs to.

::: info
Label resolution happens after translation lookup, so a lang key whose *value* contains a placeholder also works: the key is translated first, then the placeholder inside the translated text is replaced.
:::

[Back to the Extra Interaction index](index)
