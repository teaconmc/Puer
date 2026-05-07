---
title: "Sending pings"
navigation:
  title: "01 Sending pings"
---

# Sending pings

## Middle-click behavior

The `Uniform Ping` key is registered under the `Middle Key Ping` key category and defaults to the **middle mouse button**. It has two actions:

- **Short press** (4 ticks or less, about 0.2 seconds): send a Uniform ping at the camera target.
- **Hold** (more than 4 ticks): open the ping wheel; releasing the button closes it without sending a marker.

Uniform pings are smart: when the camera target is a non-friendly entity, the marker is sent as **Enemy**; otherwise it is sent as **Generic**. This happens before the payload leaves the client, so other players see the resolved type rather than "Uniform".

## Ping types

The wheel offers four explicit types, each with its own chat message, color and sound:

| Type | Chat message (English) | Default marker color | Sound |
|:---|:---|:---|:---|
| Generic | `[player] Marks a location.` | `#999999FF` | Bell |
| Warning | `[player] Be careful here.` | `#FFFF00FF` | Chime |
| Goto | `[player] Go here.` | `#00FF00FF` | Pling |
| Enemy | `[player] There are enemy here.` | `#FF0000FF` | Bit |

The wheel is provided by AnvilLib's wheel screen controller and shows the same four actions (Generic, Warning, Goto, Enemy). It is opened while holding the Uniform Ping key.

## Dedicated keys

Four additional key bindings exist in the same category: `Generic`, `Warning`, `Goto` and `Enemy`. None of them has a default binding (`GLFW_KEY_UNKNOWN`), so they are disabled until you assign keys in Controls. When one of those keys is clicked, it sends the corresponding ping directly with the same camera-target logic.

## Targeting rules

Pinging uses the current camera entity's eye position and view direction, not the held item or crosshair hit result only:

- A block or entity is picked up to the configured `maxPingDistance` (default 200 blocks).
- If nothing is hit and `Allow Ping Empty` is enabled, an empty position marker is still sent.
- If something is hit beyond the distance limit and `Allow Ping Empty` is enabled, the point is converted to a miss marker and still sent.
- If `Allow Ping Picked` is disabled, pinging is suppressed while a block or entity is currently pickable (crosshair non-miss), instead of overriding that pick.
- When the nearest hit is an entity, the marker follows that entity.

See [Client configuration](03_configuration) for these toggles.

[Back to the Middle Key Ping index](index)
