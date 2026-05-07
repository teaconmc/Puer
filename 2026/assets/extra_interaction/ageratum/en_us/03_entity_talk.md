---
title: "Entity Talk Datapacks"
navigation:
  title: "03 Entity Talk"
---

# Entity Talk Datapacks

`entity_talk` is the one interaction the mod contributes by itself, and it is entirely data driven. It lets a datapack say: "when a player looks at an entity of this type whose display name is exactly this, offer an option that runs these commands."

## File Location

```
data/<namespace>/extra_interaction/entity_talk/<any_name>.json
```

Files are collected by a server reload listener registered as `extra_interaction:entity_talk`, so `/reload` picks up changes. The bundled example lives at `data/example/extra_interaction/entity_talk/example.json`.

## File Format

The root object needs a single `talks` array. Each element accepts three fields, and each field may be either one string or an array of strings.

| Field | Meaning |
|:---|:---|
| `id` | Entity type registry ID(s) the entry applies to |
| `name` | Exact display name(s) the entity must have |
| `commands` | Command(s) to run; one is chosen at random per activation |

The bundled example, in full:

```json
{
  "talks": [
    {
      "id": ["minecraft:player", "minecraft:mannequin"],
      "name": "Zi_Min",
      "commands": [
        "tellraw @s \"Hello!\"",
        "tellraw @s \"Hello again!\""
      ]
    },
    {
      "id": ["minecraft:player", "minecraft:mannequin"],
      "name": ["Amotassic", "zhenshiz"],
      "commands": [
        "chatbox skip example:teacon_intro start 0 <uuid>"
      ]
    }
  ]
}
```

When `id` and `name` are both arrays, every combination is registered, so the example above covers four name-and-type pairs in its second entry.

## How Matching Works

The option is registered against the **entity type**, but its condition compares the **live display name**. Concretely:

- One option is registered per entity type that appears in any `id` field, under the internal name `` `<name>` ``.
- The condition passes when the entity's current display name string exactly matches one of the `name` values for that type.
- Because the comparison uses the display name, renaming a mob with a name tag is enough to enable or disable the option, and for `minecraft:player` the match is against the account name.

Since all talk entries for one entity type collapse into a single option, an entity never shows two talk rows at once. The label you see is the entity's own name, because the internal option name is the `` `<name>` `` placeholder and placeholders are resolved at draw time.

## Command Execution

When the option is activated on the server:

1. One entry of `commands` is picked at random.
2. Its [placeholders](04_placeholders) are resolved against the interacting player and the target entity.
3. The result is split on `;`, each fragment is trimmed, a leading `/` is stripped if present, and blank fragments are skipped.
4. Each remaining fragment is executed.

So a single `commands` entry can chain several commands: `"say a; say b"` runs both.

::: warning
Commands run through a command source that is explicitly raised to Game Master permission (level `2`) with output suppressed. The permission of the player who triggered the interaction is **not** consulted. Any player able to look at a matching entity and press the interact key is therefore able to run the level-2 commands the datapack author wrote. Treat `entity_talk` files as trusted server content and review them the way you would review a function file.
:::

The command source is the triggering player when a player triggers it, so `@s` refers to that player.

## Reload Behaviour

The loaded talk data is also pushed to clients on datapack sync — on player join for that player, and to every online player on a server-side reload — because the client needs the same table to decide whether the option should be drawn.

::: warning
Removing a talk entry does not fully take effect until the game or server restarts. On reload the mod clears the registered option rows and then rebuilds the talk table with fresh entries, but the internal table itself is never emptied first, so name-and-command pairs from a deleted or edited file remain in memory. Adding and changing entries works as expected; deleting one needs a restart to be certain.
:::

## The Bundled ChatBox Examples

The mod jar also carries `data/example/chatbox/dialogues/teacon_intro.json` and `data/example/chatbox/dialogues/maigua.json`. Those files belong to the separate ChatBox mod's data domain and are only there so the second example talk entry has something to open. Extra Interaction lists only `neoforge` and `minecraft` as dependencies, so on an installation without ChatBox the dialogue files are inert and the `chatbox …` command fails.

[Back to the Extra Interaction index](index)
