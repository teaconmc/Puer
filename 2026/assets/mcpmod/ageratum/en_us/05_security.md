---
title: Security and Deployment
navigation:
  title: Security and Deployment
description: What the HTTP server actually exposes, to whom, and how to deploy it responsibly.
---

# Security and Deployment

This page exists because the gap between what the documentation implies and what the code does is large enough to matter.

## Three facts, verified in the source

**1. The server binds to every network interface, not to localhost.**

```java
server = HttpServer.create(new InetSocketAddress("0.0.0.0", configuredPort), 0);
```

Both the primary bind and the port-fallback bind use `0.0.0.0`. The console message and the README both point you at `http://127.0.0.1:{port}/debug`, and it is easy to read that as "this is a local-only service" — but that is the *address you visit*, not the interface it *listens on*. **Anything that can route to your machine on that port can reach it.**

**2. There is no authentication.**

No token, no key, no `Authorization` header check, no origin allow-list. Every endpoint is open to whoever connects first.

**3. Cross-origin requests are explicitly permitted from anywhere.**

```java
exchange.getResponseHeaders().set("Access-Control-Allow-Origin", "*");
```

Set in three separate handlers. This means a **web page you visit in a browser** can issue requests to the mod on `localhost` and the browser will not block reading the response.

## What those three combine into

The endpoint list includes `/api/cmd`, which fronts the full action surface from [What the AI can do](02_capabilities) — clicks, keystrokes, camera control, and `executeCommand`.

::: danger
**With the mod running, complete control of your Minecraft client is available to:**

- any other device on the same LAN, café Wi-Fi or hotel network;
- anything else running on your machine, including other users;
- **any website you happen to have open**, via the wildcard CORS policy.

Control means: run any command your player can run, press any key, click anywhere, read your screen. On a single-player world or a server where you are OP, "any command" includes `/op`, `/ban` and `/stop`.
:::

This is not a hidden bug — it is the natural shape of a development tool written for a trusted single-machine workflow. The problem is only that nothing in the game or the console tells you the exposure is network-wide.

## Deploying it responsibly

| Situation | What to do |
|:---|:---|
| Your own dev machine, trusted network | Fine as-is. This is the intended case. |
| Laptop on public or shared Wi-Fi | **Do not run it.** Remove the mod from the profile you use away from home. |
| Need it while on an untrusted network | Firewall the port inbound (block 9000–9876, or just the fixed port you set with `-Dmcp.port`). |
| Shared/multi-user machine | Treat the port as a shell for your game session, because that is what it is. |
| A real server or anything with other players | **Never.** It is a client-side development tool. |

Two practical hardening steps that do not need a code change:

- **Pin the port** with `-Dmcp.port=XXXX` or `MC_MCP_PORT`. Without it the fallback walks 9876 → 9000, so you cannot write a single firewall rule with confidence.
- **Use a dedicated launcher profile** containing this mod, and keep it out of the profile you play on.

## Two mitigating details, stated fairly

- The mod is **client-side**: it drives your own client's input. It does not open a port on a dedicated server, and it grants no capability your own player does not already have.
- Failures are loud rather than silent in one direction: if the server cannot start you get `[MCP-MOD] HTTP server failed:` in the console. There is, however, **no message when someone connects** — the `/debug` dashboard is the only place connections are visible.

## The honest summary

Installing this mod is equivalent to opening an unauthenticated remote-control port for your game client on all interfaces. That is a completely reasonable thing to do on a development machine, and a bad thing to do anywhere else. The tool does not stop you from doing either.

[Back to index](index)
