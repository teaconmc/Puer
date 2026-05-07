---
title: 伤害通道
navigation:
  title: 伤害通道
description: 随包八个通道及其触发标签、护甲行为、优先级与抗性属性。
---

# 伤害通道

每一次被接管的命中都会被归入一个或多个**通道**。通道完全数据驱动：每个通道是 `data/damagenexus/damagenexus_channels/` 下的一个 JSON 文件，因此数据包可以重新调整或新增通道。

## 随包通道

| 通道 | 触发标签 | 护甲生效 | 优先级 | 抗性属性 |
|:---|:---|:---:|---:|:---|
| `physical` | `is_physical` | **是** | 0 | **无** |
| `kinetic` | `is_kinetic` | **是** | 60 | `resistance_kinetic` |
| `magic` | `is_magic`、`is_spell` | 否 | 80 | `resistance_magic` |
| `poison` | `is_poison` | 否 | 90 | `resistance_poison` |
| `wither` | `is_wither` | 否 | 90 | `resistance_wither` |
| `cold` | `is_cold` | 否 | 100 | `resistance_cold` |
| `fire` | `is_fire` | 否 | 100 | `resistance_fire` |
| `lightning` | `is_lightning` | 否 | 100 | `resistance_lightning` |

所有触发标签都在 `damagenexus` 命名空间下。当一次命中匹配多个通道时，优先级高者胜出。

另有一个内置的 **`untyped`** 通道作为兜底归类。它有 ID 常量与翻译，但**没有 JSON 文件**——它不像上面八个那样可由数据包调整。

## 两个会让你意外的事实

**`physical` 通道没有声明抗性属性。** 属性 `damagenexus:resistance_physical` **确实**已注册，取值范围与其他抗性相同，但随包的 `physical.json` 根本没有引用它。物理命中由护甲减免，而非该属性。若你希望物理抗性生效，请在数据包中覆盖 `physical.json` 并加上 `"resistance_attribute": "damagenexus:resistance_physical"`。

**长矛与重锤伤害同时是物理与动能。** `is_physical` 包含 `#damagenexus:is_spear_attack` 与 `#damagenexus:is_mace_smash`；`is_kinetic` 包含 `#damagenexus:is_spear_attack` 与 `#minecraft:mace_smash`。由于 `kinetic` 优先级 60 而 `physical` 为 0，这些命中最终判定为**动能**。两个通道都应用护甲，因此可见差异在于查询哪个抗性属性。

## 伤害类型标签树

`is_physical` 是宽泛的总括标签，它引入：

- `#damagenexus:is_melee` —— 其自身包含 `#minecraft:is_player_attack` 以及可选的 `player_attack`、`mob_attack`、`mob_attack_no_aggro`、`spear`
- `#damagenexus:is_projectile`
- `#damagenexus:is_explosion`
- `#damagenexus:is_mace_smash` —— 对 `#minecraft:mace_smash` 的薄封装
- `#damagenexus:is_spear_attack` —— 其包含 `#damagenexus:is_spear_charge` 与 `is_spear_stab`
- `#minecraft:is_fall`
- 可选条目：`falling_block`、`falling_anvil`、`falling_stalactite`、`stalagmite`、`thorns`、`generic`

每个可选条目都标了 `"required": false`，因此缺失的伤害类型会被静默跳过，而不会导致数据包加载失败。

## 随包标签中的两处遗留

- **`damagenexus:spear_charge` 是一个空标签文件。** `data/damagenexus/tags/damage_type/spear_charge.json` 内容为 `"values": []`，且没有任何地方引用 `#damagenexus:spear_charge`。另一方面，`is_spear_charge.json` 列出了一个名为 `damagenexus:spear_charge` 的**伤害类型**——但模组根本没有 `data/damagenexus/damage_type/` 目录，因此该条目永远解析不到。由于标为可选，它被静默忽略；`is_spear_charge` 的有效内容只剩可选的 `minecraft:spear`。
- **`is_mace_smash` 既无翻译也无 API 常量。** 它只以数据文件形式存在，被 `is_physical` 消费。其余每个 `damagenexus:is_*` 伤害类型标签都同时拥有 lang 条目与 API 中的 `TagKey` 常量。

## 非伤害类型标签

| 标签 | 内容 |
|:---|:---|
| `damagenexus:bosses`（实体类型） | `minecraft:ender_dragon`、`minecraft:wither` —— 仅此两个 |
| `damagenexus:spears`（物品） | 可选 `minecraft:spear`、可选 `minecraft:trident` |
| `damagenexus:bypasses_damagenexus`（伤害类型） | **无随包文件** —— 在你自行编写前为空 |

`bosses` 标签正是 `target_is_boss` / `attacker_is_boss` 规则条件读取的对象，因此全新安装下「Boss」恰好只指末影龙与凋灵。请把整合包中的 Boss 加入该标签，这两个条件才有实用价值。

[返回首页](index)
