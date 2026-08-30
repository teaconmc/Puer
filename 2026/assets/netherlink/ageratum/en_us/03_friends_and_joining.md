---
title: Friends and Joining
navigation:
  title: Friends and Joining
description: The friends screen, presence statuses, and peer-to-peer joining of a friend's world.
---

# Friends and Joining

The core of NetherLink is its friend list and the ability to join a friend's hosted world **peer-to-peer**.

## The friends screen

NetherLink provides a friends screen where you can manage who is on your friend list. It reflects the live status of each friend — in particular whether they are currently **online** and **hosting a world** through NetherLink.

Friendship here is bidirectional and consent-based: you add someone as a friend, and a friend's world becomes visible to you only through the account / presence system you both use.

## Presence

When you are hosting a world with NetherLink set up (see [Hosting from the Server](02_server_hosting.md)), your friends see your server as online and joinable. Presence is periodically refreshed from the account records (every 1200 ticks on the server side).

## Joining a friend's world

If a friend is online and hosting, and you have a valid (signed-in) online session, you can **join directly** through NetherLink:

- The connection is **peer-to-peer over WebRTC**.
- **No port forwarding** configuration is required on the host's router.
- Joining still respects consent — a friend's hosted world is only reachable under the conditions allowed by the presence / join flow.

Because it is peer-to-peer, an online session and both peers being reachable are required; it is not a replacement for ordinary server whitelisting for players who are not linked this way.

## Statuses

The mod distinguishes whether a peer is offline, online, or hosting, and reports the appropriate state in the friends screen so you know when a direct join is available.

[Back to index](index)
