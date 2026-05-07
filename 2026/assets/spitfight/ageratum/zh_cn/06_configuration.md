---
title: "配置"
navigation:
  title: "06 配置"
---

# 配置

舌战群儒只有一个 COMMON 配置文件 `spitfight-common.toml`，并注册了游戏内配置界面，因此你可以直接从模组列表中编辑，无需退出游戏。

## 玩法数值

| 键 | 默认 | 范围 | 含义 |
|:---|:---|:---|:---|
| `playerSpitCapacity` | 100 | 1 .. 整型最大值 | 口水上限，同时也是 HUD 条的长度 |
| `playerSpitNaturalRegenerationSpeed` | 1 | 0 .. 整型最大值 | 空闲时每秒恢复的口水；设为 `0` 可禁用自然恢复 |
| `playerMaxChargingTicks` | 100 | 20 .. 整型最大值 | 开始受到窒息伤害前允许蓄力的时长 |
| `playerMinSpitCount` | 10 | 1 .. 整型最大值 | 单次吐唾沫的最小口水消耗，同时也是低于该值便无法吐唾沫的阈值 |
| `drinkRegenerationSpitCount` | 20 | 0 .. 整型最大值 | 每次饮用恢复的口水 |

## 伤害开关

| 键 | 默认 | 含义 |
|:---|:---|:---|
| `friendlyFire` | `false` | 同队实体之间能否互相造成伤害 |
| `playerFriendlyFire` | `true` | 玩家之间能否用唾沫互相造成伤害 |

请记住 `playerFriendlyFire` 默认为**启用**：玩家对玩家的吐唾沫开箱即用。若你的服务器不希望如此，请将其设为 `false`。

## 生效范围

这四个键位于 `availableRange` 小节下，分为 `start` 与 `end`：

| 键 | 默认 | 含义 |
|:---|:---|:---|
| `availableRange.start.x` | -100 | 工作区域的起始 X |
| `availableRange.start.z` | -100 | 工作区域的起始 Z |
| `availableRange.end.x` | 100 | 工作区域的结束 X |
| `availableRange.end.z` | 100 | 工作区域的结束 Z |

四条边界均为**不含端点**，且没有 Y 轴限制——只检查 X 与 Z。完整行为见 [07 生效范围](07_available_range)。

## 应用更改的注意事项

- 该配置为 COMMON 类型，因此在专用服务器上，服务端的文件对玩法检查具有权威性。
- 生效范围在玩家登录时推送给各客户端。如果你在玩家在线时修改范围，他们会保留登录时收到的范围直到重新连接，因此其 HUD 与客户端检查可能与服务端不一致。
- 由于模组在每次使用时解析配置值而非缓存，大多数数值更改对服务端逻辑会立即生效。

[返回首页](index)
