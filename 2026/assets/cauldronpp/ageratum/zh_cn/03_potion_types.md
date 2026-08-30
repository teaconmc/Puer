---
title: "药水类型"
navigation:
  title: "03 药水类型"
---

# 药水类型

药水数据决定*效果是什么*。另一个独立的值——**药水类型**——决定*药水以什么形态存在*。两者都保存在炼药锅上，并在你取出时复制到物品上。

## 四种类型

| 类型 | 物品 | 如何选择 |
|:---|:---|:---|
| 普通 | `cauldronpp:potion` | 默认状态（也可用闪烁的西瓜片恢复） |
| 喷溅型 | `cauldronpp:splash_potion` | 加入火药 |
| 滞留型 | `cauldronpp:lingering_potion` | 加入龙息 |
| 药箭 | `cauldronpp:tipped_arrow` | 用箭而不是玻璃瓶取出 |

三种类型转化物归入 `cauldronpp:cauldron_brewing_materials/potion_type` 物品标签。

## 切换类型

加入类型转化物只改变炼药锅的药水类型，不会触及药水数据，因此效果保持不变，只有投递方式改变。若加入的转化物对应炼药锅当前已有的类型，则不会发生任何变化。

龙息作为瓶装物被消耗，并留下一个玻璃瓶。火药和闪烁的西瓜片则直接被消耗。创造模式下三者都不会被消耗。

请注意，药箭类型永远不由转化物设置——它是在取出时通过使用箭来选择的。

## 物品标签

模组的药水物品被注册进标准标签，使其他内容可以像对待原版药水那样处理它们：

| 标签 | 内容 |
|:---|:---|
| `c:potions/splash` | 原版喷溅型药水 + `cauldronpp:splash_potion` |
| `c:potions/lingering` | 原版滞留型药水 + `cauldronpp:lingering_potion` |
| `c:tipped_arrows` | 原版药箭 + `cauldronpp:tipped_arrow` |
| `c:potions/bottle` | `cauldronpp:potion` 以及喷溅和滞留标签 |
| `minecraft:arrows` | 包含 `c:tipped_arrows`，因此模组的箭可被射出 |
| `c:drinks/magic`、`c:drinks/watery` | `cauldronpp:potion` |
| `c:drinks/water` | `cauldronpp:water_bottle` |

## 命名

四种物品共用同一套命名方案：来自药水数据的翻译前缀加上物品形态，得到诸如*浓稠的药水*、*喷溅型粗制的药水*或*强效的药箭*这样的名称。如果某个物品由于某种原因没有携带药水数据，它会回退到朴素的默认名称（药水、喷溅型药水、滞留型药水、药箭）。

[返回首页](index)
