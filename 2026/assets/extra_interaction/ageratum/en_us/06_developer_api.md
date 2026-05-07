---
title: "Developer API"
navigation:
  title: "06 Developer API"
---

# Developer API

Extra Interaction is designed to be used by other mods. The public surface is one annotation, one interface and one builder class.

## Registering a Provider

Annotate a class with `@InteractionAutoRegister` and have it implement `InteractionRegister`:

- During mod construction, Extra Interaction walks the annotation scan data of every loaded mod.
- For each class annotated at type level, it instantiates the class through its **no-argument constructor** and calls `init()`.
- Success and failure are both logged; a provider that throws is logged as an error and skipped, and it never breaks other providers.

Because instantiation uses the no-argument constructor, the provider class must be concrete and must have one.

## Adding Interactions

`InteractionRegister` provides four registration helpers as default methods:

| Method | Registers for |
|:---|:---|
| `addForBlock(id, name, interaction)` | One block, by registry ID string |
| `addForBlocks(filter, name, interaction)` | Every block in the block registry matching a predicate |
| `addForEntity(id, name, interaction)` | One entity type, by registry ID string |
| `addForEntities(filter, name, interaction)` | Every entity type in the registry matching a predicate |

The `name` argument is both the map key and the label source. An empty `name` is silently ignored, so nothing is registered for it. Registering the same `name` twice for the same target replaces the earlier entry; entries otherwise keep insertion order, which is the order they are drawn in.

::: warning
`addForBlocks` and `addForEntities` iterate the built-in registries at the moment they are called, and `init()` runs during mod construction — before other mods have registered their own blocks and entity types. Bulk filters therefore see only content that already exists at that point. Use the per-ID overloads for cross-mod targets.
:::

## Building an Interaction

`Interaction` is created through static factories, each taking a condition and an action:

| Factory | Target type handed to your code |
|:---|:---|
| `Interaction.withEntity(condition, action)` | `Entity`, after a type check |
| `Interaction.withBlock(condition, action)` | `BlockPos`, after a type check |
| `Interaction.withAny(condition, action)` | The raw target object |

`withEntity` and `withBlock` are thin wrappers over `withAny` that check the target type first, so a block interaction never receives an entity. `InteractionRegister` also exposes `withEntity` and `withBlock` as default methods for convenience. `Interaction.EMPTY` is a shared always-true, do-nothing instance, useful as a placeholder row.

Two chainable modifiers exist:

- `tips(...)` — accepts a list or varargs of strings and appends them. One is chosen at random when the player tries to use a locked option. Strings are treated as translation keys with literal fallback.
- `icon(...)` — sets an optional 14×14 texture identifier drawn at the left of the row. `null` means no icon.

`copy()` produces a new instance sharing the same condition and action, with the tips and icon copied over.

## Side Awareness Is Your Responsibility

This is the most important contract in the API. When the player activates an option, the client does two things in sequence:

1. It applies the action **locally, on the client**.
2. It sends the `extra_interaction:send_interaction` payload, and the server applies the same action again.

Your action is therefore invoked once per side. Any logic that must not run twice — spawning entities, giving items, mutating world state, running commands — has to guard on the level being server side, the way the bundled entity-talk action does with an early return on the client.

::: warning
The condition is **not** re-tested when the action runs. The re-check inside the apply path is commented out in the current source, so `accept` always invokes the action. Write your action so it validates its own preconditions instead of trusting that the condition passed. See [Networking and Server Notes](07_networking_and_server_notes) for why this matters beyond correctness.
:::

## Placeholder Resolvers

The placeholder table is extensible: `SimplePlaceholder.addResolver(name, function)` registers a resolver that receives the player and the current target and returns a string, or `null` to leave the token untouched. The six built-in resolvers are documented in [Placeholders](04_placeholders).

## Client Integration Surface

For reference, the mod's client-side hooks are:

- `RegisterKeyMappingsEvent` for the interact key.
- `RenderGuiEvent.Post` for the option list.
- `InputEvent.Key` for activation and `InputEvent.MouseScrollingEvent` for selection, the latter cancelled when the list consumes the scroll.
- One client-only mixin on the vanilla keybind handler, declared in `extra_interaction.mixins.json` as required, plus one access transformer entry that exposes the GUI render state used to draw the rows.

[Back to the Extra Interaction index](index)
