---
title: "Giving an order"
navigation:
  title: "03 Giving an order"
items:
  - maid_bakeries:craft_order
---

# Giving an order

## The handover

1. Set the maid to the **Baking** task.
2. Hold a **Craft Order** that already has work written on it.
3. Right-click the maid.

On success you hear the experience-orb pickup sound and she starts working. That sound is your only confirmation, so listen for it.

## Three rules the handover must pass

**You must be the maid's owner.** Right-clicking someone else's maid with an order is refused with *"You are not the owner of this maid and thus cannot set tasks"*.

**She must not already have an order.** A maid already working through a queue refuses a new one with *"Currently, the maid is already undertaking an ongoing baking task and cannot set a new one"*. Let her finish, or her queue must be cleared, before reassigning.

**The order must not be blank.** If the order has no result recorded, the right-click is silently ignored — no message, no sound. An order you never finished editing looks identical to one the maid rejected, so check the tooltip: a filled order shows a **Result:** line naming what it produces.

## What happens to your order

Each step of the order names a craft mode and a result item. For every step the mod:

1. Looks up the recipe type for that mode.
2. **Verifies the result is actually producible by that recipe type.** A step asking the oven for something the oven cannot bake is dropped rather than causing an error.
3. Finds a recipe that produces it and records that recipe plus how many you asked for.

Steps that fail the check are quietly skipped, so an order can be partially accepted. If nothing at all validates, the handover ends without starting work.

## Two limits worth planning around

**The queue is capped at five steps.** If your order contains more, **everything past the fifth is discarded** — silently, with no warning in-game. Keep an order to five steps or fewer, or split the work across several handovers.

**Only the first matching recipe is used.** When several recipes produce the same item, the mod takes the first one it finds and you cannot choose which. If a result has both a cheap and an expensive recipe, you do not control which the maid follows.

## If something goes wrong mid-order

The handover is wrapped in a safety net. If building the queue throws an error, the maid is **reset to the Idle task**, her queue is cleared, and the error is logged. So a malformed order leaves you with an idle maid rather than a broken one — but you also lose whatever task she was on.

There is also a timeout message, *"[Maid's Bakeries] … task timeout"*, for a step that takes too long. Seeing it usually means the maid could not reach or use the machine that step needed.

## Orders do not survive a reload

The queue lives only in server memory, keyed by the maid. It is dropped when the maid leaves the level — unloaded, moved between dimensions, or when the server stops — and it is **never written to the save file**.

Practically: **do not hand a maid a long order and log off.** Come back and she will be standing on the Baking task with nothing queued, and you will have to hand her the order again. Bakery setups meant to run unattended are not what this build supports.

[Back to index](index)
