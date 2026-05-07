---
title: 无穷桌游
navigation:
  title: 无穷桌游
---

# 无穷桌游（Infinite Board Games）

「无穷桌游」是 MaxPixelStudios（XiaoPangxie732）的 TeaCon 2026 参赛作品，组 ID 为 `cn.maxpixel.mods`，面向 Minecraft 26.1.2 与 NeoForge 26.1.2.76。当前检出的源码版本为 `0.1`，采用 MIT 许可，模组 ID 为 `infinite_board_games`。

## 当前源码状态

本次检出是一份**未经改动的 NeoForge MDK 骨架**：模组构造器中的每一个注册调用都被注释掉。示例字段与类确实存在，但**模组加载时什么都不会被注册**。

- `InfiniteBoardGamesMod` 声明了方块、物品与创造分页的延迟注册表。
- `EXAMPLE_BLOCK`（`infinite_board_games:example_block`）、`EXAMPLE_BLOCK_ITEM` 与 `EXAMPLE_ITEM`（`infinite_board_games:example_item`，营养 1、饱和度系数 2 的食物物品）以字段形式定义。
- `EXAMPLE_TAB`（`infinite_board_games:example_tab`）定义为置于战斗选项卡之后的创造分页。
- `Config` 定义了 `logDirtBlock`、`magicNumber`、`magicNumberIntroduction` 与一个 `items` 列表，但该规格从未以任何 `ModConfig` 类型注册。

由于构造器注释掉了 `BLOCKS.register(...)`、`ITEMS.register(...)`、`CREATIVE_MODE_TABS.register(...)`、`NeoForge.EVENT_BUS.register(this)`、创造页内容监听器以及 `modContainer.registerConfig(...)`，以上内容全部不生效。客户端类同样注释掉了配置界面扩展点与客户端初始化监听器。

## 实际运行的部分

只有构造器会执行。游戏不会获得任何方块、物品、创造分页、实体、命令、配方、按键、配置文件或事件处理程序。`commonSetup`、`addCreative` 与 `onServerStarting` 因监听器与注解被注释而成为不可达的死代码。

完全没有数据文件 —— 没有配方、标签、成就或战利品表 —— 也没有 `src/generated` 输出。同样没有模型、blockstate 或纹理。唯一随包发布的资源是模板 `en_us.json`；**没有 `zh_cn.json`**。

## 关于声明的目标

`README.md` 与 `neoforge.mods.toml` 的 `description` 字段都写明，本模组「旨在提供一套强大的数据驱动 API，用来实现任何你想要的桌游」，并用世界内交互取代 GUI 交互。这**仅是设想中的设计目标**。当前检出中不存在任何桌游、API、数据格式或交互，因此本指南不会描述其中任何内容。

## 阅读路线

- [01 开发骨架](01_development_skeleton.md) —— 只声明却未注册的示例内容、模板语言文件、未激活的配置键，以及这一切为何保持失效。

## 一览

| 关注点 | 详情 |
|:---|:---|
| 模组 ID / 名称 | `infinite_board_games` / Infinite Board Games，v0.1，MIT |
| 作者 / 组 ID | MaxPixelStudios（XiaoPangxie732）/ `cn.maxpixel.mods` |
| 版本目标 | Minecraft 26.1.2 / NeoForge `[26.1.2.75,)` |
| 已注册物品 | **无** |
| 已注册方块 | **无** |
| 已注册创造分页 | **无** |
| 生效的配置文件 | **无** |
| 命令 / 按键 / 实体 | 无 |
| 配方 / 标签 / 成就 | 无 |
| 随包语言 | 仅 `en_us`，且为模板字符串 |

专题较少是为了与源码事实完全一致，而不是隐瞒了未记录的玩法。只有后续版本真正注册了桌游内容之后，才应继续扩展本目录。
