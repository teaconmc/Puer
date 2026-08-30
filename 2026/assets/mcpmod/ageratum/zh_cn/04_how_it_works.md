---
title: 工作原理
navigation:
  title: 工作原理
description: 一套代码为何能横跨 46 个 Minecraft 版本，以及代价是什么。
---

# 工作原理

## 一路反射到底

模组执行的每个动作——点击、输入、截图、读取玩家状态——都经由 `ReflectionHelper` 而非直接调用 Minecraft API。模组把 `Minecraft` 单例作为反射对象持有，并按名字去戳它。

这是核心设计决策，也是版本矩阵得以成立的原因。

## 版本矩阵

仓库为 **46 个 Minecraft 版本**构建同一个模组，从 **1.13.2** 到 **26.1.2**，跨 Forge、NeoForge 与（部分版本的）Fabric：

```
packages/
  common/                    全部逻辑 —— HTTP 服务器 + 反射层
  minecraft-mod-mcp/         Node.js MCP 桥接（npm 包）
  mods/1.13.2/forge/
  mods/1.14.2/forge/
  …
  mods/26.1.2/forge/
  mods/26.1.2/neoforge/
  shared/i18n/               翻译
```

每个 `mods/<版本>/<加载器>/` 条目都是一层**薄壳**。26.1.2 的 NeoForge 那个只有一个 Java 文件，它的全部工作是：

1. 构造一个绑定到渲染线程的 `ReflectedInputHandler`。
2. 读取配置的端口。
3. 延迟五秒后在后台线程上启动 `McpHttpServer`。

没有方块、没有物品、除 `FMLCommonSetupEvent` 外没有别的事件。其余一切都是从不按名字提及任何 Minecraft 类的共享代码。

## 权衡

反射换来了版本独立性，代价是脆弱：

| 得到 | 放弃 |
|:---|:---|
| 一套代码覆盖十三年的版本 | 编译期安全——字段改名在运行时才失败，而非构建时 |
| 新 Minecraft 版本只需加一层新壳 | 混淆/映射变化可能静默破坏功能 |
| 无需逐版本 API 适配层 | 报错表现为反射异常而非清晰信息 |

模组用宽泛捕获来对冲这一点。启动路径把 Minecraft 实例查找包在 `try { … } catch (Exception ignored) {}` 里，整个服务器启动包在打印 `[MCP-MOD] HTTP server failed:` 的 `try/catch` 里而不向上抛。**因此附加失败不会让游戏崩溃——它留给你一个「已加载但没有服务器」的模组。** 如果你的代理连不上，请先看控制台，再去怀疑端口。

## Java 8 到 25

那个版本范围不是装饰：共享代码必须既能在 Minecraft 1.13.2 使用的 JVM 上编译运行，也能在 26.1.2 使用的 JVM 上运行。这把共享层约束在一个保守的 Java 子集内，这也是实现倾向于反射与内置 `com.sun.net.httpserver` 而非现代 HTTP 库的另一个原因。

## 三重许可

工程同时以 **MIT、Apache-2.0 与 CC0-1.0** 提供（仓库根目录有三个 `LICENSE-*` 文件）。26.1.2 的模组元数据声明为 `MIT`。就再分发而言，三者中你可任选其一——这在本批中格外宽松，本批有几个模组是 `All Rights Reserved`。

## 资源包格式

26.1.2 构建的 `pack.mcmeta` 声明 `pack_format: 34`，描述为「ModDev MCP resources」。除此与 mods.toml 外它不随包任何实际资源，因此声明的格式没有实际影响——但请注意它**不**匹配 26.1.2 时代的格式，这是版本矩阵工具链的遗留，而非刻意选择。

[返回首页](index)
