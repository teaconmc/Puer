---
title: "故事函数"
navigation:
  title: "04 故事函数"
---

# 故事函数

故事函数让 ink 脚本能做的事超出打印叙述。它们位于模组自有的注册表 `inkraft:story_functions` 中，因此附属模组可以注册更多。

每个函数有一个**注册表 id**（蛇形命名，注册时使用）与一个**调用名**（驼峰命名，你在 ink 里写的那个）。下表列出调用名。

## 系统：流程控制

一个 ink 故事可以有多个并行运行的具名流程。

| 调用名 | 用途 |
|:---|:---|
| `newFlow` | 创建一个新流程 |
| `flowTo` | 切换到具名流程 |
| `flowToDefault` | 切回默认流程 |
| `removeFlow` | 删除一个流程 |
| `isInFlow` | 故事是否处于某具名流程中 |
| `isInDefaultFlow` | 故事是否处于默认流程中 |

## 系统：行节奏

| 调用名 | 用途 |
|:---|:---|
| `pause` | 暂停故事 |
| `isEnded` | 故事是否已结束 |
| `setLineTicks` | 设置行间的刻延迟 |
| `unsetLineTicks` | 清除刻延迟，回到手动推进 |

`setLineTicks` 是故事自动播放的方式：设了延迟后，行按计时器推进而不等 `/inkraft next`。`unsetLineTicks` 把控制权交回玩家。

## 系统：变量

| 调用名 | 用途 |
|:---|:---|
| `setVariable` | 存储一个变量 |
| `getVariable` | 读取一个变量 |
| `hasVariable` | 变量是否存在 |
| `unsetVariable` | 移除一个变量 |
| `clearVariables` | 移除全部变量 |

## 系统：解析与调试

| 调用名 | 用途 |
|:---|:---|
| `parseInt` | 字符串转整数 |
| `parseFloat` | 字符串转浮点 |
| `parseBool` | 字符串转布尔 |
| `toString` | 值转字符串 |
| `isDebug` | 引擎是否处于调试模式 |
| `log` | 写入日志 |

## 游戏：玩家与时间

| 调用名 | 用途 |
|:---|:---|
| `getPlayerName` | 玩家名称 |
| `getRealTime` | 现实世界时间 |
| `getWorldTime` | 游戏内世界时间 |

## 游戏：物品栏

| 调用名 | 用途 |
|:---|:---|
| `hasItem` | 玩家是否持有某物品 |
| `countItem` | 玩家持有该物品的数量 |
| `giveItem` | 给玩家一个物品 |
| `takeItem` | 从玩家处移除一个物品 |

## 游戏：计分板

| 调用名 | 用途 |
|:---|:---|
| `getScoreboard` | 读取一个分数 |
| `setScoreboard` | 设置一个分数 |
| `addScoreboard` | 增加一个分数 |
| `subScoreboard` | 减少一个分数，**在零处截断** |
| `multiplyScoreboard` | 乘一个分数 |

`subScoreboard` 不会变成负数 —— 它应用 `max(当前值 - 值, 0)`。若你的故事逻辑依赖检测负余额，请改用 `setScoreboard` 写入计算好的值。

## 游戏：命令存储

| 调用名 | 用途 |
|:---|:---|
| `getStorage` | 从原版命令存储读取 |
| `setStorage` | 向原版命令存储写入 |

## 游戏：命令

| 调用名 | 命令来源权限 |
|:---|:---|
| `runCommand` | **玩家自己**的权限 |
| `runUnlimitedCommand` | **所有者等级（4 级）** |
| `runSilentUnlimitedCommand` | **所有者等级（4 级）**，抑制输出 |
| `runServerCommand` | **服务器**的命令来源 |

::: danger
这四个里有三个会越过触发它的玩家提权。`runUnlimitedCommand` 与 `runSilentUnlimitedCommand` 无论谁在玩这个故事都以所有者等级运行，而静默变体不留任何聊天痕迹。这对服主意味着什么，见[安全与服务器注意事项](06_security_and_server_notes)。
:::

## 语言辅助

数组与映射辅助函数同样已注册，为 ink 脚本提供它原生不具备的集合操作。配合 `parse*` 与 `toString` 函数，故事得以保存结构化状态而非一堆扁平数字。

## 扩展

由于 `inkraft:story_functions` 是真实注册表，另一个模组可以注册自己的 `IStoryFunction`。函数会收到运行中的 `StoryInstance` 与其参数，而 `FunctionArgs` 辅助类提供参数个数与类型断言，因此调用错误的函数会以清晰的错误失败，而不是静默给出错误答案。

[返回首页](index)
