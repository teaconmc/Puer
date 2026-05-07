---
title: "World Effects"
navigation:
  title: "02 World Effects"
---

# World Effects

## Critical and enchanted hits

A normal critical hit plays `essentials/critical` at the center of the target's bounding box. An enchanted hit uses the blue miniature explosion effect. The mod intercepts vanilla `CRIT` and `ENCHANTED_HIT` tracking particles, so their vanilla tracking emitters are not created while the corresponding replacement is active.

The two hit types have separate toggles, allowing either replacement to remain vanilla independently.

::: warning
The current `handleAnimate` injection mistakenly uses the entity ID as the animation action. When a runtime entity ID is exactly `4` or `5`, any animation packet can be misread as a normal or enchanted critical hit and canceled while that replacement is enabled; this is unrelated to entity type. Critical hits on other entities still use the vanilla tracking-particle replacement path.
:::

## Lightning

Each new lightning entity receives one opportunity to create an effect. When replacement is enabled and quota remains, the mod plays the new effect at the bolt and hides that bolt's vanilla rendering. If the limit has already been reached, the bolt keeps its vanilla appearance.

![Violet-white lightning effects and flying debris](aaa_particles_world:ageratum/aaa_particles_world_showcase_lightning_bolt.png)

## Explosions

- Small explosions use the yellow miniature explosion.
- Large explosions use the full explosion effect.
- When the client receives explosion data with a radius, the visual is scaled from `radius x 1.75`.
- When the small-explosion particle provider finds a dying Ender Dragon within ten blocks, it uses the blue variant.

Small and large replacements are independent. Disabling only the large replacement may leave the vanilla large blast's internal small explosions replaced. Disable both options to restore the complete vanilla explosion.

![A bright particle burst from a large explosion](aaa_particles_world:ageratum/aaa_particles_world_showcase_explosion.png)

## Loot beams and landing sounds

A dropped item attempts to create its beam only once after spawning. The mod reads the color of the first tooltip line:

- No color or white: no beam and no dedicated landing sound.
- Any other color: create a beam using that color.

The landing sound requires loot beams to be enabled. To avoid duplicate sounds when an item crosses tiny height differences, another sound becomes eligible only after the item leaves the ground with Y velocity less than or equal to `-0.1` and then lands again.

![A loot beam above a colored-name dropped item](aaa_particles_world:ageratum/aaa_particles_world_showcase_loot.png)

## Fireball trails

Supported `Fireball` entities receive a bound `missile_boost` trail, scaled to entity size and oriented from velocity. While active, the mod hides the fireball's vanilla burning appearance and vanilla trail. A fireball that is invisible when it joins the client world does not receive a trail.

Fireball trails require the All particle level.

## Swamp fireflies

Fireflies use one visual-only ambient emitter that follows the local player. It appears only while all of these conditions are true:

- The player's biome belongs to the swamp biome tag.
- The world's default clock is between `13000` and `23500`.
- It is not raining.
- The firefly toggle is enabled and Effekseer effects are generally available.

When those conditions stop matching, the emitter fades over `20` client ticks and then stops.

[Back to index](index)
