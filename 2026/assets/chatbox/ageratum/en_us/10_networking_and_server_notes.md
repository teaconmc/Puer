---
title: "Networking and Server Notes"
navigation:
  title: "10 Networking and Server Notes"
---

# Networking and Server Notes

## Payloads

| Payload | Direction | Contents |
|:---|:---|:---|
| `chatbox:simple_payload` | both ways | A name and a string value, dispatched to a handler table |
| `chatbox:execute_click_event` | client to server | An event type id and a value |
| `chatbox:chat_box_data_to_client` | server to client | Theme or dialogue documents, split into string chunks |
| `chatbox:sync_entity_data` | server to client | Conversation target entities, as NBT keyed by network id |

`chatbox:simple_payload` carries most of the traffic. Server-to-client names cover starting a conversation, opening the box, switching theme, advancing, auto-play, screen mode, rewriting the dialogue box, adding/setting/clearing options and MVEL test results. Client-to-server names are `request_sync`, `skip_chat_c2s` and `test_condition`.

Dialogue and theme documents are pushed to clients as chunked strings and reassembled client-side, which is how a client renders a conversation whose files it does not have locally.

## Server-Side Trust Model

This section is the reason the index carries a warning. It describes what the current code does, not a hypothetical.

::: danger
Three client-to-server paths accept a string from the client and act on it with **no permission check and no verification that the string belongs to a real, currently-playing conversation**:

1. **`chatbox:execute_click_event`** looks the event type up in the registry and runs its server half. The built-in `COMMAND` type's server half runs the value as commands **at Game Master permission with output suppressed**. The lookup is also unchecked for `null`, so an unregistered type id faults the handler instead of being rejected.
2. **`simple_payload` / `test_condition`** evaluates its string as MVEL **on the server**, with the sending player bound as `player`.
3. **`simple_payload` / `skip_chat_c2s`** indexes straight into the loaded dialogue table with a client-supplied identifier, group and index, and runs that line's `command` — bypassing both the trigger-count gate and any `criteria` gating. Missing entries and non-numeric indexes are not validated before use.

The net effect on a server with ChatBox installed is that any connected client can cause level-2 command execution and server-side expression evaluation, regardless of its own permissions. The `/chatbox` command root being permission-gated does **not** protect these paths, because they do not go through the command system.
:::

### On "safe" transformation

The MVEL input passes through a function named `safeTransform` before compilation. Despite the name, this is a **syntax rewriter, not a sandbox**: it rewrites `subject.method(args)` into a dispatch call and `subject.property` into a property lookup, while carefully skipping quoted regions. It performs no whitelisting, blocks nothing, and explicitly preserves the `new` keyword. Do not read the name as evidence that untrusted expressions are contained.

### Recommended handling

- Treat ChatBox as **trusted-client content**: suitable for single-player, for a private map being tested, or for a server whose players you trust.
- On a public or semi-public server, put packet filtering in front of it, or do not install it. Ordinary permission plugins will not help, because nothing here is a command.
- Keep dialogue and theme files under the same review discipline as functions and command blocks. A datapack line's `command` runs at level 2 by design.
- Do not use ChatBox as a permission boundary. It is a presentation system; anything it appears to gate can be reached another way.

## Reload and Sync Flow

1. `/reload` re-reads both folders on the server. Dialogue parsing rebuilds the group table and the default trigger counts.
2. Advancement criteria are re-parsed, on server start and again on datapack sync.
3. Documents are pushed to clients so their renderers match the server's data.
4. Conversation targets are synced separately as entity NBT, either on request or when a conversation starts.

Because a reload rebuilds the default trigger-count table, it also resets the drift described in [Triggers and Persistence](08_triggers_and_persistence).

## What Is Not Present

For completeness, the mod contains none of the following: a server config, a common config, permission nodes, rate limiting on any payload, or packet-level validation of dialogue identifiers, group names or line indexes.

[Back to the ChatBox index](index)
