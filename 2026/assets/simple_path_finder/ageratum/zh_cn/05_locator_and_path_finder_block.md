---
title: "定位器与寻路方块"
navigation:
  title: "05 定位器与寻路方块"
items:
  - "simple_path_finder:locator"
  - "simple_path_finder:path_finder_block"
---

# 定位器与寻路方块

## 定位器

`simple_path_finder:locator` 是单格堆叠物品。它的目标保存在持久且网络同步的 `simple_path_finder:locator` 数据组件中，可以是玩家 UUID，也可以是全局位置。

未绑定定位器有三种绑定方式：

- 空中潜行 + 右键绑定到当前玩家。
- 右键方块绑定到点击面外侧一格的位置。
- 未绑定时右键寻路方块，如果方块有已存目标，则把该目标复制进定位器。

已绑定定位器在普通右键时会触发寻路：

- 玩家绑定目标在服务端解析。如果目标玩家在线，服务端发送 `simple_path_finder:player_location`；如果离线，则发送离线结果，客户端显示 `simple_path_finder.locator.player_offline`。
- 位置绑定目标会在使用时发送所存位置。定位器物品的普通使用不会重新检查目标维度，而寻路方块的路径会检查。
- 实际路径由服务端还是客户端计算，取决于 `server_side_pathfinding`。

提示文本会显示 `未绑定`、`绑定到玩家` 加 UUID，或 `绑定到位置` 加维度与坐标。

## 解除绑定

生成的 `minecraft:unbind_locator` 配方是无序配方，唯一原料是 1 个定位器，结果是全新定位器。它是当前数据包中唯一的配方，并存放于 `minecraft` 命名空间。把已绑定定位器这样合成即可得到未绑定定位器。

## 寻路方块

`simple_path_finder:path_finder_block` 的硬度为 `1.5`，设置了 `requiresCorrectToolForDrops`。它把唯一目标保存在方块实体的 `simple_path_finder:locator_data` 附件中，并暴露 `active` 方块状态。

| 交互 | 行为 |
|:---|:---|
| 未绑定定位器 + 寻路方块 | 如果方块有已存目标，则把目标复制进定位器。 |
| 已绑定定位器 + 空寻路方块 | 把定位器目标写入方块并设置 `active=true`。 |
| 已绑定定位器 + 已填充寻路方块 | 拒绝写入；服务端报告 `block.simple_path_finder.path_finder_block.already_has_data`。 |
| 空手 + 有数据的寻路方块 | 在客户端通过 `NavigationService` 开始寻路。 |
| 空手 + 空寻路方块 | 不开始寻路。 |

玩家绑定目标只在目标玩家在线时可用。方块实体有服务端有效性检查，但空手交互在客户端执行，从本地玩家列表解析目标玩家。除破坏方块外，当前没有支持清空或替换方块已存数据的流程。

[返回首页](index)
