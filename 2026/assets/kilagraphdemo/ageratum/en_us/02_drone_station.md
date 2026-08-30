---
title: "The drone station"
navigation:
  title: "02 The drone station"
items:
  - kilagraphdemo:drone_station
---

# The drone station

The Drone Programming Station is where you write, test and submit a drone program. It owns a virtual drone and drives the farming run.

## Setting it up

The station needs a field. Place **Fertile Soil directly below the station block**. If you forget, the station tells you so:

> No fertile soil beneath the station — place Fertile Soil directly below it.

The soil you place is the field you experiment on. Note that this in-world field is your **practice ground** — the official score is computed on a separate fixed field, which is why your layout cannot influence your ranking. See [04 Farm and scoring](04_farm_and_scoring).

## Run controls

The station's UI has six buttons plus a status line.

| Control | Effect |
|:---|:---|
| Run | starts the program from the beginning |
| Pause | pauses a running program |
| Resume | continues a paused run |
| Step | advances exactly one tick |
| Stop | stops the run and resets the drone |
| Upload | submits the current program to be scored |

The status line reads `state · tick N · score N`, so you can watch the tick counter and the banked score climb while the program runs.

**Step is the tool that makes debugging possible.** Combined with the Print node ([03 Drone nodes](03_drone_nodes)) and the Log Panel, you can advance one tick at a time and see exactly what your graph decided.

## The four run states

| State | Meaning |
|:---|:---|
| Idle | nothing running; the field is in the state you arranged it |
| Running | executing on the server |
| Paused | the owner may resume, single-step, or stop |
| Finished | the run reached its tick budget and was scored |

**The server is authoritative.** The client only mirrors the state for rendering and for deciding which buttons are enabled, so what you see always reflects the real run rather than a local guess.

## A paused run does not wait forever

A paused run expires after **12,000 ticks — ten minutes** of real time, after which the station gives up on it.

Worth flagging for anyone reading the source: the code comment next to this limit says "5 minutes", but the expression is `20 * 60 * 10`, which at twenty ticks per second is **ten** minutes. The behaviour is ten minutes; the comment is wrong.

## Two guards you can hit

**Steps per tick are capped at 10,000.** Within one tick the runtime keeps executing *pure logic* nodes until it reaches an *action* node. If a graph loops through logic nodes without ever committing an action, this cap stops it instead of hanging the server. In practice hitting it means your graph has a loop with no action inside.

**The run log holds 200 lines.** The Print node appends to a rolling log shown in the UI's Log Panel; older lines are dropped once you pass 200. If you are printing every tick, only the most recent stretch survives.

## Who can do what

The station is owned by whoever set it up, and the owner drives the run.

The **Drone Ranking Display** is deliberately different: anyone may open its viewer to watch a leaderboard entry replay. It is a spectator screen, not a second control panel — see [04 Farm and scoring](04_farm_and_scoring).

[Back to index](index)
