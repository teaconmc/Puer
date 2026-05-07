---
title: Network, Privacy and Self-Hosting
navigation:
  title: Network and Privacy
description: Exactly what leaves your machine, what does not, and how to point the mod at your own server.
---

# Network, Privacy and Self-Hosting

This page states the network behaviour precisely, because the mod's core feature is a web service and that deserves a clear account rather than either alarm or silence.

## What the mod does NOT do

Worth stating first, because it rules out the most serious class of problem:

| Concern | Finding |
|:---|:---|
| Opens a listening port | **No** — no `ServerSocket`, no `bind`, no `listen` anywhere |
| Accepts inbound connections | **No** — all traffic is outbound |
| Executes commands from the network | **No** |
| Requires port forwarding | **No** |

**All network activity is client-initiated and outbound.** Nothing about this mod makes your machine reachable from outside.

## What it does do

Two channels, both to the same configured base URL:

**HTTP, via `java.net.http.HttpClient` (HTTP/1.1):**

| Endpoint | Method | When |
|:---|:---|:---|
| `<apiBaseUrl>/api/room/create` | `POST` (no body) | Generator placed / needs a room |
| `<apiBaseUrl>/api/room/destroy` | `POST` (with body) | Room torn down |

The create response is parsed for `roomId` and `joinUrl`.

**Socket.IO, a persistent connection** opened to the same base URL, which is how the phone-side level reaches the game in real time. On failure it retries with **exponential backoff**: `retryInitialDelaySec` 5 → `retryMaxDelaySec` 120, multiplier `retryDelayMultiplier` 2.0.

## The three things to weigh

::: danger
**1. The default endpoint is a third-party server, hardcoded in the config.**

```
apiBaseUrl = "http://phone-generator.karlcx.cn:10841"
```

Out of the box, every generator placed on your world contacts that host.

**2. It is plain HTTP, not HTTPS.** Traffic is unencrypted in transit.

**3. Player name and UUID are sent in the join URL:**

```
joinUrl + "&playername=" + userNameStr + "&uuid=" + userId
```

So the operator of that endpoint — and anyone able to observe the unencrypted traffic — can see which named accounts, with which UUIDs, are using it.

None of this is hidden or malicious: a phone-to-game bridge genuinely needs a rendezvous server, and the author supplied one so the mod works out of the box. But **the combination of "third-party host + plain HTTP + player identifiers" is worth a deliberate decision** rather than an accident of defaults.
:::

## Self-hosting: the supported mitigation

The mod ships a command specifically for redirecting the endpoint, and it is properly gated:

```
/phone_generator_server get
/phone_generator_server set <url>
```

**Requires `LEVEL_GAMEMASTERS`** — declared explicitly with `.requires(Commands.hasPermission(Commands.LEVEL_GAMEMASTERS))`, so ordinary players cannot repoint it. `set` writes the value through to the config file (it calls `save()`), so the change survives a restart.

::: tip
**This is the recommended deployment for any server where player identifiers matter**: stand up your own instance of the service, then `/phone_generator_server set https://your-host/...`. Because the setting is a plain base URL used for both the HTTP calls and the Socket.IO connection, **an HTTPS endpoint works** — which also removes the plaintext concern.
:::

## Failure behaviour

The mod fails **visibly and safely**:

- Unreachable API → face reads **Server unreachable**, no energy produced
- Lost socket → face reads **Reconnecting…**, backoff applies
- Neither state crashes the game or blocks the tick loop; the calls are asynchronous (`sendAsync`)

There is no silent-failure mode where the block looks fine but produces nothing — the four connection strings on the block face always reflect the real state. See [Getting started](01_getting_started).

## Summary for pack authors

| If you… | Then… |
|:---|:---|
| Ship this in a public modpack | Document the default endpoint, or set your own before release |
| Run a private server | Self-host and use HTTPS; the command makes this a one-liner |
| Care about player identifiers | Self-host — the URL always carries name and UUID |
| Play single-player offline | The mod simply does not produce power; nothing breaks |

[Back to index](index)
