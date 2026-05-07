---
title: "简单路径查找器"
navigation:
  title: "简单路径查找器"
---

# 简单路径查找器

简单路径查找器是一个面向 NeoForge 26.1 的导航辅助模组。它按维度保存可步行导航图，默认在服务端计算路径，并在客户端渲染结果。导航物品用于构建或移除导航图层，导航笔刷用于修复边权重，定位器与寻路方块提供可复用的目的地，调试导航棒则用于查看导航图。

## 阅读路线

1. [开始使用](01_getting_started)：创造栏、已注册内容、操作方式与定位器解绑。
2. [导航物品](02_navigation_item)：模式、图层、设置界面与创造模式限制。
3. [导航笔刷与导航屏障](03_nav_brush_and_barrier)：边修复、权重编辑与隐形屏障。
4. [导航链接](04_navigation_links)：用普通、传送与载具链接标签连接不相邻位置。
5. [定位器与寻路方块](05_locator_and_path_finder_block)：绑定可复用目标并从方块触发寻路。
6. [寻路与渲染](06_pathfinding_and_rendering)：服务端与客户端计算、进度、路径线和调试可视化。
7. [命令与配置](07_commands_and_configuration)：管理命令、配置键、玩家距离设置与部署注意事项。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID | `simple_path_finder` |
| 源码目标 | Minecraft 26.1.2 / NeoForge 26.1.2.43-beta |
| 创造栏 | `simple_path_finder` |
| 注册物品 | `simple_path_finder:debug_nav`、`simple_path_finder:navigation`、`simple_path_finder:locator`、`simple_path_finder:nav_brush`、`simple_path_finder:path_finder_block`、`simple_path_finder:navigation_barrier` |
| 注册方块 | `simple_path_finder:path_finder_block`、`simple_path_finder:navigation_barrier` |
| 方块实体 | `simple_path_finder:path_finder_block` |
| 数据组件 | `simple_path_finder:navigation_mode`、`simple_path_finder:locator`、`simple_path_finder:nav_brush`、`simple_path_finder:link_creation`、`simple_path_finder:link_type` |
| 附件 | `simple_path_finder:locator_data`、`simple_path_finder:player_block_distance` |
| 每维度存档数据 | `simple_path_finder:simple_path_finder_data` |
| 网络载荷 | `simple_path_finder:sync_level_nav`、`simple_path_finder:sync_single_chunk`、`simple_path_finder:player_location`、`simple_path_finder:pathfinding_result`、`simple_path_finder:pathfinding_request`、`simple_path_finder:update_item_properties`、`simple_path_finder:sync_block_distance_config` |
| 管理命令 | `/spf admin ...`；别名 `/simple_path_finder` |
| 客户端命令 | `/spf nav`、`/spf navserver`；别名 `/nav`、`/navserver` |
| 按键 | 未注册 |
| 配置 | 服务器 `NavConfig`；客户端 `ClientConfig` |

::: note
该模组只计算并渲染导航路径，不会自动移动玩家；链接类型只是保存下来的路径标签，并不会真正执行传送或载具移动。
:::
