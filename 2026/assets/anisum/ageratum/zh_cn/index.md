---
title: 八角
navigation:
  title: 八角
---

# 八角（Anisum）

八角（mod id `anisum`，版本 `0.0.1`）是一个 NeoForge 伴生模组，把数据驱动的战利品表转化为创造模式选项卡，并从服务端同步到每个客户端。由 Gugle 在 `dev.anvilcraft.resource` 下开发，目标环境为 Minecraft `[26.1,26.2)`、NeoForge 26+ 与 Loader 4+，许可证为 GNU LGPL 3.0。它自身不注册任何物品、方块、实体或配方；选项卡中展示的是资源包通过八角配置与战利品表选定的既有物品。

## 八角做什么

- **从数据创建额外的创造模式选项卡** —— 服务端从数据包读取战利品表，对匹配配置 include 模式的战利品表，把产出的物品堆附加到对应选项卡；客户端重建创造模式注册表，并把八角选项卡放在「工具与实用物品」之前。
- **可配置的选项卡定义** —— 每个选项卡（`AnisumConfig`）拥有 location、显示名、图标（`ItemStackTemplate`，默认为屏障）以及支持完整路径、通配符与正则表达式的 include/sort 列表。
- **实时网络同步** —— 服务端完成数据包加载后，先发送同步开始载荷，再为每个选项卡发送一个载荷；后加入的玩家也会收到同样的同步。
- **实验性并排布局** —— 一个客户端选项可将创造模式选项卡与玩家物品栏并排放置。
- **集成钩子** —— `AnisumTabClearEvent` / `AnisumTabLoadedEvent` 事件、JEI 运行时素材同步与 Better Creative Tabs 支持，让其它工具在选项卡重建后保持一致。

## 阅读路线

- [获取开始](01_getting_started) —— 运行前提、选项卡定义、匹配与排序、客户端配置、网络同步与集成。

## 注册表说明

- 八角自身不注册物品、方块、实体、配方、命令或世界生成；其选项卡中展示的物品是所引用战利品表产出的既有物品。
- 唯一客户端配置项为 `placeSideBySideInventoryAndCreativeTabs`（实验性，默认关闭）。

## 参考快照

| 项目 | 值 |
|:---|:---|
| 模组 ID | `anisum` |
| 显示名称 | 八角（Anisum） |
| 版本 | `0.0.1` |
| 许可证 | GNU LGPL 3.0 |
| 目标环境 | Minecraft `[26.1, 26.2)`、NeoForge `[26,)`、Loader `[4,)` |
| 必需依赖 | 仅 NeoForge 与 Minecraft（Anvillib 通过 JarJar 内嵌） |
| 运行时兼容 | JEI、Better Creative Tabs |
| 配置文件 | `anisum-client.toml`（客户端） |
| 命令 | 无注册命令 |
