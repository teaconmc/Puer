---
title: 限制生效范围
navigation:
  title: 限制生效范围
description: 方块过滤与立方体区域，以及服主必须知道的「失败时放开」行为。
---

# 限制生效范围

有两种彼此独立的限制途径：**按方块**与**按位置**。两者叠加——一个方块必须同时通过两项才会被连锁。

## 按方块：白名单或黑名单

请记住[配置](02_configuration)里说过的：`veinMinerMode` 初始为 `DISABLED`，意为**完全不过滤**。先选定模式：

**`BLACKLIST`** —— 连锁除列表所列之外的一切。只需保护少数几样东西时用它：

```
veinMinerMode = "BLACKLIST"
veinMinerBlacklist = "minecraft:bedrock,minecraft:obsidian"
```

**`WHITELIST`** —— 仅连锁列表所列的方块。想让连锁挖矿只是「挖矿便利」时用它：

```
veinMinerMode = "WHITELIST"
veinMinerWhitelist = "minecraft:stone,minecraft:iron_ore,minecraft:deepslate_iron_ore"
```

两个列表都是**纯逗号分隔的方块 ID**。条目两侧空白会被去除、空条目会被丢弃，因此末尾多一个逗号无害。与当前模式不匹配的那个列表会被解析但永不查询。

::: tip
对公共服务器而言 `WHITELIST` 是更安全的选择：任何你忘记列入的东西都不会连锁。用 `BLACKLIST` 时，任何你忘记列入的东西**都会**连锁——包括后来由其他模组添加的方块。
:::

## 按位置：立方体区域

`veinMinerRegions` 接受一个**立方体 JSON 数组**，每个立方体由两个对角坐标定义：

```json
[
  {"from": [100, 50, 100], "to": [200, 80, 200]},
  {"from": [300, 60, 300], "to": [400, 90, 400]}
]
```

行为：

- **为空（`[]`，即默认值）表示不作限制**——所有位置都允许。
- 有一个或多个区域时，**只有区域内的方块才能被连锁**。
- 支持多个互不相接的区域。
- **到达区域边界会立即停止该方向上的连锁**——矿脉在边界处被截断，而不是整次尝试被拒绝。

最后这一点使区域可以当作「矿区」功能来用：站在允许区边缘的玩家仍能得到部分连锁，只是无法把边界之外的矿拉出来。

## 服主必须知道的一件事

::: danger
**区域 JSON 格式错误时是「放开」而非「收紧」。** 若字符串无法解析，模组记录一条错误并回退为**空列表**——而空列表意味着**完全不作限制**。

所以 `veinMinerRegions` 里的一个笔误不会关闭该区域的连锁挖矿，而是**取消了所有地方的限制**。修改区域后请先查日志确认没有解析错误，再认为限制已生效。消息形如：

```
解析范围白名单配置失败: <原因>, 输入内容: <你的 JSON>
```
:::

方块列表的行为不同且更安全：空白或无法解析的列表会得到空列表，在 `WHITELIST` 下意味着**什么都不连锁**（失败时收紧），在 `BLACKLIST` 下意味着**什么都不受保护**（失败时放开）。因此模式选择同时也决定了失败的方向。

## 两者组合

典型的「矿区」配置：

```
veinMinerEnabled          = true
veinMinerMode             = "WHITELIST"
veinMinerWhitelist        = "minecraft:stone,minecraft:deepslate,minecraft:iron_ore"
veinMinerRegions          = [{"from":[-64,-60,-64],"to":[64,20,64]}]
veinMinerTriggerAction    = "KEYBIND"
veinMinerMaxBlocks        = 64
```

这允许连锁三种方块、仅在一个立方体内、且仅在按住按键时。三个条件之外的一切行为与原版无异。

由于所有项都在配置重载时重新读取，以上全部可以不重启就调整——见[配置](02_configuration)。

[返回首页](index)
