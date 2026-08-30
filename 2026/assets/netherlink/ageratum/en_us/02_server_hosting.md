---
title: Hosting from the Server
navigation:
  title: Hosting from the Server
description: The /nli command, how accounts and server presence are managed on a dedicated server.
---

# Hosting from the Server

NetherLink exposes a single server command, registered as `/netherlink`, with the short alias `/nli`. It is the main bridge between a dedicated server and the NetherLink account / presence system.

## The `/nli` command

- `/nli` (alias of `/netherlink`) is the root command for server-side account and presence management.

Use it on a dedicated server to manage the NetherLink account that represents that server instance, and to control how the server advertises its presence to friends.

## How accounts and presence are stored

On the server, account records are kept in `netherlink/accounts/*.json`. The server refreshes these records every **1200 ticks**, so account and presence state pushed through the command is periodically synchronized with the backend.

## Configuration

The command reads its active backend from the shared configuration file `config/netherlink/config.json`:

- `activeService` selects which backend the account and presence operations use.
- `instanceName` identifies this server instance in presence / friend lists.

Changing these requires editing the config; the selected backend then drives the `/nli` account operations.

## What this means for a host

To make a world joinable by a friend through NetherLink:

1. Make sure the server is running with a configured `activeService` and `instanceName`.
2. Use `/nli` to manage the server's NetherLink account and presence.
3. Friends who are online, connected to that service and who have your consent can then join directly over the peer-to-peer link.

[Back to index](index)
