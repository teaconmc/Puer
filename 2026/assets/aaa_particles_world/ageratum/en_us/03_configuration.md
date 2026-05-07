---
title: "Client Configuration"
navigation:
  title: "03 Client Configuration"
---

# Client Configuration

## Effect toggles

Every boolean setting below defaults to `true`:

| Key | Controls |
|:--|:--|
| `enable_crit` | Normal critical-hit replacement |
| `enable_magical_crit` | Enchanted critical-hit replacement |
| `enable_lightning` | Lightning replacement |
| `enable_small_explosion` | Small explosion replacement |
| `enable_big_explosion` | Large explosion replacement |
| `enable_loot_beam` | Beams for non-white item names |
| `enable_loot_sound` | Landing sounds for beam-eligible items |
| `enable_fireball_trail` | Fireball trails |
| `enable_fireflies` | Nighttime swamp fireflies |

`enable_loot_sound` additionally depends on `enable_loot_beam`. Disabling beams also disables the dedicated landing sound.

## Concurrency limits

The `limitation` section provides per-category Effekseer quotas, but creation paths do not apply those limits uniformly:

| Key | Default | Minimum |
|:--|--:|--:|
| `max_lightning_emitters` | `8` | `0` |
| `max_small_explosion_emitters` | `240` | `0` |
| `max_big_explosion_emitters` | `120` | `0` |
| `max_loot_beam_emitters` | `1024` | `0` |

Counts come from emitter containers in the currently loaded AAA Particles effects. Lower values reduce peaks on guarded paths. A value of `0` prevents only paths that actually perform the quota check from creating new emitters.

Over-quota lightning remains vanilla. Particle-provider explosion replacements also avoid replacing fallback particles with more small effects when the large quota is exhausted. Over-quota loot beams are simply skipped.

::: warning
The normal `ClientboundExplodePacket` handler plays small and large explosion effects directly without checking explosion quotas. Those effects still appear when `max_small_explosion_emitters` or `max_big_explosion_emitters` is `0`; the two caps guard only particle-provider replacement paths.
:::

## Vanilla poofs

The `poofs` section contains two Minecraft 26.1 options, both enabled by default:

- `remove_poof_for_small_explosion`
- `remove_poof_for_big_explosion`

Small-poof removal requires the small explosion replacement. In the current implementation, large-poof removal checks whether either explosion replacement is enabled, rather than checking only the large toggle; this is a small difference between code and the configuration comment. Once both explosion replacements are disabled, neither option hides vanilla effects independently.

## Suggested profiles

- Combat feedback only: keep both critical effects and lightning, then disable fireflies and loot beams.
- Large item piles: lower the loot-beam cap first or disable landing sounds.
- Chain-explosion slowdown: lower both caps to reduce particle-provider replacements. If slowdown remains, disable the relevant explosion replacement because the packet path bypasses the caps.
- Fully vanilla explosions: disable both explosion replacements and both poof-removal options.

[Back to index](index)
