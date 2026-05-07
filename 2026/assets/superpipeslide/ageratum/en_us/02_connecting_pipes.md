---
title: "Connecting Pipes"
navigation:
  title: "02 Connecting Pipes"
---

# Connecting Pipes

Pipe connections are stored as network data, not as solid blocks. The client renders them as curves, but they have no collision; players travel along the mathematical centerline.

## Connector modes

The four connector items share the same workflow but solve the curve differently:

| Connector | Behavior |
|:---|:---|
| `pipe_connector_line` | A straight segment between the two anchors. |
| `pipe_connector_auto_curve` | An automatic smoothed curve between the anchors. |
| `pipe_connector_gaze_curve` | Uses the direction you are looking at when selecting the first anchor as the start tangent. |
| `pipe_connector_controlled` | Lets you add up to 8 control points before finishing the curve. |

All connectors are single-stack tools. The tooltip shows the active mode and whether a start anchor is selected.

## Workflow

1. Right-click an anchor to select it. The anchor position and look direction are stored on the connector.
2. For the controlled connector, right-click block faces to add control points.
3. Right-click the destination anchor to solve and create the connection.
4. If the solved connection is longer than the configured maximum (`maxConnectionLength`, default `64`), the connection is rejected with a "too long" message.

Sneak-right-click on air clears the selection. Sneak-right-click on an anchor removes the connections touching that anchor; on a branch anchor it removes the whole branch node and its managed connections.

## Anchor capacity

- A normal pipe anchor can hold at most two connections.
- A fold anchor can hold at most one connection; the extra connections are disconnected during upgrade.
- A branch anchor holds a managed branch node instead of a fixed two-connection limit.

## Removing pipes

Craft the pipe remover and right-click while looking at a pipe segment:

<recipe id="superpipeslide:pipe_remover"/>

The remover raycasts up to 8 blocks with a pick radius of `0.55`. It removes the targeted connection and reports the result in an overlay message.

## Cross-dimension rule

A direct connection between anchors in different dimensions is rejected in this phase. Cross-dimension travel uses **dimension fold anchors**, which are configured as paired endpoints and teleport the sliding player between dimensions.

[Back to the SuperPipeSlide index](index)
