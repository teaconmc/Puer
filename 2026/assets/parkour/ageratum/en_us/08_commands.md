---
title: "Commands"
navigation:
  title: "08 Commands"
---

# Commands

There is no server command root registered by `parkour`. The only command implementation is a client-side debug tree registered through `RegisterClientCommandsEvent` in `DebugCommandHandler`.

## `/parkour debug`

The client command syntax is `/parkour debug <type>`, where `<type>` is one of:

| Type | Effect |
|:---|:---|
| `wall_slide` | Show only the wall slide sensor debug box |
| `wall_run` | Show only the wall run sensor debug box |
| `wall_climb` | Show only the wall climb sensor debug box |
| `wall_jump` | Show only the wall jump sensor debug box |
| `armhang_eye` | Show only the armhang eye sensor debug box |
| `armhang_top` | Show only the armhang top sensor debug box |
| `nothing` | Hide all sensor debug boxes |

Each non-`nothing` command changes `DebugSensorRenderHandler.DEBUG_TYPE` and prints a chat message; `nothing` hides all rendering. Because these are client commands, there is no server permission level involved and they do not affect gameplay state.

[Back to index](index)
