---
title: "Slide-show integration"
navigation:
  title: "07 Slide-show integration"
---

# Slide-show integration

This feature exists only when the optional **`slide_show`** mod is installed. Without it everything else in KilaGraphDemo works normally and this page does not apply.

## What it adds

With `slide_show` present, KilaGraphDemo patches the Projector screen to add a **KilaGraph Shader** button. From there you can author a shader graph and apply it as a live effect on that projector — visible to everyone, not just you.

So instead of a projector showing a static image or an animated sequence, it can show the output of a node graph you wrote.

## The workflow

The projector screen lists **Local works** and **Server works**, each with a title and description.

| Action | Effect |
|:---|:---|
| New | creates a blank local shader effect |
| Edit | opens the effect in the graph editor |
| Save meta | saves the edited title and description locally |
| Upload | publishes the effect to the server |
| Download (edit locally) | copies a shared effect into your local list |
| Use on this projector | displays the effect on this projector for everyone |
| Clear from projector | stops the effect on this projector |
| Delete (local) | removes your local copy |
| Delete from server | permanently removes the published effect |

An effect currently applied somewhere is marked **(in use)**, which stops you from deleting something a build depends on without noticing.

## Sharing rules are the same

Uploading a shader effect goes through exactly the same publishing system as holograms — including the **one published work per player** limit and every size cap. See [06 Sharing and limits](06_sharing_and_limits).

That shared limit is worth planning around: your single publish slot covers **both** hologram works and slide-show effects, so you choose one exhibit across both features rather than one of each.

## Editing is the same editor

Shader effects use the same graph editor as holograms, so the same conditions apply — most importantly, **the shader graph cannot be edited while an Iris shaderpack is active**. Disable shaders first. See [05 Holograms](05_holograms).

## How it hooks in

The integration is implemented as a **separate, conditional mixin configuration**. A mixin plugin decides at load time whether to apply it, so the patches simply do not activate when `slide_show` is absent — that is why the optional dependency is safe rather than crash-prone.

The patches attach to the projector's block entity, its renderer, its render state and its screen. The mod also reaches the slide-show mod's bitmap providers for static, GIF and WebP images, and its texture-sequence texture, which is what lets a graph sample the projector's own current image rather than only external textures.

If you are troubleshooting: a missing KilaGraph Shader button means the integration did not load, which almost always means `slide_show` is not present or failed to load itself.

[Back to index](index)
