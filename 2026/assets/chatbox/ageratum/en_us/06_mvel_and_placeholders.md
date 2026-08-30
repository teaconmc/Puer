---
title: "MVEL and Placeholders"
navigation:
  title: "06 MVEL and Placeholders"
---

# MVEL and Placeholders

ChatBox embeds the MVEL expression language. Expressions drive conditions, the `MVEL` event, and inline substitutions inside dialogue text.

## Two Syntaxes in Text

| Syntax | Meaning |
|:---|:---|
| `` `<<expression>>` `` | Evaluate an MVEL expression and insert the result |
| `` `<player>` ``, `` `<target>` ``, `` `<target2>` `` … | Insert a participant's name |

Bare participant placeholders resolve to the **name** by default — `` `<target>` `` is shorthand for `` `<target.name>` ``. Add a property to get something else, for example `` `<player.uuid>` ``. A placeholder that cannot be resolved is left in the text unchanged, so a typo shows up literally instead of vanishing.

Inline `` `<<…>>` `` blocks are evaluated first, then participant placeholders, so an expression may itself produce a placeholder.

## Targets

`target` and `targetN` are rewritten to indexes into a `targets` array before evaluation: `target` and `target1` both mean `targets[0]`, `target2` means `targets[1]`, and so on. The array is whatever entity list the conversation was started with — see the target arguments of `/chatbox skip` in [Commands](02_commands).

## Available Variables

| Variable | Meaning |
|:---|:---|
| `player` | The player the expression is evaluated for |
| `targets` | The conversation's target entities |
| `gameTime` | Current level game time |
| `random` | A shared random source |
| `_this` | The component the event belongs to, when there is one |
| `chatbox`, `chatboxScreen`, `chatboxTick` | Client only: helper access to the running dialogue |

`Math` is imported, so ordinary arithmetic helpers are available.

## Methods

Called as `subject.method(args)`:

| Method | Subject | Purpose |
|:---|:---|:---|
| `hasItem(id)` | player | Whether the inventory holds that item |
| `getItemCount(id)` | player | Total count of that item |
| `getItemBySlot(slot)` | living entity or player | Item in an armour slot name, or an inventory index |
| `getScore(objective)` | player | Scoreboard value, or null when the objective is missing |
| `hasTag(tag)` | entity | Whether the entity carries a tag |
| `tell(message[, actionBar])` | player | Send a message; `true` puts it above the hotbar |
| `getEnchantLevel(id)` | item stack | Enchantment level on that stack |
| `enchant(id, level)` | item stack | Apply an enchantment |
| `hasAdvancement(id)` | player | Whether the advancement is complete |

Armour slot names accept both spellings — `head`/`helmet`, `chest`/`chestplate`, `legs`/`leggings`, `feet`/`boots`.

## Properties

Read as `subject.property`:

| Property | Subject | Result |
|:---|:---|:---|
| `name` | entity, item, stack | Display name |
| `id` | entity, item, stack, block, effect, component | Registry identifier |
| `uuid` | entity | UUID |
| `tags` | entity | Entity tag set |
| `foodLevel` | player | Food level |
| `offHandItem` | living entity | Off-hand stack |

## Variable Helpers

| Function | Effect |
|:---|:---|
| `setVar(name, value)` | Store a variable |
| `setVarIfNoDef(name, value)` | Store only when not already set |
| `hasVar(name)` | Whether a variable exists |
| `removeVar(names…)` | Remove variables |
| `executeCompEvt(type, value)` | Fire a component event by type |

This is the normal way to remember choices across a conversation: initialise counters with `setVarIfNoDef` on the first line, update them as the player chooses, and branch on them in later conditions. The bundled demo uses exactly this pattern for its nickname and visit counter.

::: warning
Variables live in **one shared table**, not per player and not per conversation. On a server every player's expressions read and write the same entries, and the table is never cleared between conversations. Namespace your keys (for example `myquest_stage` rather than `stage`), never rely on a variable being absent at the start, and do not use variables to hold per-player progress on a multiplayer server — use scoreboards or advancements for that. Compiled expressions are also cached globally and the cache is dropped wholesale once it exceeds 721 entries.
:::

## Where Evaluation Happens

By default expressions run on the **client**. A `server:` prefix moves evaluation to the server, at the cost of a network round trip. Server-side evaluation is what you need when the expression must read authoritative state or change the world; client-side is right for presentation logic.

`/chatbox mvelTest <expression> <onServer>` evaluates on either side and prints the result, which is the supported way to check an expression before shipping it.

::: info
An expression that throws is swallowed and yields `null` rather than breaking the conversation. That keeps a broken line from killing the whole scene, but it also means a silently wrong condition looks identical to a false one. When something never fires, test it with `mvelTest` first.
:::

[Back to the ChatBox index](index)
