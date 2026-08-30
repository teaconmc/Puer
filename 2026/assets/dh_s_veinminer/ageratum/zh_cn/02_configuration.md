---
title: 配置
navigation:
  title: 配置
description: 全部九个选项、它们的真实默认值，以及那个名字会误导人的。
---

# 配置

九个选项，同在一份 COMMON 配置文件里。源码中每条注释都是**中英双语**（先中文后英文），且九项全部有翻译键，因此游戏内配置界面在两种语言下都有完整标签。

## 九个选项

| 键 | 默认值 | 范围 / 取值 | 作用 |
|:---|:---|:---|:---|
| `veinMinerEnabled` | `true` | 布尔 | 总开关 |
| `veinMinerMaxBlocks` | **64** | 1 – 16384 | 单次连锁的方块数上限 |
| `veinMinerMaxDistance` | **32** | 1 – 64 | 从首个方块起算的搜索半径 |
| `veinMinerTriggerAction` | **`KEYBIND`** | `KEYBIND` / `SNEAK` / `ALWAYS` | 何时触发 —— 见[获取开始](01_getting_started) |
| `veinMinerExtraDurability` | **`true`** | 布尔 | 每个额外方块消耗额外耐久 |
| `veinMinerMode` | **`DISABLED`** | `BLACKLIST` / `WHITELIST` / `DISABLED` | **方块过滤模式 —— 见下方警告** |
| `veinMinerWhitelist` | `""` | 逗号分隔的 ID | 仅在模式为 `WHITELIST` 时生效 |
| `veinMinerBlacklist` | `""` | 逗号分隔的 ID | 仅在模式为 `BLACKLIST` 时生效 |
| `veinMinerRegions` | `[]` | JSON 数组 | 立方体范围白名单 —— 见[限制生效范围](03_limiting_where_it_works) |

## 那个会误导人的选项

::: danger
**`veinMinerMode = DISABLED` 不是禁用连锁挖矿，而是禁用方块过滤。**

- `DISABLED`（默认）→ **完全不过滤**；所有可挖方块都能连锁
- `BLACKLIST` → 连锁除列表所列之外的一切
- `WHITELIST` → **仅**连锁列表所列的方块

想关掉连锁挖矿请用 **`veinMinerEnabled = false`**。如果你是为了阻止玩家连锁某种方块而来，必须先把模式从 `DISABLED` 切走——否则你的列表会被读取但永不套用。
:::

## 两个上限，且互相牵制

`veinMinerMaxBlocks`（64）与 `veinMinerMaxDistance`（32）是两个独立限制，**先达到哪个就停在哪个**：

- 细长矿脉可能在挖到远少于 64 个方块时就撞上**距离**上限。
- 密集矿簇可能在还远在 32 格之内时就撞上**方块数**上限。

只调其中一个往往毫无效果。`maxBlocks` 上限可达 **16384** 而 `maxDistance` 只到 **64**——因此在很大的方块上限下，距离通常才是真正的约束。

## 一个存在但永不变化的字段

配置界面会显示 **「根据等级缩放」** 标签（`veinMinerScaleWithLevel`），代码里也有对应的 `scaleWithLevel` 字段——但它**在每次配置刷新时被硬赋值为 `false`**，且没有任何选项定义它。这是自洽的：附魔只有一个等级，本来就无从缩放。**把这个标签当作历史残留即可。**

## 重载行为

模组订阅了 `ModConfigEvent`，重载时重新读取每个值，包括重新解析白名单、黑名单与区域 JSON。**修改配置不需要重启**——但关于 JSON 格式错误时会发生什么，请看[限制生效范围](03_limiting_where_it_works)里的解析说明。

## 客户端与服务端分开

在通用配置类之外还有一个客户端配置类，以及一个 **`ConfigSyncPayload`** 网络包——因此服务端的设置会送达客户端，而不是两侧各自猜测。在服务器上，挖掘规则以通用配置文件为准；按键绑定自然属于客户端。

[返回首页](index)
