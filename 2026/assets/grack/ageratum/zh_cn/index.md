---
title: Grack
navigation:
  title: Grack
---

# Grack

Grack（命名空间 `grack`，MIT，v0.1）是一个面向 Minecraft 26.1 / NeoForge 的**脚本模组**，让你能在游戏内运行 **Groovy** 脚本。它本身没有物品、方块或实体：所有功能都通过两条命令、一个数据包脚本库和一个配置项实现。

- 在**服务器**端，数据包内 `data/grack/script/` 下的脚本会被加载进脚本库，并可通过 `/gscript` 运行。
- 在**客户端**（单机/开发环境），可直接用 `/geval` 对 Groovy 表达式求值。

Grack 基于 [Groovy](https://groovy-lang.org/) 脚本语言构建。

## 阅读路线

- [01 概览](01_overview.md) — Grack 做什么、它的注册表以及脚本的组织方式。
- [02 服务器脚本](02_server_scripts.md) — `/gscript` 命令与数据包脚本库。
- [03 客户端求值](03_client_eval.md) — 用于客户端 Groovy 求值的 `/geval` 命令。
- [04 配置](04_configuration.md) — `exhibitionMode` 选项、配置界面与语言。

## 一览

| 关注点 | 说明 |
|:---|:---|
| 模组 ID / 名称 | `grack` / Grack，作者 cn.maxpixel.mods，MIT，v0.1 |
| 版本目标 | Minecraft 26.1.2 / NeoForge 26.1.2.76 |
| 物品 / 方块 / 实体 | 无 —— 纯命令与脚本模组 |
| 命令参数类型 | `grack:gscript`（自定义 Groovy 脚本参数） |
| 服务器命令 | `/gscript <脚本> [<arguments>]` |
| 客户端命令 | `/geval <表达式> [<arguments>]` |
| 脚本库 | 数据包 `data/grack/script/*.groovy` |
| 配置 | `exhibitionMode`（布尔，默认 `false`） |

本指南双语并行阅读，与模组自身的 `en_us` / `zh_cn` 翻译保持一致。

[返回顶部](#grack)
