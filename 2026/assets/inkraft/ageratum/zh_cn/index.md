---
title: "墨迹工艺"
navigation:
  title: "墨迹工艺"
---

# 墨迹工艺

墨迹工艺（`inkraft`）把 **ink** 叙事脚本语言嵌入 Minecraft。你用 ink 写一个分支故事、编译它、放进数据包，墨迹工艺便为玩家运行它：成段的叙述、选项、可持久化的变量，以及能伸手触及游戏世界的故事函数。

它不注册任何物品、方块或配方。它是一个引擎加两条命令。

## 阅读路线

1. [快速上手](01_getting_started)：这个引擎是给谁的、两条命令，以及为什么收录前要先询问。
2. [故事与数据包](02_stories_and_datapacks)：故事放在哪里、必须是编译后的 `.ink.json`，以及重载行为。
3. [命令与权限](03_commands_and_permissions)：两棵命令树以及每个分支上的精确权限门槛。
4. [故事函数](04_story_functions)：你的 ink 脚本可调用的完整目录。
5. [变量与存储](05_variables_and_storage)：值类型、持久化与变量命令。
6. [安全与服务器注意事项](06_security_and_server_notes)：一份故事脚本被允许对你的服务器做什么。

## 快速说明

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID / 命名空间 | `inkraft` |
| 显示名称 | Inkraft |
| 版本 | `1.2.0` |
| 作者 | qyl27 |
| 声明的许可证 | `PolyForm Shield 1.0.0` |
| 平台 | **Fabric 与 NeoForge**（Architectury 多加载器） |
| Minecraft | `26.1.2` |
| 新增注册表 | **1 个** —— `inkraft:story_functions` |
| 物品 / 方块 / 实体 / 配方 | **均无** |
| 命令 | 2 个根 —— `/inkraft` 与 `/variables` |
| 故事来源路径 | `data/<命名空间>/inkraft_story/**.ink.json` |
| ink 引擎 | blade-ink `1.3.2` |
| 文本层 | Adventure platform `6.9.0`（已声明的依赖） |
| 随包故事 | **没有** —— 仓库里的 `.ink` 文件只是文档与测试 |

::: warning
全新安装**没有任何可玩内容**。墨迹工艺是供他人编写的故事所用的运行时；没有数据包提供编译好的故事，就完全没有内容。请把它当作脚本 API 而不是玩法模组来规划。
:::

::: danger
故事脚本可以执行任意命令，而四个命令函数中有两个无论由谁触发都以**所有者等级（4 级）**运行 —— 其中一个还会抑制输出。在你并非亲自掌控每一个数据包的服务器上安装它之前，请先读[安全与服务器注意事项](06_security_and_server_notes)。
:::
