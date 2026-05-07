---
title: "开始使用"
navigation:
  title: "01 开始使用"
---

# 开始使用

## 创造栏

`simple_path_finder` 创造栏按以下顺序添加内容：

1. `simple_path_finder:navigation`
2. `simple_path_finder:nav_brush`
3. `simple_path_finder:locator`
4. `simple_path_finder:debug_nav`
5. `simple_path_finder:path_finder_block`
6. `simple_path_finder:navigation_barrier`

当前数据包没有这些物品的合成配方。唯一生成的配方是定位器解绑配方 `minecraft:unbind_locator`，它把 1 个已绑定定位器无序合成为全新的 `simple_path_finder:locator`。注意数据生成器把该配方存到了 `minecraft` 命名空间，而不是 `simple_path_finder`。

## 基本流程

1. 用导航物品在目标区域构建导航图层。
2. 当地形不能完全步行时，用导航笔刷修复或调整边。
3. 为不相邻的捷径创建链接。
4. 用定位器、寻路方块或客户端命令开始寻路。
5. 跟随渲染出来的路径线。模组永远不会控制你的移动。

## 操作

| 输入 | 行为 |
|:---|:---|
| 导航物品：潜行（Shift）+ 右键 | 打开导航点设置界面。 |
| 导航物品：潜行 + 滚轮 | 在默认、添加导航、移除导航与添加链接模式之间循环。向下滚动进入下一个模式，向上滚动回到上一个模式。 |
| 导航笔刷：空中潜行 + 右键 | 打开导航笔刷设置界面。 |
| 导航笔刷：右键方块 | 把配置好的笔刷操作应用到该位置。 |
| 定位器：未绑定时空中潜行 + 右键 | 把定位器绑定到当前玩家。 |
| 定位器：未绑定时右键方块 | 把定位器绑定到点击面外侧一格的位置。 |
| 定位器：绑定时右键 | 朝绑定目标开始寻路。 |
| 调试导航棒：主手持有 | 显示导航图方块与链接箭头；堆叠数量控制调试视图。 |

模组在控制设置中没有注册任何按键绑定；上述面向玩家的操作都是物品交互或鼠标操作。

## 持久数据

导航区块保存在每维度的 `simple_path_finder:simple_path_finder_data` 存档数据中。玩家专属的方块距离设置保存在 `simple_path_finder:player_block_distance` 附件中，寻路方块的目标保存在 `simple_path_finder:locator_data` 附件中。

[返回首页](index)
