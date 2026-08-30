---
title: "遗物系统与 Curios 槽位"
navigation:
  title: "遗物系统与 Curios 槽位"
---

# 遗物系统与 Curios 槽位

遗物是模组的主干：79 个已注册物品中有 67 个是遗物。它们装在两个专用 Curios 槽位里，主要通过添加**属性修饰符**工作，模组的事件监听器再在特定时机读取这些属性。

## 两个 Curios 槽位

槽位标识符由 `ModCuriosSlot` 生成，并写入 `data/minethespire/curios/slots/`。

| 槽位 ID | 容量 | 排序 | 校验器 | 实体 | 接受 |
|:---|:---|:---|:---|:---|:---|
| `orginal_spire_relic` | 1 | 998 | `curios:tag` | `#curios:player_like` | 6 件*原始*遗物 |
| `spire_relic` | 8 | 999 | `curios:tag` | `#curios:player_like` | 其余 61 件遗物 |

两个槽位都使用默认图标 `curios:slot/empty_curio_slot`。

> **`orginal_spire_relic` 的拼写不是本文档的错字。** 源码注册的槽位名就是 `orginal_spire_relic`（*original* 少了第二个 `i`），生成的标签文件、槽位定义和翻译键全都沿用这个拼写。英文显示名字面就是 `Orginal Spire Relic`，中文为「原始尖塔遗物」。任何数据包或附属模组都必须原样使用 `orginal_spire_relic`；拼写正确的 `original_spire_relic` 并不存在。

槽位归属由物品类决定，而非手写标签：`OriginalRelicItem.getCuriosSlots()` 返回 `orginal_spire_relic`，`RelicItem.getCuriosSlots()` 返回 `spire_relic`，`CuriosDataGenerator` 再根据这些集合生成物品标签。

## 装备方式

手持遗物右键会调用 `CuriosCompat.tryEquipOrSwap`：

1. 填入第一个空的兼容槽位。
2. 如果没有空位，则与已装备的同槽位遗物**交换**，旧遗物回到手中。
3. 交换位置每次递增，因此反复右键会依次轮换你的槽位。轮换索引在 5000 毫秒无操作后重置。
4. 装备或交换成功会播放 `ARMOR_EQUIP_GENERIC` 音效。

若未安装 Curios，右键退化为原版行为，遗物查找改为扫描原版装备槽。

## 状态标志属性

多数触发型遗物并不把逻辑写在物品类里，而是向属性 `minethespire:flags_group_0` 添加一个修饰符。该属性是 `ActivatableStatesAttribute`，用每状态 6 位（`1 << 6*index`，即 64 的幂）的方式把最多 8 个布尔状态打包进一个数字，事件监听器再逐位检测。

| 索引 | 状态 | 提示文本（`attribute.minethespire.state.*`） |
|:---|:---|:---|
| 0 | `BURNING_BLOOD` | 完胜后，恢复 6 点生命值 |
| 1 | `RING_OF_THE_SNAKE` | 开战时，移动速度提升 30% |
| 2 | `CRACKED_CORE` | 开战时，召唤一个闪电充能球 |
| 3 | `LIZARD_TAIL` | 当你将要死亡时，免死并恢复至最大生命值的 50% |
| 4 | `AKABEKO` | 战斗前，获得 8 点活力 |
| 5 | `BAG_OF_MARBLES` | 开战时，给予所有敌人易伤 |
| 6 | `BLOOD_VIAL` | 开战时，恢复 2 点生命值 |
| 7 | `CENTENNIAL_PUZZLE` | 受伤时，获得速度 II |

其中有几条提示文本与实现**并不一致**，具体差异列在 [06 伤害类型与战斗](06_damage_and_combat)。

## 原始遗物（`orginal_spire_relic`，6 件）

| 物品 ID | 稀有度 | 状态标志 | 额外属性 |
|:---|:---|:---|:---|
| `minethespire:ironclad_mask` | 稀有 | `BURNING_BLOOD` | — |
| `minethespire:silent_mask` | 稀有 | `RING_OF_THE_SNAKE` | — |
| `minethespire:defect_mask` | 稀有 | `CRACKED_CORE` | `max_charge_ball` +2 |
| `minethespire:burning_blood` | 稀有 | `BURNING_BLOOD` | — |
| `minethespire:ring_of_the_snake` | 稀有 | `RING_OF_THE_SNAKE` | — |
| `minethespire:cracked_core` | 稀有 | `CRACKED_CORE` | `max_charge_ball` +2 |

三个面具在功能上分别与三件角色初始遗物完全重复。由于槽位只能放一件，你永远无法同时携带其中两件。

## 已实现的普通遗物（`spire_relic`，15 件）

| 物品 ID | 稀有度 | 代码中的效果 |
|:---|:---|:---|
| `minethespire:mango` | 稀有 | `minecraft:max_health` +14 |
| `minethespire:pear` | 罕见 | `minecraft:max_health` +10 |
| `minethespire:strawberry` | 普通 | `minecraft:max_health` +7 |
| `minethespire:anchor` | 罕见 | `prepared_blocking` +30 |
| `minethespire:horn_cleat` | 罕见 | `prepared_blocking` +40 |
| `minethespire:captains_wheel` | 罕见 | `prepared_blocking` +50 |
| `minethespire:bronze_scales` | 罕见 | `thorns` +3 |
| `minethespire:data_disk` | 罕见 | `focus` +1 |
| `minethespire:bag_of_perparation` | 罕见 | `minecraft:movement_speed` +40 %（乘算总量） |
| `minethespire:happy_flower` | 罕见 | `minecraft:attack_speed` +40 %（乘算总量） |
| `minethespire:akabeko` | 罕见 | 状态 `AKABEKO` |
| `minethespire:bag_of_marbles` | 罕见 | 状态 `BAG_OF_MARBLES` |
| `minethespire:blood_vial` | 罕见 | 状态 `BLOOD_VIAL` |
| `minethespire:centennial_puzzle` | 罕见 | 状态 `CENTENNIAL_PUZZLE` |
| `minethespire:lizard_tail` | 罕见 | 状态 `LIZARD_TAIL`，另有免死逻辑 |

直接来自源码的注意点：

- 物品 ID 是 `bag_of_perparation`（`perparation`），而它的属性修饰符 ID 拼写为 `bag_of_preparation`。两种拼写都真实存在，都不是文档笔误。
- `bag_of_perparation` 与 `happy_flower` 声明的是 `+0.4` 配 `ADD_MULTIPLIED_TOTAL`，即 +40 %，不是 30 % 也不是 4 %。
- **`bag_of_marbles`、`blood_vial` 与 `centennial_puzzle` 在同一个 `flags_group_0` 属性上使用了同一个修饰符 ID `minethespire:bag_of_marbles`。** 属性修饰符以 ID 为键，因此同时佩戴这三者中的多件，无法让它们的状态全部生效。这是 `ModItems` 里的复制粘贴产物，不是设计意图。
- `happy_flower` 的攻击速度修饰符 ID 同样写成了 `minethespire:data_disk`。由于它挂在与真正 `data_disk` 修饰符不同的属性上，不会发生冲突，但 ID 具有误导性。

### 蜥蜴尾巴细节

`LizardTailItem.tryPreventDeath` 在 `LivingDeathEvent` 上对**每个**生物运行，且完全不读取 `LIZARD_TAIL` 状态标志。它只是尝试从 Curios（或原版装备槽）消耗一条蜥蜴尾巴。成功后会：

- 把生命值设为最大生命值的 50 %，
- 授予相当于**最大生命值 2 倍**的格挡值，
- 施加 20 tick 的原版抗性提升 V，
- 播放 `TOTEM_USE` 并生成 140 个橙色尘埃粒子，
- 发包让客户端播放物品激活动画。

提示文本只描述了生命值部分；那份巨额格挡值与抗性提升 V 在游戏内没有任何说明。

## 已注册但无效果的遗物（46 件）

这些声明在 `ModItems.TodoItems` 内部，带有 `//todo: add relics` 注释，用 `tempModel()` 构建。它们是纯粹的 `RelicItem` 实例，**没有属性也没有行为**：可以装进 `spire_relic`，但什么都不做。

| | | | |
|:---|:---|:---|:---|
| `black_blood` | `brimstone` | `calipers` | `champion_belt` |
| `chemical_x` | `emotion_chip` | `fossilized_helix` | `frozen_core` |
| `ginger` | `gold_plated_cables` | `gremlin_horn` | `incense_burner` |
| `inserter` | `kunai` | `lantern` | `letter_opener` |
| `meal_ticket` | `meat_on_the_bone` | `mercury_hourglass` | `ninja_scroll` |
| `nuclear_battery` | `nunchaku` | `oddly_smooth_stone` | `ornamental_fan` |
| `pantograph` | `pen_nib` | `philosophers_stone` | `red_skull` |
| `ring_of_the_serpent` | `runic_capacitor` | `runic_cube` | `self_forming_clay` |
| `shuriken` | `snecko_eye` | `snecko_skull` | `stone_calendar` |
| `symbiotic_virus` | `the_boot` | `the_specimen` | `thread_and_needle` |
| `torii` | `toy_ornithopter` | `tungsten_rod` | `turnip` |
| `twisted_funnel` | `vajra` | | |

它们仍在 `spire_relic` 物品标签中，因此会占用槽位。其中许多还没有中文翻译，在 `zh_cn` 下显示英文名。

## 非遗物物品

| 物品 ID | 堆叠 | 稀有度 | 是什么 |
|:---|:---|:---|:---|
| `minethespire:spirit` | 64 | 普通 | 唯一可合成物品；食用后获得无实体 |
| `minethespire:heavy_blade` | 1 | 史诗 | 下界合金级剑，+13 攻击伤害，−3.75 攻击速度 |
| `minethespire:dark_shuriken` | 1 | 史诗 | 可充能投掷物，见 [06](06_damage_and_combat) |
| `minethespire:bouncing_flask` | 16 | 罕见 | 施加蛇毒的投掷物 |
| `minethespire:pain_strike` | 64 | 普通 | 满蓄力攻击时施加易伤 |
| `minethespire:impervious` | 64 | 稀有 | 消耗品，三叉戟式使用动画 |
| `minethespire:entrench` | 16 | 罕见 | 格挡值工具 |
| `minethespire:dualcast` | 1 | 稀有 | Orb 工具 |
| `minethespire:lightning_orb` | 16 | 罕见 | 引导闪电充能球 |
| `minethespire:frost_orb` | 16 | 罕见 | 引导冰霜充能球 |
| `minethespire:dark_orb` | 16 | 罕见 | 引导黑暗充能球 |
| `minethespire:plasma_orb` | 16 | 罕见 | 引导等离子充能球 |

`dark_shuriken` 的 item definition 把平面模型指向纹理 `minethespire:item/mark_bloom`，与物品名并不对应——这是另一处既有的不一致。

此外还有一个额外的 item definition `minethespire:fairy_potion`。它**不是**已注册物品，只作为模型覆盖应用在瓶装精灵药水的物品堆上。

[返回首页](index)
