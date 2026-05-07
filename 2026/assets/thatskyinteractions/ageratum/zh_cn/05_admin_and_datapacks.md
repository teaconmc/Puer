---
title: 服务端管理与数据包
navigation:
  title: 服务端管理与数据包
---

# 服务端管理与数据包

## 服务端配置

当前版本只声明一个服务端配置项：`enableConditionalFriendship`，默认值为 `false`。它控制动作是否必须先经过好友树解锁进度；成本代码的精确行为见[解锁成本与数据结构](04_costs_and_data)。

修改服务端配置后，应在实际服务器环境中重载或重启，并让客户端重新取得同步状态。

## 管理命令

命令根为 `/thatskyinteractions`，短别名为 `/tsi`。根命令要求游戏管理员级命令权限。常用子命令如下：

| 命令 | 作用 |
|:---|:---|
| `/tsi friendship unlock <player> <node>` | 为执行者与目标请求解锁；节点成本仍由执行者支付 |
| `/tsi friendship reset <player>` | 重置执行者与目标的好友树数据 |
| `/tsi friendship complete <player>` | 完成执行者与目标的整棵好友树 |
| `/tsi friendship drop` | 清除执行者持有的好友关系数据 |
| `/tsi handholding lead <player>` | 让执行者带领目标 |
| `/tsi handholding follow <player>` | 让执行者跟随目标 |
| `/tsi handholding unhold [player]` | 解除指定或全部牵手关系 |
| `/tsi preference voice set <voice>` | 设置执行者的呼唤语音 |
| `/tsi preference voice set <player> <voice>` | 设置目标玩家的呼唤语音 |
| `/tsi preference voice get <player>` | 查询目标玩家的呼唤语音 |

命令参数有动态建议：好友节点来自当前树，语音 ID 来自当前已加载的语音数据。

::: warning
好友命令需要由玩家执行。`friendship unlock` 不是免费强制解锁，它调用与玩家请求相同的成本与状态路径；当前条件模式还存在先写状态后查余额或不写持久状态的问题，详见[解锁成本与数据结构](04_costs_and_data)。此外，全新关系的状态集为空，刚重置的关系只记录已解锁根节点；完成检查只遍历已有记录，因而把两者都误判为“已经完成”，使 `friendship complete` 直接失败。用命令修复关系前应备份玩家数据，并在双方重新登录后确认结果。
:::

## 数据包目录

| 内容 | 数据路径 |
|:---|:---|
| 好友树节点 | `data/<namespace>/friendship/tree/<tree>/<node>.json` |
| 双人互动定义 | `data/<namespace>/interaction/definition/<id>.json` |
| 单人表情定义 | `data/<namespace>/expression/definition/<id>.json` |
| 动画定义与源数据 | `data/<namespace>/animation/...` |
| 玩家呼唤语音 | `data/<namespace>/preference/voice/<id>.json` |

资源 ID 不必局限于 `thatskyinteractions`，但节点中的父级、行为、互动和动画引用必须指向可解析的已注册内容。

## 重载与同步

模组为这些管理器注册服务端数据重载监听器。数据包同步事件发生时，服务端会把缓存后的数据集发送给相关远程玩家；客户端不需要单独手工复制同一份数据包才能读取服务端定义。

修改数据包后应执行正常的数据包重载，并检查服务端日志中的解析错误。随后用两名玩家分别打开好友树和表情菜单，确认节点顺序、图标、成本、等级和动作都一致。

::: warning
当前 Java 注册代码没有物品或方块注册。旧语言键和纹理中的云、光翼、壁画、蜡烛簇及编辑工具不是 2.1.0-rc2 当前快照的可获取内容，不应为它们编写配方或物品绑定。
:::

[返回那些互动目录](index)
