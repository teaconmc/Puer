---
title: 背约王者之剑的诅咒
navigation:
  title: 背约王者之剑的诅咒
description: 背约王者之剑的召唤及其五种具名诅咒。
---

# 背约王者之剑的诅咒

**背约王者之剑**（`anticalabrum`）是一个被召唤的实体：一把悬浮的剑，尺寸 0.25 x 2 格，属于 `MISC` 类别，无战利品表，客户端追踪距离为 8。

本德森在 `summon_anticalabrum` 相位召唤它——这条从 `attack` 出发的转移拥有**优先级 10**，因此只要该相位允许，它就会立即发生。

## 五种诅咒

每种诅咒都是以这把剑命名的有害状态效果：「背约王者之剑：X」。

| 效果 id | 名称 | 说明 |
|:---|:---|:---|
| `curse_hydro_dreamer` | 水星梦主 | 有害。 |
| `curse_black_cat` | 不可视之猫 | 有害。与黑猫冲刺攻击配套。 |
| `curse_end_guardian` | 末地守卫者 | 有害。主题上与 `end_guardian_statue` 呼应。 |
| `curse_nether_dog` | 下界看门犬 | 有害。 |
| `curse_void_hare` | 虚无野兔 | 有害；并通过修饰符 id `lanfasie_benderson:effect.void_hare` 施加 **−0.5（ADD_MULTIPLIED_TOTAL）** 的**重力**修饰符，也就是把你的重力减半。 |

在注册表中只有虚无野兔携带属性修饰符；另外四种在各自的效果类中实现自身行为。

## 黑猫冲刺

不可视之猫诅咒与一个冲刺攻击相关联，其伤害系数可通过 `benderson_cat_smashing_attack_damage_multiplier` 配置（**默认 20.0**）。参见[服务端配置](09_server_configuration.md)。

## 与饱和度的交互

本模组的部分效果实现了一个「打断饱和度」接口，且模组对原版饥饿数据做了 mixin。因此诅咒不仅会造成伤害，还可能干扰食物 / 饱和度的恢复。

[返回首页](index)
