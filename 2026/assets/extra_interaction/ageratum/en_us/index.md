---
title: "Extra Interaction"
navigation:
  title: "Extra Interaction"
---

# Extra Interaction

Extra Interaction (`extra_interaction`) brings the "press one key to pick an action" interaction list that action and adventure games use into Minecraft. Look at a block or an entity, and any interaction registered for that target appears as an on-screen option list; scroll to choose one and press the interact key to run it.

The mod is primarily an **API and data hook**, not a content mod. It registers no items, no blocks, no entities, no menus, no creative tab, no recipes and no commands of its own. Everything you see in the option list is contributed either by another mod through the developer API or by a datapack through the `entity_talk` file format.

## Reading Route

1. [Getting Started](01_getting_started): what the mod does and does not add, and how to see your first option.
2. [Option List and Controls](02_option_list_and_controls): the on-screen list, the interact key, scrolling, forced display, and locked options.
3. [Entity Talk Datapacks](03_entity_talk): the `entity_talk` JSON format that turns named entities into command triggers.
4. [Placeholders](04_placeholders): the `<...>` placeholders usable in option names and commands.
5. [Configuration](05_configuration): the five client options that control list position and size.
6. [Developer API](06_developer_api): `@InteractionAutoRegister`, `InteractionRegister`, and the `Interaction` builders.
7. [Networking and Server Notes](07_networking_and_server_notes): payloads, sync, and what server owners must know before installing.

## Quick Facts

| Item | Current implementation |
|:---|:---|
| Mod ID / namespace | `extra_interaction` |
| Items / blocks / entities / menus | none registered |
| Creative tab | none |
| Recipes / loot tables / tags | none |
| Commands | none |
| Default key | `F` — `key.extra_interact.interact`, in the Gameplay category |
| Config | client side only, `extra_interaction_client.toml` |
| Datapack hook | `data/<namespace>/extra_interaction/entity_talk/*.json` |
| Network payloads | `extra_interaction:send_interaction` (to server), `extra_interaction:send_talk_data` (to client) |
| Reload listener | `extra_interaction:entity_talk` |
| License | MIT |

::: info
Everything recorded in these pages comes from the currently checked-out source and its shipped resources. The mod's own example interaction class ships fully commented out, so a fresh install adds **no** interactions until a datapack or another mod provides them.
:::
