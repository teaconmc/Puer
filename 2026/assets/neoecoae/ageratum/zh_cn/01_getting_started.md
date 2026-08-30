---
title: 入门
navigation:
  title: 入门
description: 需要装什么、两种矿石，以及材料线如何开始。
---

# 入门

## 前置要求

| 模组 | 类型 | 范围 |
|:---|:---|:---|
| **AE2** | **必需** | `[26.1.10-beta,)` |
| **LDLib2** | **必需** | `[26.1.2.22,)` |
| NeoForge | 必需 | `[26.1.2.75,)` |

请注意 AE2 的下限是一个 **beta** 版本。**若你的整合包钉死了比它更旧的稳定版 AE2，本附属将无法加载。**

**LDLib2 是硬性要求而非便利品。** 本附属的每个界面都用它构建，并随包 `eco.lss`（一份 LDLib 样式表）来为它们蒙皮。**没有 LDLib2 就完全没有界面。**

除此之外没有其他必需项。但仍有若干模组能解锁额外内容——见[与其他模组一起玩](07_technical_and_limits)。

## 两种新矿石

| 方块 | 原矿形态 | 原矿块 |
|:---|:---|:---|
| `aluminum_ore` | `raw_aluminum` | `raw_aluminum_block` |
| `tungsten_ore` | `raw_tungsten` | `raw_tungsten_block` |

两者都可熔炼与高炉冶炼（模组随包 8 条熔炼与 8 条高炉配方），若你装有 **Mekanism**，两者还有粉碎与富集路径。

## 四种金属，其中两种是合金

| 金属 | 方块 | 外壳 |
|:---|:---|:---|
| 铝 | `aluminum_block` | `aluminum_alloy_casing` |
| 钨 | `tungsten_block` | —— |
| **铝合金** | `aluminum_alloy_block` | `aluminum_alloy_casing` |
| **黑钨合金** | `black_tungsten_alloy_block` | `black_tungsten_alloy_casing` |

四种锭全部被贡献进 **AE2 自己的 `metal_ingots` 标签**，因此接受金属锭的 AE2 机械可以直接接受它们。它们在 `c` 约定标签中也有完整描述——共 **48 个标签文件**——所以任何读取约定标签的模组都能识别它们。

两种**外壳**是多方块的结构方块：低层级用铝合金，高层级用黑钨合金。

## 它接入 AE2 的三个点

有三处集成值得先知道：

**一块新的压印板。** `superconducting_processor_press` 被加入 AE2 的 `inscriber_presses` 标签，因此 **AE2 自己的压印器直接接受它**。模组随包 10 条 `ae2:inscriber` 配方。

**元件拆解。** 6 条 `ae2:storage_cell_disassembly` 配方让你能把本附属的元件拆回零件，与 AE2 对待自家元件的方式一致。

**晶体转化。** 6 条 `ae2:transform` 配方参与 AE2 的世界内转化系统。

## 集成工作站

`integrated_working_station` 是本附属自己的机器，且有自己的配方类型——随包 **20 条 `neoecoae:integrated_working_station` 配方**。它是本附属大多数组件的制作站，**请尽早建造**。

## 配方概览

166 条配方分属 **16 种类型**，种类之多相当罕见：

| 类别 | 条数 |
|:---|--:|
| 原版有序 / 无序 | 57 / 20 |
| **`neoecoae:integrated_working_station`** | **20** |
| 原版锻造台转化 | 10 |
| **`ae2:inscriber`** | **10** |
| 原版熔炼 / 高炉 | 8 / 8 |
| `ae2:storage_cell_disassembly` / `ae2:transform` | 6 / 6 |
| **`mekanism:crushing` / `mekanism:enriching`** | 6 / 6 |
| **`extendedae:*`** | 合计 5 |
| **`advanced_ae:reaction`** | 2 |
| **`neoecoae:cooling`** | 2 |

这些外部类型很关键：**Mekanism、ExtendedAE 与 AdvancedAE 都是可选的**，因此这 19 条配方只在你装了那些模组时才存在。见[与其他模组一起玩](07_technical_and_limits)。

## 建议顺序

1. 寻找并熔炼**铝**与**钨**。
2. 制作两种**合金**及其**外壳**。
3. 建一台**集成工作站**。
4. 培育**充能晶体** —— 见 [05 晶体与材料](05_crystals_and_materials)。
5. 先建**存储系统**（最简单的多方块），再建**合成**，最后建**计算**。

[返回首页](index)
