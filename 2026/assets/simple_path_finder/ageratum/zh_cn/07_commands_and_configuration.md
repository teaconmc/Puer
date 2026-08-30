---
title: "命令与配置"
navigation:
  title: "07 命令与配置"
---

# 命令与配置

## 管理命令

根命令 `/spf` 的子命令使用 `requires(Commands.LEVEL_GAMEMASTERS)`，即权限等级 2。`/simple_path_finder` 是 `/spf` 的重定向别名。

| 命令 | 行为 |
|:---|:---|
| `/spf admin config maxConcurrentTasks <1..16>` | 更改当前服务器进程内批处理求解器的并发数。 |
| `/spf admin stats` | 打印执行者所在维度的导航区块数、图层数、编码字节数与压缩字节数。 |
| `/spf admin nav remove current` | 移除执行者所在导航区块（如果存在）。 |
| `/spf admin nav build current` | 为执行者当前区块构建图层 `0`。 |
| `/spf admin nav build <layer>` | 为执行者当前区块构建指定字节图层。 |
| `/spf admin nav build <layer> <dx> <dz>` | 先构建当前区块，再批量构建从当前区块到 `当前 + dx, 当前 + dz` 的矩形区域（各为 `0..255`）。 |

批量构建会加载完整区块，使用全局方块距离配置求解，发送 `[SPF] Built current / total` 进度消息并以批次汇总结束。区域共包含 `(dx + 1) * (dz + 1)` 个区块。

## 客户端命令

客户端 `/spf` 下提供客户端命令：

- `/spf nav <x> <y> <z>`：客户端寻路。
- `/spf nav clear`：清除渲染结果。
- `/spf navserver <x> <y> <z>`：服务端寻路请求。
- `/nav ...` 与 `/navserver ...` 是别名。

## 服务器配置

`NavConfig` 注册为 NeoForge 服务器配置。

| 键 | 默认值 | 含义 |
|:---|:---|:---|
| `max_nav_chunks` | `66049` | 每个维度最多保存的导航区块数。 |
| `max_layers` | `37` | 每个导航区块最多图层数。 |
| `defaultBlockDistance` | `10` | 预期的全局回退边成本。当前构建通过配置规范默认值读取该键，因此修改它不会改变解析出的全局成本。 |
| `max_concurrent_tasks` | `4` | `/spf admin nav build <layer> <dx> <dz>` 使用的批处理槽位。 |
| `require_creative_mode` | `false` | 为 `true` 时，导航物品图形操作与导航笔刷操作要求创造模式。 |
| `server_side_pathfinding` | `true` | 为 `true` 时由服务端计算路径，并关闭完整导航同步。 |
| `block_distance` | `["minecraft:dirt_path:3"]` | 批量构建时使用的全局 `命名空间:方块路径:数值` 成本。 |

全局 `block_distance` 列表只接受方块 ID，并且只在距离数据为 `null` 时作为回退传入，也就是批量构建路径。导航物品构建使用玩家自己的 `player_block_distance` 附件，其未配置默认值也是 `10`。在当前构建中，修改服务器配置的 `defaultBlockDistance` 也不会更新这个玩家回退值。

## 客户端配置

`ClientConfig` 注册为 NeoForge 客户端配置，只有一个键：

| 键 | 默认值 | 含义 |
|:---|:---|:---|
| `smooth_path` | `true` | 用 Chaikin 迭代平滑渲染出的导航路径。 |

## 玩家方块距离配置界面

从导航物品设置界面的 `方块距离配置` 打开一个基于 `simple_path_finder:player_block_distance` 的编辑器。它支持精确方块 ID 与 `#标签` ID、距离值、默认距离循环（`0`、`1`、`10`、`50`）、列表翻页、移除与保存按钮，以及已注册方块 ID 和标签的 Tab 自动补全。保存会发送 `simple_path_finder:sync_block_distance_config`；服务端替换玩家的附件并回显。当前处理器中，界面输入的距离值按整数解析，且没有强制必须为正数。

## 部署注意事项

当前网络处理器比较宽松：

- `simple_path_finder:pathfinding_request` 接受任意已连接玩家的任意 `BlockPos`。唯一限制是全局队列大小与每玩家一个请求的检查。
- `simple_path_finder:sync_block_distance_config` 会在没有权限、范围或正数校验的情况下替换玩家的方块距离附件。
- `simple_path_finder:update_item_properties` 只检查声明的手部是否持有导航或导航笔刷物品，不检查创造模式；创造模式限制会在之后服务端图形操作运行时执行。
- `NavLink` 序列化会丢弃维度，因此链接必须保持同维度。
- 模组没有注册任何按键绑定。

[返回首页](index)
