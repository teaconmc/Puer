---
title: Server Options
navigation:
  title: Server Options
---

# Server Options

## COMMON Configuration

The specification named `ServerConfig` is actually registered as a NeoForge `COMMON` config. Its current fields are:

| Configuration key | Default | Effect |
|:---|:---:|:---|
| `allowServerSentChunk` | `false` | Control whether the standard client UI exposes server-chunk request buttons |
| `overrideSeaLevel` | `false` | Override the sea level used by map compilation |
| `seaLevelOverride` | `0` | Height used when override is enabled; any integer is accepted |

Sea-level override changes only how the map compiler chooses its lower recording boundary. It does not change the dimension's real sea level, chunks, or world generation.

## Two Chunk Requests

When `allowServerSentChunk` is available to the standard UI, it provides:

- **Request Geomatics**: scan a square with a `256`-chunk radius around the player and request positions missing from local cache. It requests a non-generating status, but can still create substantial server loading and network work.
- **Selected-chunk server resend**: request full chunk status for the selected list, potentially loading or generating selected chunks before sending full data back to the client.

The server places requests in a batch queue with at most `64` active tasks. Each task adds a no-timeout loading ticket and removes it after completion.

::: warning
The current batcher cannot consume an empty request. When the position list has no chunks, it returns without removing the queue head. The standard Request Geomatics button can still send an empty list when no cached chunks are missing; all later chunk requests on that server then remain blocked behind it, and a custom client can trigger the same condition deliberately. Reject or discard empty lists in the network handler or batcher before deployment. Once stuck, the current implementation must reinitialize the server batcher to recover.
:::

::: danger
A radius of `256` covers up to `513 × 513` chunk positions. Even after excluding locally cached chunks, Request Geomatics can produce a very large list. Do not use it as routine exploration or world pregeneration.
:::

## Permission Boundary

The current implementation uses `allowServerSentChunk` to decide whether standard client buttons are shown. The server-side packet handler itself performs no per-player gamemaster permission check and does not read this Boolean again. It is not a reliable access-control layer.

Servers that need strict resource control should restrict connecting clients, monitor request-driven loading, and verify or add a network-layer permission policy before deployment. Waypoint Teleport is a separate path: it sends `/tp` and is governed by vanilla command permission.

## Deployment Checklist

1. Confirm that client and server use compatible versions.
2. Test general geomatics requests and a small selected resend separately in staging.
3. Observe server tick time, loaded-chunk count, and network traffic.
4. Verify that client COMMON configuration exposes the intended buttons; do not assume dedicated-server configuration automatically becomes client permission state.
5. Expose requests only after accepting their resource cost.

[Back to the x3d Map index](index)
