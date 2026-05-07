---
title: "物品与食物"
navigation:
  title: "物品与食物"
---

# 物品与食物

## 葡萄（`harvestheritage:grape`）

葡萄是随模组数据包数据提供的自定义种子示例。它的种子定义（`harvestheritage_seeds/grape.json`）给出分类 `misc`、产物 `harvestheritage:grape`、阶段 `3`。

葡萄不能直接合成。完整路线是：

1. 用放大镜鉴定未知种子（`harvestheritage:find/grape`），得到葡萄已知种子。
2. 用 `harvestheritage:seedpacket/grape` 配方把它合成种子袋。
3. 像其他作物一样种植、生长并收获；之后还可以用它杂交提升速度与产出。

## 土球（`harvestheritage:zzzz`）

土球是一个装饰性物品，名字带有渐变颜色，提示文字很短且古怪。对地上掉落的**放大镜**使用放大镜（`harvestheritage:find/zzzz`）就会得到它，同时消耗地上的放大镜。

它只有一个合成用途：作为奇异催生器的中心材料（见[奇异催生器](06_activator)）。

## 瓜子袋（`harvestheritage:fried_seedsack`）

一种快速、可随时食用的零食，恢复 **2 饥饿值**与 **0.5 饱和度**，只需要 `0.1` 秒即可吃完。用任意种子袋烧制：

<recipe id="harvestheritage:fried_seedsack"/>

<recipe id="minecraft:fried_seedsack_from_campfire_cooking"/>

吃掉它会获得**吃瓜群众**进度。

## 疯狂星期四（`harvestheritage:kfc`）

一种更强的可随时食用食物，恢复 **15 饥饿值**与 **2 饱和度**。用纸和熟鸡肉合成：

<recipe id="harvestheritage:kfc"/>

吃掉它会获得**疯狂疯狂星期四**进度。

::: note
`harvestheritage:test_block` 也被注册为普通的开发/测试方块。它没有生存玩法，不属于作物流程的一部分。
:::

[返回首页](index)
