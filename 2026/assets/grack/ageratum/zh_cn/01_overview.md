---
title: 概览
navigation:
  title: 概览
---

# 概览

Grack 并不是常规意义上的内容模组。它不注册任何物品、方块、实体、战利品或配方。相反，它内嵌 **Groovy** 脚本语言，并通过 Minecraft 命令暴露出来，让整合包作者与开发者能针对实时游戏状态运行脚本。

## 它注册了什么

Grack 新增的唯一专用注册对象是自定义**命令参数类型** `grack:gscript`，它接受一个已加载 Groovy 脚本的 ID。其余都是通过 NeoForge 事件接入：

- 一个服务器重载监听器 `grack:server_script_library`，在（重新）加载时读取脚本。
- 注册在普通命令分发器上的服务器命令。
- 注册在客户端命令分发器上的客户端命令。

## 脚本与脚本注册表

脚本位于注册表键 `grack:script` 对应的数据包目录中。库会把 `data/grack/script/` 下所有扩展名为 `.groovy` 的文件编译成脚本，其 ID 为 `grack:<文件名>`。每个脚本都以一个继承自 `GrackScript`（它本身是 Groovy 的 `Script`）的基类编译，因此脚本可以使用绑定进其 `Binding` 的 `context`（Brigadier 命令上下文）和 `args`（可选 NBT 标签）。

脚本通过共享的 `GroovyShell` 解析；编译或加载失败的脚本会被跳过并记录日志，而不会让整个库崩溃。

[返回首页](index)
