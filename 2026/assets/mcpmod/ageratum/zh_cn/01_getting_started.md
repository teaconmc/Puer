---
title: 获取开始
navigation:
  title: 获取开始
description: 安装模组、找到它选中的端口，以及把 AI 代理指向它。
---

# 获取开始

## 安装

把 jar 放进 `mods/`，配合 Forge 或 NeoForge（部分 Minecraft 版本另有 Fabric 构建）启动即可。没有东西要合成、没有方块要放置、也没有命令要执行——这个模组完全没有注册表内容。

客户端加载完成约**五秒**后，HTTP 服务器在名为 `MCP-HTTP` 的后台线程上启动。这个延迟是刻意的：反射层需要 `Minecraft` 单例先存在才能绑定它。

## 找到端口

模组先试 **9876**。若被占用则向下走——9875、9874，依此类推——直到 **9000**。有三种方式知道它最终选了哪个：

| 方式 | 你会得到 |
|:---|:---|
| 控制台日志 | `[MCP-MOD] Debug page: http://127.0.0.1:{port}/debug` |
| `GET /api/status` | 含 `version`、`loader`、`port`、`pid`、`uptime` 的 JSON |
| 调试页面 | 带 MCP 日志、SSE 事件与连接状态的实时面板 |

若想固定而不必每次去找，设置以下任一项：

- JVM 参数 `-Dmcp.port=XXXX`
- 环境变量 `MC_MCP_PORT`

Node.js 桥接会用 `/api/status` 自动发现模组，无论它落在哪个端口，因此正常使用中你不需要关心这件事。

## 连接你的 AI

这个项目的引导刻意只有一步：你把一个文档 URL 粘给你的代理，它读完指南后自行写好 MCP 配置并连接。从 Minecraft 内部看没有任何要设置的东西。

机制上，你的 AI 工具用 **MCP over SSE** 与 Node.js 桥接通信，桥接再用 HTTP 与游戏内的模组通信。

```
AI 工具（Claude Code、Cursor……）
        ↕  MCP / SSE
Node.js 桥接（npm: minecraft-mod-mcp）
        ↕  HTTP  ← 经 /api/status 自动发现
游戏内的模组
```

::: warning
这条链路的模组一侧**不会**验证 HTTP 连接另一端是谁。在你让会话长时间挂着之前，请读[安全与部署](05_security)——服务器可从你整个网络访问，而不只是本机。
:::

## 确认它工作正常

在浏览器打开 `http://localhost:{port}/debug`。能看到实时面板就说明服务器已启动，而且你能看到代理发起的请求陆续到达。若页面打不开，请检查控制台的 `[MCP-MOD] HTTP server failed:` 一行——启动线程会自己捕获异常并打印，而不是让游戏崩溃。

[返回首页](index)
