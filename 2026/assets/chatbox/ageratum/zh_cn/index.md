---
title: "ChatBox（对话框）"
navigation:
  title: "ChatBox（对话框）"
---

# ChatBox（对话框）

ChatBox（`chatbox`）为 Minecraft 加入一套视觉小说式对话系统。数据包描述对话内容 —— 说话者名称、正文、立绘、选项、音效、视频、动画与命令 —— 模组则把它渲染成一个可交互的完整界面，或一层可以边玩边看的覆盖层。

模组**不注册任何物品、方块、实体、配方或创造模式选项卡**。全部功能由一个命令根、两个数据包目录和一个客户端渲染器驱动。

## 阅读路线

1. [快速上手](01_getting_started)：模组做什么、需要什么，以及随包演示。
2. [命令](02_commands)：完整的 `/chatbox` 命令树。
3. [对话文件](03_dialogue_files)：`chatbox/dialogues` JSON 格式逐字段说明。
4. [主题与组件](04_themes_and_components)：`chatbox/theme` 格式、立绘类型与布局字段。
5. [事件与条件](05_events_and_conditions)：渲染事件、触发时机与完整事件类型表。
6. [MVEL 与占位符](06_mvel_and_placeholders)：内联表达式、目标占位符、暴露的方法与变量。
7. [玩家操作](07_player_controls)：界面模式、覆盖层模式、按键、按钮、历史记录与调试模式。
8. [触发与持久化](08_triggers_and_persistence)：进度判据、触发次数与存档数据。
9. [配置与兼容性](09_configuration_and_compat)：客户端选项、加载器与可选模组。
10. [网络与服务器注意事项](10_networking_and_server_notes)：数据包，以及服主必须先了解的内容。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID / 命名空间 | `chatbox` |
| 模组版本 | `1.1.4` |
| 物品 / 方块 / 实体 / 配方 / 创造页 | 均未注册 |
| 命令根 | `/chatbox`，需要游戏管理员权限（`2`） |
| 对话数据 | `data/<namespace>/chatbox/dialogues/*.json` |
| 主题数据 | `data/<namespace>/chatbox/theme/*.json` |
| 重载监听器 | `chatbox:chatbox/dialogues`、`chatbox:chatbox/theme` |
| 存档数据 | `chatbox:chatbox_trigger_count` |
| 客户端配置 | `chatbox_config`（Cloth Config / AutoConfig） |
| 加载器 | 同一套公共源码同时构建 Fabric 与 NeoForge |
| Minecraft | `26.1.2`，接受范围 `[26,27)` |
| 必需依赖 | `cloth_config`（NeoForge 侧声明为 required） |
| 可选依赖 | `watermedia`（仅视频播放） |
| 许可证 | `GPL-3.0 license` |
| 作者 | zhenshiz、Amotassic |

::: danger
在公开服务器安装之前，请先读[网络与服务器注意事项](10_networking_and_server_notes)。有两条客户端到服务端的数据包会接收一个字符串并直接据此行动，且不做任何权限检查：一条以游戏管理员权限执行命令，另一条在服务端编译并求值 MVEL 表达式。
:::
