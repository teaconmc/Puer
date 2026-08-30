---
title: "收获：遗产"
navigation:
  title: "收获：遗产"
---

# 收获：遗产

收获：遗产是一款作物杂交模组。用除草剪割草挖出**未知种子**，用**放大镜**鉴定出种子，把已知种子用纸包成**种子袋**，再在**作物架**上种植并杂交作物。两种不同的成熟作物可以在它们之间的空作物架里发生杂交，产出一种新种子，其**速度**与**产出**会随着每一代缓慢提升。

## 阅读路线

1. [获取开始](01_getting_started)：合成除草剪与放大镜，找到你的第一颗未知种子。
2. [鉴定种子](02_seed_identification)：把未知种子变成已知种子，并了解种子分类。
3. [种子袋](03_seed_packets)：用纸把已知种子包起来，读懂它的速度与产出属性。
4. [作物架](04_crop_stands)：在作物架与悬挂式作物架上种植、生长与收获作物。
5. [杂交](05_hybridization)：在空作物架中杂交两种成熟作物，培育新种子。
6. [奇异催生器](06_activator)：一个加速相邻随机刻生长的红石方块。
7. [物品与食物](07_items_and_food)：葡萄、土球、瓜子袋与疯狂星期四。
8. [进度与配置](08_advancements_and_config)：游戏内里程碑与两个服务端配置项。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID | `harvestheritage` |
| 物品 | `grass_shear`、`magnifying_glass`、`grape`、`zzzz`、`unknown_seed`、`known_seed`、`seed_packet`、`fried_seedsack`、`kfc` |
| 方块 | `crop_stand_block`、`scaffolding_crop_stand_block`、`activaor_block`、`test_block` |
| 配方类型 | 合成、烧炼、`find`、`seed_packet`、`hyprid` |
| 生长属性 | `speed` 与 `output`；配置上限默认 `31`，新种子袋从 `1` 开始 |
| 未知种子掉落 | 用除草剪破坏 `can_shear` 方块，`7%` 概率 |
| 命令 | 无 |

::: note
注册为 `harvestheritage:activaor_block` 的方块在真实注册表中保留了拼写上的笔误，杂交配方的类型名在代码中写作 `hyprid`。文档保留游戏内出现的这些确切 ID。
:::
