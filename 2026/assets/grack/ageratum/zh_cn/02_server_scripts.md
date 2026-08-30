---
title: 服务器脚本
navigation:
  title: 服务器脚本
---

# 服务器脚本

Grack 的服务器端会运行你随数据包提供的 Groovy 脚本。

## 脚本库

每次（重新）加载时，`ServerScriptLibrary` 会扫描资源/数据包中匹配 `data/grack/script/*.groovy` 的文件。每个文件都以 `GrackScript` 基类编译、赋予一个新的 `Binding`，并以 `grack:<文件名>` 的 ID 存储。

该库注册为**保留式**（retained）重载监听器，因此脚本会持续可用。解析失败的脚本会被记为错误并被跳过。

## `/gscript` 命令

`/gscript` 运行一个已加载的脚本，需要权限等级 2（游戏管理员）：

```
/gscript <脚本> [<arguments>]
```

- `<脚本>` 使用自定义 `grack:gscript` 参数类型，接受像 `foo` 或 `foo:bar` 这样的 ID，并从已加载脚本名中自动补全。
- `<arguments>` 是可选的 `CompoundTag`。给出时，它会被作为 `args` 绑定进脚本的 `Binding`；否则 `args` 保持未绑定。
- 命令还会把 Brigadier 命令 `context` 绑定进脚本，因此脚本可读取执行者、命令来源等信息。命令总是返回一次成功。

## 数据包布局

提供脚本的数据包形如：

```
data/grack/script/foo.groovy   →  grack:foo
```

未知脚本名会被拒绝，提示：*未知的脚本名称: %s*。

[返回首页](index)
