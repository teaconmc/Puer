---
title: "Commands & configuration"
navigation:
  title: "Commands & configuration"
---

# Commands & configuration

## The `/mts` command tree

Every command lives under the single root literal `mts`, registered on `RegisterCommandsEvent`. Three classes contribute subtrees.

### Permission level

**None of the subcommands declare a `requires(...)` clause.** There is no `Commands.hasPermission(...)` call anywhere in the mod, so the whole `/mts` tree is available at **permission level 0** — every player on a server can run all of it, including channelling orbs onto other entities and clearing Mind Bloom from anyone.

Server operators who care about this should gate `/mts` with an external permission system.

### `/mts combat`

| Syntax | Effect | Return value |
|:---|:---|:---|
| `/mts combat tick` | prints `Combat tick remains: <n> tick` for the executing player | the remaining ticks |
| `/mts combat hostiles` | prints `Hostile UUIDs: [...]` for the executing player | the number of hostiles |

Both require a real player (`getPlayerOrException`) and act only on the executor; there is no target argument. Output is sent as a non-broadcast success message.

### `/mts clearMindBloom <targets>`

The only supported way to remove Mind Bloom.

- `targets` is a standard entity selector and is **required**.
- Internally it sets the static flag `MindBloomEffect.ON_CMD_CLEAR` to `true`, removes the effect from each living target, then clears the flag. Without that flag the removal listener would veto the removal.
- If no target actually lost the effect, the command fails with the vanilla message `commands.effect.clear.specific.failed`.
- On success it reports through the vanilla keys `commands.effect.clear.specific.success.single` / `...multiple` and **broadcasts to operators**.

Note the literal is camel-case: `clearMindBloom`, not `clear_mind_bloom`.

### `/mts orb`

| Syntax | Effect |
|:---|:---|
| `/mts orb clear` | clears the executing player's orbs |
| `/mts orb clear <targets>` | clears orbs from every living entity in the selector |
| `/mts orb channel <targets> <orbType>` | channels one orb of that type onto every living entity in the selector |

`orbType` is an enum argument accepting exactly `Lightning`, `Frost`, `Dark`, `Plasma`. The values are **capitalised** in the enum, which is how they appear in tab completion.

Behaviour notes:

- `clear` with no argument uses `getPlayer()`, so it fails with `Failed to clear Orbs` when run from a non-player source such as the console.
- `clear` reports a *failure* (`No Orbs are owned by ...` / `No Orbs are existing among ... Entities`) when the count is zero, even though nothing went wrong.
- `channel` respects the target's `max_charge_ball` limit through the normal channel path, so channelling onto an entity at capacity evokes its oldest orb.
- `channel` broadcasts its success message to operators; `clear` does not.
- Non-living entities in a selector are silently skipped.

## Configuration

`ConfigTheSpire` registers three config files (CLIENT, COMMON and SERVER). The COMMON spec is built and registered but **contains no options at all**, so its file is effectively empty.

### Client

| Key | Type | Default | Translation | Meaning |
|:---|:---|:---|:---|:---|
| `combat_state` | boolean | `false` | Render Combat State Info | show the Combat State HUD indicator |

### Server

| Key | Type | Default | Range | Translation |
|:---|:---|:---|:---|:---|
| `max_combat_ticks` | int | `300` | 1 – `Integer.MAX_VALUE` | Max Combat Ticks |
| `quick_exist_combat_ticks` | int | `60` | 1 – `Integer.MAX_VALUE` | Quick Exit Combat Ticks |
| `fierce_mind_bloom` | boolean | `true` | — | Fierce Mind Bloom |

Comments that ship in the file:

- `quick_exist_combat_ticks` — *"After all hostiles are gone, remaining Combat Ticks will decrease to this value."*
- `fierce_mind_bloom` — *"Effect \"Mind Bloom\" will entirely prevent healing and disable death protections, e.g. Totem of Undying"*

### Naming mismatch in the config key

The actual TOML key is **`quick_exist_combat_ticks`** — with "exist" instead of "exit". The Java field is named `QUICK_EXIT_COMBAT_TICKS` and its translation key is `config.minethespire.quick_exit_combat_ticks`, both spelled correctly. When editing the config file by hand you must use the misspelled `quick_exist_combat_ticks`; the correctly spelled key will be ignored.

### What the options really change

- `max_combat_ticks` is the value the counter is reset to whenever a hostile is registered. Raising it makes combat "stickier" and delays every leave-combat bonus (Akabeko, Burning Blood).
- `quick_exist_combat_ticks` is the floor the counter drops to once your hostile set empties. Setting it *above* `max_combat_ticks` is allowed by the range check and would prevent the clamp from ever applying.
- `fierce_mind_bloom` controls two things: Totem protection and the block on health-setting. Turning it **off** leaves Mind Bloom's heal cancellation and its removal immunity fully intact — it only re-enables Totems and health-setting sources. **There is no config option to make Mind Bloom removable.**

### Config screen

The client-side mod class registers `IConfigScreenFactory` with NeoForge's generic `ConfigurationScreen`, so all three files are editable from the mod list in game without any custom UI.

[Back to index](index)
