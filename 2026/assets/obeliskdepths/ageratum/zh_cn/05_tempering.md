---
title: "淬炼"
navigation:
  title: "淬炼"
---

# 淬炼

**淬炼**（Tempering）是本模组的武器强化系统，在**方尖碑锻造台**（`obelisk_smithing_table`）上进行。你可以使用**淬炼升级**模板（`tempering_smithing_template`）与备用材料，为合适的武器淬炼出词缀。

## 菜单

打开方尖碑锻造台会显示**Obelisk 淬炼**菜单，包含：

- **武器**槽（接受 `temperable_weapons` 标签中的武器；堆叠上限 1）。
- **模板**槽（接受淬炼升级模板）。
- **材料**槽（备用材料）。
- **结果**槽，带有所选词缀的实时预览。

一旦存在有效的组合，结果槽就会预览产出；取出结果即执行交易，并消耗相应输入。

## 模板带有等级与权重

每个淬炼升级模板都带有**等级**（tier）与**权重**（weight），显示在提示文本中（*Tempering Tier* 与 *Tempering Weight*）。这些数据以物品数据组件（`tempering_template_data`）存储。无组件的模板按 tier 1、weight 0.00 处理。等级与权重会引导模板能淬炼出的词缀及其强度。

## 方向

淬炼配方由数据驱动：淬炼池与方向在服务器重载时从数据加载（`obelisk_tempering_pools` / `obelisk_tempering_directions` 监听器），因此无需重新编译即可调整可用词缀。菜单允许你选择**方向**，使随机结果偏向某一类词缀。随附方向包括：

- **奥术（Arcane）** — 魔法伤害与 spellblade 式增益。
- **均衡（Balance）** — 稳定的通用武器淬炼。
- **回响（Echo）** — 偏向不寻常的回响类词缀。
- **锋刃（Edge）** — 物理输出、护甲压制与收割能力。
- **烈焰（Flame）** — 火焰伤害与对燃烧目标施压。
- **寒霜（Frost）** — 寒冷伤害与物理转寒冷。
- **守护（Guard）** — 偏向防御词缀。
- **狩猎（Hunt）** — 首领狩猎与对虚弱目标的处决。
- **精准（Precision）** — 暴击与开场一击施压。
- **风暴（Storm）** — 闪电与动能伤害，适合强力打击。
- **剧毒（Venom）** — 中毒、凋零与毒性转化。

## 词缀示例

淬炼池定义了庞大的词缀库。代表性词缀包括：

| 词缀 | 效果（提示文本） |
|:---|:---|
| Brutal | +10% 全局伤害 |
| Tempered | +3 物理伤害 |
| Flaming | +3 火焰伤害 |
| Frostbound | +3 寒冷伤害 |
| Venomous | +3 中毒伤害 |
| Withering | +2 凋零伤害 |
| Stormcharged | +3 闪电伤害 |
| Piercing | +1.5 物理真实伤害 |
| Critical Edge | 暴击时 +20% 物理伤害 |
| Executioner's | 目标生命低于 35% 时 +20% 物理伤害 |
| Giant Slayer's | 对首领 +20% 全局伤害 |
| Spellblade | 将 15% 物理伤害转化为魔法 |
| Flameforged | 将 20% 物理伤害转化为火焰 |
| Frostforged | 将 20% 物理伤害转化为寒冷 |
| Stormforged | 将 18% 物理伤害转化为闪电 |

[返回首页](index)
