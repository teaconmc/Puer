---
title: "命令"
navigation:
  title: "02 命令"
---

# 命令

模组只注册一个命令根 `/chatbox`。整个根都受限：它要求游戏管理员权限（等级 `2`），因此普通玩家无法调用任何子命令。

所有作用于玩家的子命令，在命令源不是玩家时都会以「目标应为玩家」的提示失败 —— 例如从命令方块或服务器控制台执行时。

## `/chatbox skip`

```
/chatbox skip <Dialogues> <Group> [Index] [Target1] [Target2] ...
```

为执行者启动一段对话。

- `Dialogues` —— 对话标识符；补全来自已加载的对话文件。
- `Group` —— 该文件内的组名；补全来自所选文件中实际存在的组。
- `Index` —— 可选的组内行下标，从 0 开始；默认为 `0`。
- `Target1`、`Target2`…… —— 可选的实体参数，最多 100 个。它们成为本次对话的目标，可通过 `` `<target>` `` / `` `<target2>` `` 占位符以及 MVEL 中的 `targets` 数组读取。

目标列表中重复的实体会被跳过，无法解析的目标参数会被静默忽略。

::: warning
`skip` 同时也是触发次数的闸门。它先读取该玩家对该对话的剩余次数，当次数正好为 `0` 时**什么都不做** —— 没有对话，也没有提示。否则将次数减一并启动对话。若 `/chatbox skip` 看起来毫无反应，先查触发次数，再怀疑文件。参见[触发与持久化](08_triggers_and_persistence)。
:::

## `/chatbox theme`

```
/chatbox theme <Theme>
```

切换执行者当前激活的主题；补全来自已加载的主题文件。它只把主题发给这一个客户端，因此主题是逐玩家状态，不是世界状态。

## `/chatbox open`

```
/chatbox open
```

用客户端最后持有的标识符、组与下标重新打开对话框。若客户端从未收到过对话，则无任何效果。

## `/chatbox maxTriggerCount`

```
/chatbox maxTriggerCount <Dialogues> <MaxTriggerCount>
/chatbox maxTriggerCount reset
```

设置执行者对某个对话的剩余触发次数，或清空该玩家的全部记录，使文件默认值重新生效。

## `/chatbox command`

客户端状态辅助命令，各自推送给执行者的客户端：

| 子命令 | 效果 |
|:---|:---|
| `command nextDialogue` | 前进一行（若客户端当前允许前进） |
| `command autoPlay <true\|false>` | 开启或关闭自动播放 |
| `command isScreen <true\|false>` | 在界面模式与覆盖层模式之间切换 |

## `/chatbox mvelTest`

```
/chatbox mvelTest <expression> <onServer>
```

求值一个 MVEL 表达式并把结果打印给执行者。`onServer` 决定在哪一侧求值：`true` 在服务端求值，`false` 把表达式发给该玩家的客户端并在那里求值。这是把表达式写进文件之前调试它的既定方式 —— 参见 [MVEL 与占位符](06_mvel_and_placeholders)。

## 哪些不是命令

推进对话、选择选项、打开历史记录、快进与切换自动播放全都是普通客户端输入，不是命令。它们记录在[玩家操作](07_player_controls)中。

重载数据使用原版 `/reload`；调试模式的重载快捷键只是代玩家发送那条原版命令，因此遵守原版 `/reload` 的权限。

[返回首页](index)
