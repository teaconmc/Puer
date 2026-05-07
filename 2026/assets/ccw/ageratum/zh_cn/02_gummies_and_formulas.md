---
title: "软糖与公式"
navigation:
  title: "02 软糖与公式"
items:
  - "ccw:gummy"
---

# 软糖与公式

## 软糖

`ccw:gummy` 是动态糖果物品：糖种与香型保存在 `ccw:sugar_contents` 数据组件中，会改变名称、颜色与食用效果。每颗软糖恢复 1 点饥饿值、低饱和度，总是可以食用，且只需 0.4 秒吃完。食用时会应用该糖种/香型组合的效果。

创造模式下，主手拿着软糖潜行并右键，可以在可用香型之间循环当前堆叠（见[香型](#香型)）。生存模式玩家通过在糖果工坊中精炼获得带香型的软糖。

## 精炼成软糖

公式是 `ccw:formula` 注册表中的数据包条目，按“糖种 × 香型”索引。标准公式消耗：

- **1** 个普通牛奶，或 **8** 个盒装/高钙牛奶；
- **8** 个糖粉（对应糖种类型的原版糖、下界糖粉或龙息糖粉）；
- **1** 个用于识别糖种的主料；
- **1** 个香型材料；
- 产出：**8** 颗带对应糖种与香型的软糖。

因为公式注册表由数据包驱动，组合并不是固定合成配方：生成文件位于 `data/ccw/ccw/formula/<sugar>_<flavor>.json`。

## 香型

| 香型 | 材料 | 对公式的影响 |
|:---|:---|:---|
| `ccw:original` | （默认） | 基础效果 |
| `ccw:excited` | 可可豆 | 效果等级增强 |
| `ccw:bold` | 蜂蜜瓶 | 持续时间翻倍 |
| `ccw:milky` | `ccw:milk_gelatin` | 按原味公式处理，但先清除食用者身上其他已激活效果 |

`ccw:milky` 是“奶洗”香型：公式查找时按原味处理，在应用软糖自身效果前，先移除不在该软糖公式中的其他已激活效果。

## 核心糖种效果

以下是始终注册的核心糖种及其默认效果（普通效果 600 tick，瞬时效果 20 tick，另有注明除外）：

### 主世界

| 糖种 | 主料 | 原味效果 |
|:---|:---|:---|
| `ccw:speed` | 糖 | 速度 |
| `ccw:bunny` | 兔子脚或 `ccw:energy_carrot` | 跳跃提升 |
| `ccw:healing` | 闪烁的西瓜片 | 生命提升（瞬时） |
| `ccw:poison` | 蜘蛛眼 | 中毒 |
| `ccw:pufferfish` | 河豚 | 水下呼吸 |
| `ccw:night_vision` | 金胡萝卜 | 夜视 |
| `ccw:strength` | 烈焰粉 | 力量 |
| `ccw:recovery` | 恶魂之泪或 `ccw:sweet_melon_slice` | 生命恢复 |
| `ccw:turtle` | 鳞甲 | 缓慢 100 tick II + 抗性提升 100 tick I |
| `ccw:flutter` | 幻翼膜 | 缓降 |
| `ccw:snail` | 灵魂沙 | 缓慢 |
| `ccw:stinky` | 蘑菇 | 反胃 |
| `ccw:blinding` | `ccw:void_carrot` | 失明 |
| `ccw:weakness` | `ccw:weakness_powder` | 虚弱 |
| `ccw:brightness` | 荧光浆果 | 发光 |
| `ccw:darkness` | 黑色染料 | 黑暗 |
| `ccw:hunger` | 腐肉 | 饥饿 |

### 下界

| 糖种 | 主料 | 原味效果 |
|:---|:---|:---|
| `ccw:invisibility` | `ccw:phantom_pearl` | 隐身 |
| `ccw:stinger` | 仙人掌 | 瞬间伤害（瞬时） |
| `ccw:bug` | 石头 | 寄生 |
| `ccw:sticky` | 黏液块 | 渗浆 |
| `ccw:binding` | 蜘蛛网 | 织网 |
| `ccw:gale` | 旋风棒 | 风击 |
| `ccw:refreshing` | 可可豆 | 急迫 |
| `ccw:lazy` | 圆石 | 挖掘疲劳 |
| `ccw:solid` | `ccw:calcium_rich_milk` | 抗性提升 |
| `ccw:fireproof` | 岩浆膏/黑曜石 | 抗火 |
| `ccw:withering` | 凋零玫瑰 | 凋零 |
| `ccw:red_heart` | `ccw:iron_clad_apple` | 生命提升 |
| `ccw:floating` | 潜影壳 | 漂浮 |

### 末地

| 糖种 | 主料 | 原味效果 |
|:---|:---|:---|
| `ccw:golden_heart` | `ccw:gold_studded_apple` | 伤害吸收 |
| `ccw:satiating` | `ccw:blessed_steak` | 饱和 20 tick |
| `ccw:lucky` | `ccw:greedy_offering` | 幸运 |
| `ccw:unlucky` | `ccw:defiled_offering` | 霉运 |
| `ccw:tidal` | 鹦鹉螺壳 | 潮涌能量 |
| `ccw:fish_swim` | `ccw:dolphin_cookie` | 海豚的恩惠 |
| `ccw:taunting` | `ccw:ominous_flag` | 不祥之兆 |
| `ccw:discount` | 绿宝石块 | 村庄英雄 |

`excited` 公式使用等级 1，`bold` 公式把持续时间翻倍（瞬时效果保持瞬时）。部分公式没有 excited 或 bold 变体，这些变体不会生成。

[返回 CCW 首页](index)
