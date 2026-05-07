---
title: 配置
navigation:
  title: 配置
---

# 配置

Grack 只暴露一个配置项，注册为 **COMMON** 配置（`ModConfig.Type.COMMON`）。

## `exhibitionMode`

| 选项 | 类型 | 默认值 |
|:---|:---|:---|
| `exhibitionMode` | 布尔 | `false` |

**展会模式（Exhibition Mode）**是唯一选项。它的注释为 *"Whether to enable the exhibition mode"*（是否启用展会模式）。目前它是一个声明的配置标志；源码主要将其作为演示配置值。可在 **Grack 配置 / Grack Configs** 界面中切换。

## 配置界面

客户端类 `GrackModClient` 为本模组注册了 NeoForge 的 **ConfigurationScreen** 作为配置界面工厂，因此你可以从「模组 → Grack → 配置」中修改 `exhibitionMode`，而无需手动编辑 TOML。

## 语言

Grack 同时提供 `en_us` 与 `zh_cn` 翻译。中文下模组标签为：*Grack 配置*（配置）与*展会模式*（Exhibition Mode）。

[返回首页](index)
