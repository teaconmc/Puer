---
title: Troubleshooting
navigation:
  title: Troubleshooting
description: What to do when a tool does nothing, and where exported files go.
---

# Troubleshooting

## ⚠️ If the scanner does nothing at all, check the log

::: danger
**The scanner has no failure feedback.** If the underlying class-inspection support did not start, right-clicking a block produces **nothing whatsoever** — no message in chat, no error, no exported file.

That looks exactly like a broken item, but it is not. **Look in your log for `Cannot export class, instrumentation not available`** before concluding the scanner is faulty.
:::

## The three tools fail very differently

This is the single most useful thing to know when something seems broken:

| Tool | If class inspection is unavailable |
|:---|:---|
| **Class Explorer** | Shows a clear **Class Explorer Unavailable** screen |
| **Item Data Exporter** | **Keeps working normally** — it does not need it |
| **Scanner** | **Silently does nothing** |

::: tip
**So "the Item Data Exporter works, therefore everything works" is a wrong inference.** The exporter never checks for class-inspection support, so it functioning tells you nothing about the other two.

If the Class Explorer shows its unavailable screen, expect the scanner to be silently dead too.
:::

## ⚠️ Restart the game — reopening the screen will not help

::: warning
**Once class inspection has failed to start, it stays failed for the whole session.** The mod does not retry.

Closing and reopening the Class Explorer will not fix it. **You have to restart the game.**

If you are running from a development environment rather than a packaged jar, you may also need to set the `LET_ME_SEE_AGENT_JAR_PATH` system property.
:::

## Where exported files go

Everything the mod writes lands in:

```
<game directory>/let_me_see_see/
```

laid out as `package/path/ClassName.class` — so a class in `net.minecraft.world.item` appears under matching folders.

::: info
**The exported bytecode is the real runtime version**, after all mod patches have been applied. That is the point of the tool: you get what the game is actually running, not what the original jar shipped.
:::

## Why an export can go stale

The mod records which mods were present when an export was made. If that set changes, you will see:

> *Some mod changed since the export and may influence class contents*

::: tip
That warning means **your exported files may no longer match what the game is running**. Re-export rather than trusting the old output. See [Class Explorer](03_class_explorer).

It also fires on every new launch, since each session is tracked separately.
:::

## You do not need to install anything else

All supporting libraries — including the decompiler and the syntax highlighter — are **bundled inside the mod's own jar**. There is nothing to download separately and no version to match.

## Server installs

The items register on a dedicated server, but **every actual feature is client-side**. Installing it server-side gains you nothing; install it on the client where you want to inspect classes.

## Minor cosmetic notes

**The mod has no icon in the mod list.** Its declared logo file is not present in the build, so the entry appears without an image. Harmless.

**Some screen titles read "Retriever" and "Exported Classes Data Base."** These are earlier names for the Class Explorer and the Item Data Exporter, kept as screen titles. If a window title does not match the item you used, that is why.

## Version support

Minecraft **`[26.1.2, 26.2)`** — a real range rather than a single pinned version, so it tolerates point releases.

## Quick reference

| Symptom | Cause / fix |
|:---|:---|
| Scanner does nothing, no message | Class inspection unavailable — **check the log** |
| Class Explorer says unavailable | Same cause — **restart the game** |
| Reopening the screen does not help | Expected — **only a restart retries** |
| Item Data Exporter still works | Normal — it does not need class inspection |
| Export warns about changed mods | **Re-export** |
| No icon in the mod list | Cosmetic only |

[Back to index](index)
