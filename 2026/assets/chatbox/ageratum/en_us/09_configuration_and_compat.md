---
title: "Configuration and Compatibility"
navigation:
  title: "09 Configuration and Compatibility"
---

# Configuration and Compatibility

## Client Config

ChatBox has one config, named `chatbox_config`, and it is **client only**. There is no server or common config, so nothing here can be enforced by a server. It is managed through AutoConfig and edited with the Cloth Config screen.

| Option | Default | Range | Meaning |
|:---|:---|:---|:---|
| `historicalScrollSpeed` | `10` | `1`–`200` | Scroll speed in the history-log screen |
| `soundInterruptionEnabled` | `true` | on/off | Whether a line with no new sound interrupts the sound still playing |
| `charPerSecond` | `20` | `1`–`721` | Characters typed out per second |
| `portraitWidthPercent` | `100` | `1`–`200` | Scale factor applied to image portrait width |

Every option is presentation or comfort. None of them changes which conversations exist, which options unlock, or what a command does.

## Loaders

The mod is built from one common source set with thin Fabric and NeoForge layers, so both loaders get the same dialogue and theme formats, the same command and the same renderer. Differences are limited to how each platform registers reload listeners, networking and events.

| Target | Version facts |
|:---|:---|
| Minecraft | `26.1.2`, accepted range `[26,27)` |
| NeoForge | built against `26.1.2.43-beta`, dependency range `[26.1,)`, loader `[4,)` |
| Fabric | Fabric API `0.148.2+26.1.2`, loader `0.18.4` |

## Required: Cloth Config

The NeoForge metadata declares `cloth_config` as a **required** dependency on both sides, and the config class is written against AutoConfig. Install Cloth Config alongside ChatBox; the mod also carries a runtime check for either spelling of the mod id, so it degrades rather than crashing if the class is absent.

## Optional: WaterMedia

Video playback needs WaterMedia. The mod checks for it before building a video component and returns nothing when it is missing.

::: warning
Without WaterMedia a `video` block is dropped silently — the line still plays, just with no video and no warning to the player. Never make a video the only way a player learns something essential.
:::

## Optional: KubeJS-Style Scripting

On NeoForge the mod ships an integration layer that exposes ChatBox events to a JavaScript scripting mod, including hooks for render events, skip-chat events and general post-init events. This is a NeoForge-only surface; the Fabric build does not include it.

The MVEL engine itself is bundled inside the jar, so expressions work with no extra install on either loader.

## Extending From Another Mod

Two extension points are open to add-ons:

- **Event types.** Register a new type with a client action, optionally a server action, and whether the server needs to be told. See [Events and Conditions](05_events_and_conditions).
- **MVEL methods and properties.** Register a named method or property resolver, which then becomes callable as `subject.yourMethod(...)` or readable as `subject.yourProperty` inside any expression.

Both registries are keyed by name, and both must be populated during mod initialisation to be visible to datapacks.

## Resource Pack Overrides

Because every visual element is addressed by texture identifier through a theme, a resource pack can restyle dialogue boxes, options, buttons and key prompts without touching any datapack. The mod's own default art lives under its `textures/chatbox`, `textures/options`, `textures/button` and `textures/key` folders.

[Back to the ChatBox index](index)
