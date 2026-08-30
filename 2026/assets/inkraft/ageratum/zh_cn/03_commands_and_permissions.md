---
title: "命令与权限"
navigation:
  title: "03 命令与权限"
---

# 命令与权限

墨迹工艺新增两个命令根，并用自己的两级权限抽象而非原始原版等级来把关。

## 两个等级

| 等级 | 含义 | Fabric | NeoForge |
|:---|:---|:---|:---|
| `couldUse` | 可驱动自己的故事 | 原版等级 `0`（所有人） | 权限节点 `inkraft:use`，默认等级 `0` |
| `isAdmin` | 可启动、重置或作用于他人 | 原版等级 `2`（游戏管理员） | 权限节点 `inkraft:admin`，默认等级 `2` |

::: warning
两个平台在这里是刻意不同的，而且这在运维上很重要。在 **NeoForge** 上，这两者是通过 `PermissionGatherEvent.Nodes` 注册的真实权限节点，因此权限插件可以独立于 op 状态授予或撤销 `inkraft:use` 与 `inkraft:admin`。在 **Fabric** 上，同样这两个方法是硬编码的原版等级检查，没有节点也没有挂钩 —— 权限插件无处可附着，授予管理员的唯一办法是把玩家提到 2 级。若你的权限策略依赖节点，那它只在 NeoForge 上对墨迹工艺生效。
:::

在 NeoForge 上，当命令来源不是玩家时 —— 控制台、命令方块、函数 —— 会绕过节点查询而改查原始命令等级，因此自动化行为可预期。

## `/inkraft`

| 命令 | 权限 | 效果 |
|:---|:---|:---|
| `/inkraft version` | **无** | 报告引擎版本 |
| `/inkraft start <id>` | `isAdmin` | 为自己启动故事 `<id>` |
| `/inkraft start <id> <player>` | `isAdmin` | 为另一位玩家启动故事 `<id>` |
| `/inkraft next` | `couldUse` | 把自己的故事推进一步 |
| `/inkraft next <token> <choice>` | `couldUse` | 用令牌回答一个选项 |
| `/inkraft next <player> <choice>` | `isAdmin` | 代另一位玩家回答选项 |
| `/inkraft current` | `couldUse` | 显示自己的当前行 |
| `/inkraft current <player>` | `isAdmin` | 显示另一位玩家的当前行 |
| `/inkraft reset` | `isAdmin` | 重置自己的故事状态 |
| `/inkraft reset <player>` | `isAdmin` | 重置另一位玩家的故事状态 |

这个划分是自洽的：读取或推进**自己**故事的一切只需 `couldUse`，而启动故事、清空状态或伸手进**另一位玩家**故事的一切都需要 `isAdmin`。请注意 `reset` 即便用于自己也需要管理员 —— 重置被当作创作行为而非玩家便利。

`/inkraft version` 是唯一无门槛的分支。它只报告一个版本字符串，别无其他。

### 选项令牌

选项用一个 UUID 令牌加一个整数索引来回答。令牌标识具体的待答选项，正是这一点阻止了排队或过期的点击被应用到与玩家看到的不同的问题上。

## `/variables`

整个 `/variables` 根都需要 `isAdmin`，包括每个子命令与每个逐玩家变体：

| 命令 | 权限 | 效果 |
|:---|:---|:---|
| `/variables get <name>` | `isAdmin` | 读取一个故事变量 |
| `/variables get <name> <player>` | `isAdmin` | 读取另一位玩家的变量 |
| `/variables set <name> <value>` | `isAdmin` | 写入一个故事变量 |
| `/variables set <name> <value> <player>` | `isAdmin` | 写入另一位玩家的变量 |
| `/variables unset <name>` | `isAdmin` | 移除一个故事变量 |
| `/variables unset <name> <player>` | `isAdmin` | 移除另一位玩家的变量 |

值参数是贪婪字符串，因此值中含空格无需加引号。

::: info
变量查看仅限管理员是正确的默认：故事变量经常编码任务标记与谜题答案，让玩家读到自己的变量就会剧透内容。若你想让某个值对玩家可见，请改用故事正文呈现。
:::

[返回首页](index)
