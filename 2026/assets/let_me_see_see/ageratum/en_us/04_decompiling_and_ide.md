---
title: Decompiling and the IDE
navigation:
  title: Decompiling and the IDE
description: Fernflower setup, the exported-class database, syntax highlighting, and jumping out to IntelliJ IDEA.
---

# Decompiling and the IDE

The **Exported Classes Data Base** screen is where reading actually happens.

## The decompiler is bundled

Class preview requires no setup. The mod packs **`org.vineflower:vineflower:1.10.1`** jar-in-jar and runs it **in-process** — `ClassDecompiler` constructs the engine directly and feeds it the class file, with results cached per path in a `ConcurrentHashMap`.

The API type is still named `Fernflower` (`org.jetbrains.java.decompiler.main.Fernflower`) because **Vineflower is a fork of Fernflower and kept the original package names**. So the log lines read `Fernflower: ...` while the engine actually running is Vineflower.

::: warning
The language files contain a string reading *"You need set the path of Fernflower to use class preview."* — **it is a dead leftover.** Its key `preview.no_fernflower` has **zero references in the source**, and there is no config option for a decompiler path (the spec holds only `idea_path` and `languages`). The message can never appear. If you went looking for a Fernflower jar because of it, you were chasing a string from an earlier design.
:::

## The preview pane's states

The screen reports its state explicitly rather than showing an empty box:

| Message | Meaning |
|:---|:---|
| "You are not focusing any class." | Nothing selected yet |
| "Decompiling." | Work in progress |
| "Cannot find class file.This should not happen." | The class file is missing — the wording marks this as a bug condition |
| "An error occurred in decompilation, please check the log for more information." | The engine failed; the log has the detail (look for `Fernflower:` prefixed lines) |

That third one is worth remembering: the author flagged it as "should not happen", so if you hit it you have found something genuinely unexpected rather than a normal failure mode.

## Syntax highlighting is real parsing

The mod embeds an **ANTLR4-generated Java lexer** (`antlr4-runtime` is bundled via jar-in-jar) and drives a `ColoringListener` over the token stream. The highlighting is therefore grammar-based rather than regex-based — which is why identifiers, keywords and literals colour correctly even in decompiled output with unusual formatting.

## Navigating between classes

Inside the preview, class names are clickable:

> Ctrl + left click to jump

This turns the preview into a small navigable graph rather than a flat text dump — you can follow a type reference from one decompiled class into another without going back to the search box.

## Jumping out to IntelliJ IDEA

The **OpenInIDEA** button hands the class file to the program at `idea_path`. If that config value is empty you get:

> Not configured the IDEA path.

The config comment is deliberately loose — *"The path of your Intellij IDEA (idea64.exe) (Or other program can open .class file)"* — so any external viewer works; it is not IDEA-specific despite the button label.

There is also an **Open Config File** button so you can set the path without leaving the game, though you will need a config reload for it to take effect (the mod listens for `ModConfigEvent.Reloading`).

[Back to index](index)
