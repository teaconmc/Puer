---
title: "快速上手"
navigation:
  title: "01 快速上手"
---

# 快速上手

认识女仆最快的方式是使用**女仆刷怪蛋**（`touhou_little_maid:maid_spawn_egg`）。妖精刷怪蛋可以召唤更稀有的妖精伙伴，妖精也会在世界中自然生成在地面上。

## 拥有女仆

1. 用刷怪蛋生成一只女仆。
2. 空手右键她：女仆把交互委托给 misc 管理器，由它处理抱取、命令与装备交互。
3. 女仆会把好感度、聊天气泡状态与 AI 聊天数据连同家的位置与半径一起写入存档数据。

女仆 AI 由多个管理器驱动：任务管理器负责工作与家模式，好感度管理器、AI 聊天管理器与聊天气泡管理器各司其职。`isHomeModeEnable()` 决定女仆是否留在家的附近（`setHomeTo(pos, distance)` 设置家）；`getHomeRadius()` 限定她的工作范围。

## 储存与携带女仆

智能存储板（smart slab）系列可以把女仆压缩成便于携带的物品：

- `smart_slab_init` —— 仍需初始化的存储板。
- `smart_slab_empty` —— 已就绪的空存储板，可以存入女仆。
- `smart_slab_has_maid` —— 已装载女仆的存储板，对地面右键即可放出女仆。

背包分为三种尺寸（`maid_backpack_small`、`maid_backpack_middle`、`maid_backpack_big`），装备在女仆身上可扩展她的物品栏。

## 祭坛合成系统

**祭坛**（`touhou_little_maid:altar`）方块承载了一种自定义配方类型（`touhou_little_maid:altar`）。生成的祭坛配方描述配料（如 `#c:rods/wooden` 之类的物品标签或 `minecraft:paper` 之类的普通物品）、所需的灵力值（例如 `0.15`）、来源实体与合成结果。模组大多数物品——御币、饰品、床、通过 `reborn_maid` 复活的女仆、生成箱与召唤闪电——都通过祭坛配方获得，因此祭坛是模组的核心进阶机器。

普通有序与无序配方覆盖两种御币、染色换床色、椅子和实体 ID 复制工具。

## 模型、饰品与工具

- **模型切换**：`garage_kit` 与 `model_switcher` 方块加上 `chisel` 凿子管理女仆模型外观；`chair` 与 `chair_show` 处理椅子模型。
- **饰品**：六种防护饰品分别减免爆炸（32 次）、火焰（128）、弹射物（64）、魔法（128）、摔落（32）与溺水（64）伤害；`ultramarine_orb_elixir`（6 次）与 `nimble_fabric`（64 次）是特殊饰品，`item_magnet_bauble` 与 `mute_bauble` 则是永久饰品。
- **工具**：相机（50 次耐久）拍摄照片，灭火器（128 次耐久）扑灭火焰，河童罗盘用于定位，两张狐狸卷轴、侍铃与喇叭用于召回或召唤伙伴。

## 命令与配置

根命令为 `/tlm`，需要管理员权限（`Commands.LEVEL_GAMEMASTERS`）。子命令：`pack`、`power`、`maidnum`、`maiddebug`、`aichat`、`maid`、`backup`。

服务端配置包括 `ClientPackDownloadUrls`、`MaidAITimeDebug`、`MaidBackupIntervalSeconds`（默认 180）与 `MaidBackupMaxCount`（默认 3）。女仆行为在 maid 小节中调整：全局语音频率（默认 100）、聊天气泡开关（默认开启）、工作/空闲/睡眠/离家范围、弓/弩/弹幕/三叉戟射程、枪械识别距离（64/48/32）、喂食上限、模型更换、五子棋仅限主人、单人女仆上限、替换 Allay 的概率，以及表情权重、背包黑名单、攻击忽略列表与餐食黑名单。

[返回车万女仆首页](index)