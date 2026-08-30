---
title: Good to Know
navigation:
  title: Good to Know
description: What you can and cannot configure, one untranslated screen, and the mods it works alongside.
---

# Good to Know

## There is a config file — but it does nothing

::: warning
**MagicIO generates a config file with four options, and none of them change anything you can observe in game.**

They only control what gets written to the log. The config screen shows them with proper labels, so they look meaningful — they are not.

If you open the config looking for a way to tune the mod's behaviour: there is no such option. Everything about how the magic works is fixed.
:::

## One screen title is untranslated

**On an English client, the JEI category for zhen recipes shows its raw internal name** instead of a readable title. The Chinese client displays it correctly.

Everything else is fully translated in both languages — all 16 elements, all 6 tiers, all 37 function names.

## `/magicio tags` speaks Chinese on every client

The mod's one command exports item tags to a JSON file for reference. Its three response messages are **written in Chinese directly**, with no translation system behind them.

So on any language setting, you will see Chinese responses when running this command. It works correctly either way; only the messages are affected.

It is also a **client command** — it needs no permission and cannot be restricted by a server.

## Mods it works alongside

| Mod | What you get |
|:---|:---|
| **JEI** | A category for zhen recipes |
| **Jade** | Looking at blocks and items shows their magic properties |

Both are optional; without them everything still works, you just lose those views.

## A file quirk that is not a problem

`zh_cn.json` starts with a byte-order mark that some external tools flag as invalid JSON.

::: info
**Minecraft reads the file fine** — all its keys load. If a linter complains about it, ignore the linter; do not "fix" the file.
:::

## Summary

| Thing | Status |
|:---|:---|
| Config file | Exists but **changes nothing in game** |
| JEI zhen category title | Raw text on English clients |
| `/magicio tags` responses | Always Chinese, works fine |
| English / Chinese coverage | Complete apart from that one title |

[Back to index](index)
