---
title: "Getting Started"
navigation:
  title: "01 Getting Started"
---

# Getting Started

The basic building blocks are **anchors** and **connectors**. Anchors are invisible, collision-free marker blocks that the pipe network remembers. Connectors create pipe segments between anchors, and the client renders those segments as curves while you travel.

## First network

1. Craft a pipe anchor and one or more connectors:

   <recipe id="superpipeslide:pipe_anchor"/>

   <recipe id="superpipeslide:pipe_connector_line"/>

   <recipe id="superpipeslide:pipe_connector_auto_curve"/>

   <recipe id="superpipeslide:pipe_connector_gaze_curve"/>

   <recipe id="superpipeslide:pipe_connector_controlled"/>

2. Place two pipe anchors at the positions you want to connect.
3. Right-click one anchor with a connector to select it.
4. Right-click the second anchor to create the pipe connection.

A normal pipe anchor can own at most **two pipe connections**. If an anchor already has two connections, the connector rejects the new one.

## First slide

Walk close to a finished pipe. The client searches nearby pipe segments, projects your position onto the centerline and captures you when you are within the capture radius and vertical tolerance. The defaults are `0.72` blocks and `1.15` blocks.

Once sliding:

- Press **sneak** to leave the pipe.
- Press **jump** to jump off, reverse on the same pipe, or hop to a nearby pipe.
- Hold still while approaching a branch or station choice to pick a route by gaze.

The first time the mod tries to capture you, it shows a slide safety warning screen. You can enable the motion-sickness and photosensitivity options there or continue with current settings.

## Creative quick build

In Creative mode, a connector with a start anchor selected can also be used directly on a block face. The mod places a new pipe anchor at that position and connects it to the selected anchor in one action. Survival players cannot use this shortcut; the connector asks them to place an anchor first.

[Back to the SuperPipeSlide index](index)
