---
title: "更多交互（Extra Interaction）"
navigation:
  title: "更多交互（Extra Interaction）"
---

# 更多交互（Extra Interaction）

更多交互（`extra_interaction`）把动作游戏与冒险游戏里「按一个键选择动作」的交互列表带进 Minecraft。只要把准星对准方块或实体，为该目标注册过的交互就会以选项列表的形式出现在屏幕上；滚动选择其中一项，再按交互键即可执行。

这个模组本质上是一个 **API 与数据接口**，而不是内容模组。它自身不注册任何物品、方块、实体、菜单、创造模式选项卡、配方和命令。你在选项列表里看到的一切，要么由其他模组通过开发者 API 提供，要么由数据包通过 `entity_talk` 文件格式提供。

## 阅读路线

1. [快速上手](01_getting_started)：模组添加了什么、没有添加什么，以及如何看到第一个选项。
2. [选项列表与操作](02_option_list_and_controls)：屏幕列表、交互键、滚动、强制显示与锁定选项。
3. [实体对话数据包](03_entity_talk)：把具名实体变成命令触发器的 `entity_talk` JSON 格式。
4. [占位符](04_placeholders)：可用于选项名称与命令的 `<...>` 占位符。
5. [配置](05_configuration)：控制列表位置与尺寸的五个客户端选项。
6. [开发者 API](06_developer_api)：`@InteractionAutoRegister`、`InteractionRegister` 与 `Interaction` 构建器。
7. [网络与服务器注意事项](07_networking_and_server_notes)：数据包、同步，以及服主安装前必须了解的内容。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID / 命名空间 | `extra_interaction` |
| 物品 / 方块 / 实体 / 菜单 | 均未注册 |
| 创造模式选项卡 | 无 |
| 配方 / 战利品表 / 标签 | 无 |
| 命令 | 无 |
| 默认按键 | `F` —— `key.extra_interact.interact`，位于「游戏内」分类 |
| 配置 | 仅客户端，`extra_interaction_client.toml` |
| 数据包接口 | `data/<namespace>/extra_interaction/entity_talk/*.json` |
| 网络数据包 | `extra_interaction:send_interaction`（发往服务端）、`extra_interaction:send_talk_data`（发往客户端） |
| 重载监听器 | `extra_interaction:entity_talk` |
| 许可证 | MIT |

::: info
本组页面记录的一切均来自当前检出的源码及其随附资源。模组自带的示例交互类整份处于注释状态，因此全新安装在数据包或其他模组提供内容之前**不会**有任何交互项。
:::
