---
title: "快速上手"
navigation:
  title: "01 快速上手"
---

# 快速上手

ChatBox 没有任何可合成的东西，世界里也找不到它的产物。它提供的是渲染器与命令；对话本身来自数据包。

## 模组添加了什么

- 一个命令根 `/chatbox`，受游戏管理员权限（`2`）限制。
- 两个服务端重载监听器，从数据包读取对话与主题 JSON。
- 一个客户端对话渲染器，含界面模式与覆盖层模式。
- 一个历史记录界面，由对话内的按钮打开。
- 一个客户端配置文件 `chatbox_config`，通过 Cloth Config 编辑。
- 一个音效事件 `chatbox:ciallo`，以及对话框、选项、按钮与按键提示的一整套默认 GUI 贴图。
- 每个世界一份存档数据 `chatbox:chatbox_trigger_count`，记录每位玩家的触发次数。

## 模组没有添加什么

- 没有物品、方块、实体、方块实体、菜单或粒子 —— 注册表是空的。
- 没有创造模式选项卡。
- 没有配方、战利品表或标签。
- 没有世界生成。

## 两个数据包目录

```
data/<namespace>/chatbox/dialogues/<name>.json
data/<namespace>/chatbox/theme/<name>.json
```

**对话**文件描述说了什么、以什么顺序、带哪些选项与副作用。**主题**文件描述对话框、选项、立绘与按钮长什么样。两者都是纯 JSON，都会被 `/reload` 重新读取，也都用文件路径推导出的常规 `namespace:name` 标识符寻址。

两个加载器分别注册为 `chatbox:chatbox/dialogues` 与 `chatbox:chatbox/theme`。

## 随包演示

模组 jar 中带有一个 `test` 命名空间，含两个对话文件与两套主题：

| 标识符 | 用途 |
|:---|:---|
| `test:intro` | 功能导览，按默认主题编写 |
| `test:intro_gal` | 同一导览，为 `test:gal` 主题重新配色 |
| `test:default` | 默认主题：对话框、选项、四种立绘类型、功能按钮 |
| `test:gal` | 另一套视觉小说风格 |

因此看到模组运行的最快方式是：

```
/chatbox skip test:intro start
```

`start` 是文件内的组名。这段导览会依次讲解界面模式与覆盖层模式、选项、立绘、组件渲染事件与调试模式，所以在你编写自己的文件时它也是一份可运行的参考。

想在不改对话的前提下换个外观，就切换主题：

```
/chatbox theme test:gal
```

## 编写你的第一段对话

1. 创建 `data/mypack/chatbox/dialogues/hello.json`。
2. 给它一个 `dialogues` 对象，内含一个组 —— 例如 `start` —— 其值是一个行数组。
3. 给每一行一个带 `name` 与 `text` 的 `dialogBox`。
4. 执行 `/reload`，然后 `/chatbox skip mypack:hello start`。

完整字段表见[对话文件](03_dialogue_files)。若某一行需要立绘、选项、音效或命令，全部都写在这同一个行对象里。

::: info
对话文件不必声明主题。`theme` 缺省时客户端会保持当前已激活的主题，这正是随包导览可以被一条 `/chatbox theme` 重新配色的原因。
:::

## 版本与元数据事实

| 字段 | 值 |
|:---|:---|
| 模组版本 | `1.1.4` |
| Minecraft | `26.1.2`，接受范围 `[26,27)` |
| NeoForge | `26.1.2.43-beta`，依赖范围 `[26.1,)`，加载器 `[4,)` |
| Fabric | Fabric API `0.148.2+26.1.2`，加载器 `0.18.4` |
| Java 工具链 | 25 |
| 作者 | zhenshiz、Amotassic |
| 许可证 | `GPL-3.0 license` |
| 问题追踪 | 在 NeoForge 元数据中声明 |

[返回首页](index)
