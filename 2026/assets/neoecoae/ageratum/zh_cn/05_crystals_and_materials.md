---
title: 晶体与材料
navigation:
  title: 晶体与材料
description: 一条完整的 AE2 式充能晶体生长线，外加四种金属与一块新压印板。
---

# 晶体与材料

## 充能晶体像 AE2 自家晶体一样生长

模组随包一条**完整的生长型晶体线**，完全建立在 AE2 的范式上：

| 阶段 | 方块 |
|:---|:---|
| **母岩方块** | `flawless`（完美）→ `flawed`（有瑕）→ `chipped`（缺损）→ `damaged`（残破）充能晶体母岩 |
| **芽体** | `small`（小）→ `medium`（中）→ `large`（大）充能晶体芽 |
| **簇** | `energized_crystal_cluster` |

如果你培育过 AE2 的石英，这个循环你已经会了：母岩方块在水中长出芽体，芽体经三个尺寸生长，成熟的芽体成为可采收的簇。**母岩方块在工作过程中经四个品质档逐步退化**，因此一块「完美」母岩是长期资产，而「残破」的那块已近耗尽。

6 条 **`ae2:transform`** 配方参与 AE2 的世界内转化系统，这正是晶体在水中转化的方式。

## 晶体方块

晶体线有三种储存方块：

| 方块 | 说明 |
|:---|:---|
| `energized_crystal_block` | 普通充能晶体 |
| `energized_fluix_crystal_block` | 应对 fluix 的对应物 |
| **`energized_superconductive_block`** | 该线的顶端 |

超导方块的名称与本附属的新压印板正好对应——见下文。

## 四种金属

| 金属 | 矿石 | 原矿 | 锭 | 方块 |
|:---|:---|:---|:---|:---|
| 铝 | `aluminum_ore` | `raw_aluminum` | ✔ | `aluminum_block` |
| 钨 | `tungsten_ore` | `raw_tungsten` | ✔ | `tungsten_block` |
| 铝合金 | —— | —— | ✔ | `aluminum_alloy_block` |
| 黑钨合金 | —— | —— | ✔ | `black_tungsten_alloy_block` |

两种合金没有矿石——它们由基础金属制成，而它们正是高层级外壳的建造材料。

### 它们的标签做得很到位

四种锭全部被加入 **AE2 的 `metal_ingots` 标签**，模组另随包 **48 个 `c` 约定标签文件**，覆盖矿石、原矿材料、锭、粒、粉与储存方块。由此产生两个后果：

- 接受金属锭的 AE2 机械**无需任何补丁**就能接受它们。
- **任何读取约定标签的模组都能使用这条材料线**——本附属在这点上是良好公民，而这值得指出，因为**相当多附属并非如此**。

## 超导处理器压印板

`superconducting_processor_press` 被加入 **AE2 自己的 `inscriber_presses` 标签**，这意味着 **AE2 的压印器直接接受它**——不需要另一台机器，也不需要给 AE2 的配方系统打补丁。

模组随包 10 条 **`ae2:inscriber`** 配方，因此这块压印板背后有真实的生产线。

**这是扩展 AE2 处理器层级最干净的做法：把压印板放进 AE2 本来就会读取的那个标签里。**

## 低温冷却液

注册为流体，并配有方块与桶，被[计算](02_computation_system)与[合成](03_crafting_system)两套系统的冷却回路消耗。模组随包**两条 `neoecoae:cooling` 配方**——它自有的配方类型——用于处理它。

⚠️ **低温冷却液没有中文翻译。** 它的方块、流体与桶装物品在**中文客户端上都会显示原始文本**而不是可读名称。物品功能正常，只有名称受影响。见[与其他模组一起玩](07_technical_and_limits)。

## 可选的加工路径

若你装有 **Mekanism**，会多出十二条配方——6 条 `mekanism:crushing` 与 6 条 `mekanism:enriching`——为矿石与金属提供机械加工路径。

若你装有 **ExtendedAE**，还会多出五条：3 条晶体修复、1 条晶体组装、1 条电路切割。

若你装有 **AdvancedAE**，会多出 2 条 `advanced_ae:reaction`。

**这三个模组都是可选的。** 没有它们时这些配方不会出现，而原版与 AE2 的路径依然可用。见[与其他模组一起玩](07_technical_and_limits)。

[返回首页](index)
