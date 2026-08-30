---
title: "Damage types & combat"
navigation:
  title: "Damage types & combat"
---

# Damage types & combat

This page covers the three custom damage types, the Combat State tracker that drives every "on entering combat" relic, and the mod's combat items.

## Damage types

| ID | Message ID | Exhaustion | Tags |
|:---|:---|:---|:---|
| `minethespire:orb_lightning` | `lightningBolt` | 0.1 | `is_lightning`, `bypasses_cooldown`, `bypasses_shield`, `avoids_guardian_thorns`, `no_knockback`, `panic_causes`, `always_triggers_silverfish`, `always_hurts_ender_dragons` |
| `minethespire:orb_dark` | `magic` | 0.1 | `bypasses_cooldown`, `bypasses_shield`, `avoids_guardian_thorns`, `always_triggers_silverfish`, `no_knockback`, `panic_causes`, `always_hurts_ender_dragons` |
| `minethespire:bouncing_hit` | `thrown` | 0.1 | `no_knockback`, `panic_causes`, `is_projectile`, `always_triggers_silverfish` |

The message IDs are borrowed from vanilla, so death messages read as if the victim was killed by lightning, by magic, or by a thrown object; the mod ships no dedicated death-message translation keys.

Both orb damage types bypass the invulnerability cooldown and shields, which is why orbs can chip a target every passive cycle regardless of hit timing.

## Combat State

Combat State is a synced attachment (`minethespire:combat_state`) on every living entity, holding a remaining tick counter plus a set of hostile UUIDs. It is what makes relic triggers fire.

### Entering combat

Two entities **mutually** register each other as hostiles when either of these happens:

- `AttackEntityEvent` — a player attacks a living entity.
- `LivingIncomingDamageEvent` — an entity takes damage whose source entity (or direct entity) is a living entity other than itself.

Adding a hostile resets the counter to `max_combat_ticks` (default 300 ticks = 15 s). The `onEnterCombat` callback fires only when the counter is at its maximum **and** the previous tick's value was 0 or less, so picking up new hostiles mid-fight does not re-trigger entry bonuses.

### Leaving combat

The counter decreases by 1 each tick. Two things can end it:

- If the hostile set becomes empty and the counter is still above `quick_exit_combat_ticks` (default 60), it is clamped down to that value — a fast wind-down once everything hostile is gone or dead.
- `onExitCombat` fires on the tick the counter reaches exactly 1, then the hostile set is cleared.

Hostiles are also pruned lazily: any UUID that no longer resolves to a living, non-removed entity in the same level is dropped during iteration, and `EntityLeaveLevelEvent` removes the departing entity from every hostile's set.

### What fires when

| Moment | Effects |
|:---|:---|
| A new hostile is added | Bag of Marbles → Vulnerable II for 100 ticks on that hostile |
| Entering combat | Ring of the Snake / Silent Mask → vanilla Speed II for 100 ticks |
| Entering combat | Cracked Core / Defect Mask → channel one Lightning Orb, but only if you currently hold zero orbs |
| Entering combat | Anchor / Horn Cleat / Captain's Wheel → add `prepared_blocking` to Blocking Value |
| Entering combat | Blood Vial → heal 2 health |
| **Leaving** combat | Akabeko → infinite Vigor VIII |
| **Leaving** combat | Burning Blood / Ironclad Mask → heal 6 health |
| Taking damage | Centennial Puzzle → vanilla Speed II for 100 ticks |

Three of these disagree with their in-game tooltips, and the code is what actually runs:

- **Akabeko's tooltip says "When entered combat, obtain Vigor 8", but the code calls it from `onExitCombat`.** You receive Vigor when the fight *ends*, not when it starts. (Equipping Akabeko through a Curios slot while out of combat also grants it immediately.)
- **Burning Blood's tooltip says "After a perfect victory, heals 6 Health".** There is no notion of a perfect victory anywhere in the source; it heals 6 on *any* combat exit, including one where you were nearly killed or simply ran away.
- **Ring of the Snake's tooltip says "boost Movement Speed by 30%", but the code applies vanilla Speed II**, which is +40 % movement speed in vanilla terms. The deprecated `serpent_speed` effect *does* contain a real +30 % modifier, but nothing applies it.

Note also that Vigor is consumed by attacking, so the infinite Vigor VIII from Akabeko is spent on your first hit of the *next* fight.

## Thorns

The `minethespire:thorns` attribute (default 0, max 1024) is granted by Bronze Scales (+3). On `LivingIncomingDamageEvent`, if the victim has any Thorns value, the damage source's **direct entity** takes that much vanilla `minecraft:thorns` damage.

Two consequences follow from the implementation:

- Because it reads the *direct* entity, an arrow or thrown item absorbs the retaliation instead of the shooter.
- Because it runs on the incoming-damage event, Thorns fires even when the hit is later fully absorbed by Blocking Value.

## Combat items

### Heavy Blade

An Epic Netherite-tier sword: +13 attack damage, −3.75 attack speed. Its `getAttackDamageBonus` adds `6.0 × (Strength amplifier + 1)` on top of the normal damage. Vanilla Strength already gives +3 per level, so the total scaling is 9 per level — exactly the "Strength affects this weapon 3 times" the tooltip promises. The tooltip line previews your current bonus live.

### Pain Strike

An Iron-tier sword (+5 attack damage, −3.35 attack speed) that applies **Vulnerable II for 80 ticks** on hit, but only if the attacker's attack-strength scale is at least `0.9` — a fully charged swing.

Two oddities: the class is named `PainStrickItem` and its tooltip key is `tooltip.minethespire.pain_strick.tip` (with "strick"), while the item ID is `pain_strike`. And because `ModItems` registers it without a `stacksTo(1)` call, this sword **stacks to 64**.

### Bouncing Flask

A thrown flask with gravity `0.05`, throw power `1.35` and a 200-tick lifetime.

- On hitting a living entity it deals `0.0` damage of type `bouncing_hit` — the hit exists purely to trigger damage events — then applies **Venin**: amplifier 2 (Venin III) if the target had none, otherwise the existing amplifier **+3**.
- It may bounce twice, so a throw lands up to **three** hits, matching the tooltip "Apply Venin III 3 times".
- After a hit it looks for another hostile from your Combat State within 8 blocks of the entity it just struck, and arcs toward it with a lead-prediction trajectory. With no second hostile it re-targets the same entity; with no valid entity at all it picks a random nearby point.
- The same entity cannot be re-hit for 8 ticks, and the owner is immune for the first 10 ticks of flight.
- Bouncing off a block reflects the velocity along the hit axis and scales it to 75 %.

### Dark Shuriken

The Dark Shuriken has two completely separate actions.

**Right-click — throw.** Spawns a `dark_shuriken_projectile` at power 1.2 that deals `5.0` damage of vanilla `thrown` type to the first entity hit, then drops itself as an item on the ground (unless the thrower has infinite materials). One shuriken is consumed per throw.

**Hold left-click for 20 ticks — the Mind Bloom trade.** The client detects the attack key being held with a Dark Shuriken in the main hand, suppresses the normal attack, plays the item-activation animation with a horn-toot use pose, and counts to 20. On completion the server then:

1. Applies **Mind Bloom** with infinite duration.
2. Enchants **every equipment slot** with every enchantment that item supports, each at its maximum level.
3. Consumes one Dark Shuriken.

This is the deal the tooltip advertises in green and red: *"Fully Enchant all your equipments"* and *"You can no longer heal"*. Given how hard Mind Bloom is to remove (see [04 Mob effects](04_effects)), treat it as permanent.

The 20-tick charge timer lives entirely on the client. The server handler only re-checks that the main-hand item is a Dark Shuriken — it does not verify that any charging actually happened, and there is no cooldown.

[Back to index](index)
