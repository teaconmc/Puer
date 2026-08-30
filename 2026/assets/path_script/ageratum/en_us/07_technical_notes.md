---
title: Good to Know
navigation:
  title: "07 Good to Know"
---

# Good to Know

## ⚠️ Guide maids are protected from players — not from the world

::: danger
**A guide maid cannot be hurt by other players, but she stands still and dies to a creeper.**

The protection cancels player attacks and interactions with her. It explicitly does **not** cancel mob damage or environmental damage.

So if a guide maid's route runs somewhere dangerous, **she will not defend herself and will not flee** — keep her routes away from monsters, or accept losing her.
:::

## Guide maids are disposable by design

A maid created from a Guide Sign is deliberately kept out of your maid backups entirely.

::: warning
**She can never be restored from a backup.** If she dies, she is gone.

That is intentional — it keeps throwaway guide maids from polluting the backups of your real maids. But it means you should treat every guide maid as temporary, and keep your actual maids away from becoming guides unless you accept the risk.
:::

## Your ordinary maids are unaffected

Everything this mod changes is gated on the maid actually performing its guiding task.

::: tip
Installing it does not change how any of your regular maids behave — no pushing changes, no backup differences, nothing — until one is actively set to guide a path.
:::

## Paths survive storage

A drawn path lives on the Path Editor item itself, so **you can put the editor in a chest and the path stays intact**.

## Two small display quirks

- Three on-screen messages (wait-before-start, next-step, end) use shortened internal names, so another mod could theoretically clash with them.
- The welcome sound's subtitle shows as the literal word "welcome" rather than a translated line.

Neither affects how the system works.

## It needs Touhou Little Maid

This is an addon: **Touhou Little Maid is required**, and the dependency is declared properly — missing it gives you a clear dependency message rather than a crash.

## What this mod gets right

Worth saying plainly: the editor **refuses to build a looping path** instead of creating one and hoping for the best, both languages are complete and equal, and the addon relationship is declared cleanly.

[Back to index](index)
