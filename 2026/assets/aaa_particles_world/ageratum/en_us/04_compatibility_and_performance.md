---
title: "Compatibility and Performance"
navigation:
  title: "04 Compatibility and Performance"
---

# Compatibility and Performance

## Minecraft particle levels

| Particle setting | Mod behavior |
|:--|:--|
| All | Every enabled effect whose conditions match may play |
| Decreased | General effects remain available, but fireball trails are explicitly disabled |
| Minimal | `isEffekEnabled` returns false and all Effekseer effects are disabled |

Decreased is therefore not a global off switch. If only fireball trails are absent, that behavior is expected.

## Native platform support

AAA Particles checks the native Effekseer platform. When it reports the current platform as unsupported, this mod disables all Effekseer effects. An individual configuration option cannot override that platform decision.

## Performance strategy

- Lightning, loot beams, and particle-provider replacements for small and large explosions perform independent quota checks. Normal explosion packets bypass both explosion caps.
- Fireflies maintain one ambient emitter that follows the player and fades when conditions cease to match.
- Lightning and dropped items use one-time tickets to avoid creating a new effect every tick for the same entity.
- Fireball trails are entity-bound, with their lifetime managed through AAA Particles.

In scenes with very large item piles, the default loot-beam cap of `1024` is the first value worth lowering. In explosion-heavy scenes, the two explosion caps can reduce provider replacements, but packet-driven explosions still require disabling the relevant replacement toggle.

## Troubleshooting

### No effects appear at all

1. Confirm that AAA Particles `2.1+` loaded.
2. Confirm that particles are not set to Minimal.
3. Check logs for unsupported native-platform or effect-resource loading messages.
4. Confirm that the relevant client toggles were not all disabled.

### A dropped item has no beam

Check that its first displayed name line actually has a non-white color. Ordinary white names are intentionally ignored. The beam toggle, available quota, and AAA Particles support must also all be present.

### No fireflies appear in a swamp

Confirm that the current biome belongs to the swamp tag, the time is between `13000` and `23500`, and it is not raining. Daytime, rain, or leaving the swamp starts the fade-out.

### A large explosion still looks replaced

After the large replacement is disabled, internal small explosions may still be caught by the small replacement. The two maximum values are not global off switches because normal explosion packets do not read them. Disable both `enable_big_explosion` and `enable_small_explosion` to return fully to vanilla particles.

[Back to index](index)
