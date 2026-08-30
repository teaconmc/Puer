---
title: 属性
navigation:
  title: 属性
description: 全部 25 个已注册属性的真实默认值与取值范围。
---

# 属性

伤害枢纽注册了 **25 个属性**，全部可同步到客户端。它们是无需编写规则、就能赋予玩家、生物或装备新战斗行为的主要途径。

## 暴击与闪避

| 属性 | 默认值 | 范围 |
|:---|---:|:---|
| `damagenexus:crit_chance` | `0.0` | 0.0 – 1.0 |
| `damagenexus:crit_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:dodge_chance` | `0.0` | 0.0 – 1.0 |

两个几率属性都是小数，`1.0` 表示必定发生。

## 伤害加成

| 属性 | 默认值 | 范围 |
|:---|---:|:---|
| `damagenexus:vulnerable_damage_additive` | **`0.20`** | 0.0 – 100.0 |
| `damagenexus:fire_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:cold_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:lightning_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:magic_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:wither_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:poison_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:melee_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:projectile_damage_additive` | `0.0` | 0.0 – 100.0 |
| `damagenexus:kinetic_damage_additive` | `0.0` | 0.0 – 100.0 |

**`vulnerable_damage_additive` 是本组中唯一默认值非零的属性：`0.20`。** 其余加成全部从零开始，因此一个未装备任何东西的实体已经自带 +0.20 的易伤加成。做平衡时请记住这条基线——「无修饰符」状态并不是干净的零。

## 抗性

九个抗性，默认值均为 `0.0`，范围均为 **−10240.0 – 10240.0**：

`resistance_physical`、`resistance_fire`、`resistance_cold`、`resistance_lightning`、`resistance_magic`、`resistance_wither`、`resistance_poison`、`resistance_melee`、`resistance_projectile`、`resistance_kinetic`

范围是对称的，因此**负抗性会放大**该通道而非减免——可用于制作元素弱点。抗性是一个评级值，经由 `resistanceKValue` 控制的曲线换算，而不是直接的百分比。

请注意 `resistance_physical` 虽已注册，但**未被随包的 `physical` 通道引用**；见 [02 伤害通道](02_damage_channels.md)。

## 反弹与治疗

| 属性 | 默认值 | 范围 |
|:---|---:|:---|
| `damagenexus:thorns` | `0.0` | 0.0 – 2048.0 |
| `damagenexus:healing_received` | **`1.0`** | 0.0 – 10.0 |

`healing_received` 是倍率，其中性值为 `1.0` 而非 `0.0`——设为 `0.0` 会让实体完全无法被治疗，设为 `2.0` 则使受到的治疗翻倍。

## 名称显示为原始键

每个属性都注册了形如 `attribute.name.damagenexus.<id>` 的翻译键，但随包语言文件**只提供了其中一个**：`attribute.name.damagenexus.thorns`，且该条目**仅存在于 `en_us.json`**。

实际结果：

- 英文客户端上，`thorns` 显示正常名称，其余 **24 个属性显示原始翻译键**。
- 中文客户端上，**全部 25 个都显示原始键**，因为 `zh_cn.json` 连 thorns 条目都没有。

这只是显示缺陷——属性功能正常。它也是 [08 配置与诊断](08_configuration_and_diagnostics.md) 中所述语言缺口里最大的一处。

[返回首页](index)
