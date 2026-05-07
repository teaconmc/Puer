---
title: 配置与诊断
navigation:
  title: 配置与诊断
description: 每个配置小节、诊断域、命令门控与已知的粗糙之处。
---

# 配置与诊断

伤害枢纽注册了单一的 **`COMMON`** 配置规格，含五个小节。数值在通用设置阶段烘焙，并在配置文件加载与重载时重新烘焙。

## 开发者

| 键 | 默认 | 含义 |
|:---|:---|:---|
| `testCommandsEnabled` | `false` | 注册 test / item / damage / bypass 命令分支 |
| `strictProcessorErrors` | `false` | 处理器格式错误时明确报错 |
| `strictRuleErrors` | `false` | 规则格式错误时明确报错 |

## 诊断

| 键 | 默认 | 含义 |
|:---|:---|:---|
| `configuredMode` | `OFF` | 诊断域 |
| `debugMode` | `false` | 注册 mob / effect / attribute / forward / cleanup 命令分支 |
| `postDamageDiagnostics` | `false` | 馈入诊断域的遗留开关 |
| `serverLogVerbosity` | `WARNINGS_ONLY` | 服务端日志级别 |
| `clientForwardMode` | `OFF` | 是否把服务端日志转发给客户端 |
| `clientForwardVerbosity` | `WARNINGS_ONLY` | 转发日志级别 |
| `clientForwardMaxLinesPerTick` | `20` | 转发速率上限 |
| `clientForwardRequireReceiverOptIn` | `true` | 客户端须自行选择接收 |

**诊断域**有四级，逐级包含前一级：

| 域 | 输出 |
|:---|:---|
| `OFF` | 仅警告与生命周期 |
| `COMPATIBILITY` | + 兼容性诊断与事务跟踪 |
| `SUMMARY` | + 逐次命中的追踪摘要 |
| `FULL_TRACE` | + 逐次命中的完整细节 |

警告与生命周期消息**始终**输出，与诊断域无关——降低级别无法屏蔽它们。

### 诊断域是两条路径的最大值

有效域为 `max(configuredMode, 由遗留开关推导的域)`，其中遗留值由 `postDamageDiagnostics`、`debugMode`、`serverLogVerbosity` 与 `clientForwardMode` 计算得出。由此有两个后果：

- **仅靠设置 `configuredMode` 无法降低诊断域。** 若 `debugMode` 开启且 `serverLogVerbosity = FULL`，推导域即为 `FULL_TRACE`，此时把 `configuredMode` 设为 `OFF` 也不会降下来。必须同时把遗留开关调低。
- **`postDamageDiagnostics` 并不由自己把关。** 它自己的访问器解析到事务跟踪判定，而后者解析到「诊断域是否至少为 `COMPATIBILITY`」。开启该标志会把域抬到 `COMPATIBILITY`，从而满足判定——但通过任何其他途径抬高域，同样会启用命中后诊断，无论此标志是否设置。

## 提示文本

只有一个键 `debugLevel`，默认 `OFF`。四个等级见 [06 词条与条目](06_affixes_and_entries.md)。

## 战斗公式

| 键 | 默认 |
|:---|---:|
| `asymptoticKValue` | `15.0` |
| `resistanceKValue` | `50.0` |
| `ratingPerProtScore` | `3.5` |

## 原版兼容

`mode` 加四个压制布尔开关——完整说明见[07 它如何改变伤害](07_vanilla_compatibility.md)。注意：模式未设为「可配置」时那四个开关会被忽略。

## 命令

除非 `debugMode` 或 `testCommandsEnabled` 为真，命令树**根本不会被注册**。默认安装下 `/damagenexus` 并不存在。

出现哪些分支取决于打开了哪个开关：

| 开关 | 注册的分支 |
|:---|:---|
| `testCommandsEnabled` | test、item、damage、bypass |
| `debugMode` | mob、effect、attribute、debug-forward、cleanup |

两个开关可同时打开，得到完整命令树。由于注册发生在命令注册事件上，**打开开关后需要让命令注册重新运行**——重载世界或重启服务器——命令才会出现。

## 启动自检

在通用设置阶段，模组会在冻结注册表并引导规则提供器之后运行一次启动自检，随后输出一行生命周期日志，报告生效的诊断域、调试模式、测试命令状态与前乘桶数量。这行日志是确认「你想要的配置是否就是加载的配置」的最快途径——而且它以生命周期级别输出，因此即使诊断为 `OFF` 也会出现。

## 已知的粗糙之处

- **只有一个属性名有翻译，且只在一种语言里。** `attribute.name.damagenexus.thorns` 仅存在于 `en_us.json`。其余 24 个属性在两份文件中都没有翻译，而 `thorns` 在中文里也没有——因此英文客户端显示 24 个原始键，中文客户端显示 25 个。见 [04 属性](04_attributes.md)。
- **`zh_cn.json` 比 `en_us.json` 的 217 个键少了 23 个** —— 即 thorns 属性名加 22 个测试条目/词条名称。没有任何键只存在于中文，因此缺口是单向的，会回退到英文。
- **`bypasses_damagenexus` 标签没有随包文件**，因此这条被记录在案的绕过机制在数据包创建它之前是失效的。见[07 它如何改变伤害](07_vanilla_compatibility.md)。
- **`damagenexus:spear_charge` 出现了两次且两次都不起作用** —— 一次是无人引用的空标签文件，一次是被 `is_spear_charge` 引用却从未被模组定义的伤害类型 ID。两者都无害，因为该引用是可选的。见 [02 伤害通道](02_damage_channels.md)。
- **`is_mace_smash` 既无翻译也无 API 常量**，与其他每个 `is_*` 伤害类型标签不同。
- **除非模式为 `CONFIGURABLE`，四个 `rawSuppress*` 布尔开关都是死的。**
- **`physical` 通道无视 `resistance_physical`**，尽管该属性已注册。
- **`vulnerable_damage_additive` 默认为 `0.20` 而非 `0.0`。**
- 模组附带**单元测试**（管线、生命周期、上下文变更、伤害来源策略、通道注册表、事务跟踪器）——在本批模组中相当少见，也说明管线语义被明确钉住了。

[返回首页](index)
