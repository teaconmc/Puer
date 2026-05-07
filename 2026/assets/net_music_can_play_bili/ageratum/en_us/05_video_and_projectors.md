---
title: Video and Projectors
navigation:
  title: Video and Projectors
description: Video decoding, YUV shaders, the Iris compatibility layer, and where video can appear.
---

# Video and projectors

## Yes, it plays video

The mod's own description mentions only audio. In fact it ships a **video JNI bridge**, three shaders, twenty files of video rendering code, dedicated render types, and a mixin that protects its video shaders from being overridden.

Video can appear in several places:

| Surface | What it is |
|:---|:---|
| **Video Projector** block | a projected screen in the world |
| **MP4** item | video in your hand, and in an item screen |
| **Holographic Glasses** | a worn screen renderer |
| **Pad** item | an item-screen renderer |

## Decoding goes to YUV, not RGBA

Video frames arrive from FFmpeg in **planar YUV** formats — YUV420P and NV12 — which is what video codecs natively produce. The mod uploads those planes directly and converts them in a **fragment shader** on the GPU, using multi-plane samplers and its own render types.

That is the efficient path: converting YUV to RGBA on the CPU for every frame is exactly the kind of work that turns a video into a slideshow.

## The Iris compatibility layer

Iris is used but **not declared** in the mod's metadata. It is, however, accessed entirely through a guarded compatibility helper rather than referenced unconditionally, and there is a deliberate fallback — which makes this materially safer than a bare undeclared dependency.

The behaviour is:

| Situation | Path |
|:---|:---|
| No shaderpack in use | the **YUV shader path** — the fast one |
| A shaderpack in use | **RGBA fallback**, converted before upload |

The reason is structural: the YUV path needs the mod's own fragment shaders and multi-plane samplers, and a shaderpack legitimately wants to replace compiled programs. Rather than fight for control, the mod steps back to a compatible path.

It does, however, protect its own pipeline: a guard keeps its video fragment shaders from being replaced, and the source states explicitly that the check is **scoped to this mod's own pipeline id** and does not modify Iris global state. A mixin implements the bypass at the device level.

There is also an on-screen **Iris warning placeholder** and a debug screen, so when video does not appear under shaders you get a visible explanation rather than a black rectangle.

Two system properties exist for forcing behaviour:

| Property | Effect |
|:---|:---|
| `bili.video.iris.disable_yuv_shader=true` | force the CPU RGBA fallback |
| `ncpb.video.pipeline.iris_warning_placeholder_view_depth_offset` | tune the warning placeholder's depth offset |

## Rendering off-screen, and why it is careful

Handheld and item-screen video render through an off-screen GUI renderer, and the source carries a specific caution: the render system's projection backup is **a single slot, not a stack**, and Iris's hand-rendering layer already uses it to save the world projection. So the off-screen GUI deliberately does **not** nest a backup/restore, because doing so would overwrite Iris's saved projection and leave the block selection outline drawn with the hand projection.

That is an unusually precise piece of engineering, and it is the kind of detail that explains why the video path looks over-built: it is working around real interactions rather than guessing.

## Projector configuration

Both projectors take configuration over their own packets — a video projector config packet and a lyric projector config packet — so each placed projector can be tuned independently rather than sharing a global setting.

The **Lyric Projector** displays lyrics that come from **Bilibili subtitles**, which is covered in [03 Bilibili integration](03_bilibili_integration). If a video has no captions, there is nothing for it to show.

## Linking a projector to a source

Projectors are linked rather than self-driving. The mod's message set includes distinct states for linking a projector to an item, linking, and unlinking, and the **Media Management Tool** is the item that manages those bindings — see [02 Devices](02_devices).

Note that most of those linking messages are **only translated into Chinese**; on an English client they appear as raw keys. See [08 Technical notes and limits](08_technical_and_limits).

## Performance expectations

Video decoding plus GPU conversion plus Minecraft is a real load. Practical guidance from what the code implies:

- **Prefer the YUV path.** If you are running a shaderpack, the RGBA fallback costs more.
- **One source, many surfaces.** Linking devices to a shared source avoids duplicate decodes, exactly as with speakers.
- **The mod is instrumented.** Playback diagnostics and a placeholder debug screen exist; use them before assuming your hardware is at fault.

[Back to index](index)
