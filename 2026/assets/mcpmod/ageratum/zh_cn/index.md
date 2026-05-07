---
title: ModDev MCP
navigation:
  title: ModDev MCP
---

# ModDev MCP

**ModDev MCP**（命名空间 `mcpmod`，版本 `0.2.0`，作者 langyo）**不是玩法模组**。它不添加物品、方块、实体、配方或命令。它做的事是**在你运行中的 Minecraft 客户端里启动一个 HTTP 服务器**，好让 AI 代理——Claude Code、Cursor，或任何会说 Model Context Protocol 的工具——代你查看画面、点击按钮、输入文本、按键并执行命令。

它的存在意义是让模组开发者把重复测试交给 AI：打开你的 GUI、验证某个方块的行为、给新功能跑一遍冒烟测试。

::: danger
**在任何共享网络的机器上安装它之前，请先读 [05 安全与部署](05_security)。** 服务器绑定在 `0.0.0.0`（**全部网络接口，不只是 localhost**），发送 `Access-Control-Allow-Origin: *`，且**没有任何形式的认证**。凡是能连上该端口的东西，都获得对你客户端完整的键盘、鼠标与命令控制权。这是一个开发工具，其威胁模型假定机器是可信且隔离的。
:::

## 阅读路线

- [01 获取开始](01_getting_started) —— 安装、找到端口、连接你的 AI。
- [02 AI 能做什么](02_capabilities) —— 完整的动作面与五个 HTTP 端点。
- [03 与游戏并行工作](03_working_alongside) —— 释放鼠标，好让你能用 IDE。
- [04 工作原理](04_how_it_works) —— 反射，以及一套代码为何能覆盖 46 个 Minecraft 版本。
- [05 安全与部署](05_security) —— 绑定地址、CORS 与认证的真实状况，以及应对办法。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID / 命名空间 | `mcpmod` |
| 版本 / 许可 | `0.2.0` / MIT、Apache-2.0 与 CC0-1.0（三重许可） |
| Java | 8 – 25 |
| 默认端口 | **9876**，占用则回退 9875 → 9874 → … → 9000 |
| 物品 / 方块 / 实体 / 配方 | **均无** |
| 注册的命令 | **无**（它*执行*命令，但不添加命令） |
| 加载器 | Forge、NeoForge（部分版本另有 Fabric） |

## 这个工程的形态

仓库是一个 monorepo，为 **46 个 Minecraft 版本**构建同一个模组，从 1.13.2 一直到 26.1.2：

```
packages/
  common/            共享 Java —— HTTP 服务器与反射层
  minecraft-mod-mcp/ Node.js MCP 桥接（npm 包）
  mods/<版本>/<加载器>/   每个版本一个薄壳
  shared/i18n/       翻译
```

26.1.2 的 NeoForge 壳**只有一个 Java 文件**。真正的实现全在 `packages/common`，且完全通过反射触及 Minecraft——这正是一套代码能横跨十三年 Minecraft 版本的原因。详见[工作原理](04_how_it_works)。

## 「连接你的 AI」是什么样子

这个项目的引导刻意做成一条链接：你把一个文档 URL 粘给你的代理，它读完指南后自行完成配置。从游戏这一侧看没有任何要配置的东西：服务器在客户端加载完成约五秒后自行启动，控制台会打印到哪里找它。
