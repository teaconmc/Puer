---
title: "最后的上勾拳（One Last Rising Uppercut）"
navigation:
  title: "最后的上勾拳（One Last Rising Uppercut 465）"
---

# 最后的上勾拳（One Last Rising Uppercut）

最后的上勾拳（模组 ID `olru`，英文名 One Last Rising Uppercut）是一个 NeoForge 战斗模组，围绕两件不可堆叠拳套：传世经典（`olru:legacy_prime`）与荷鲁斯遗辉（`olru:legacy_of_horus`）。每件拳套有五个技能位：左键攻击、右键长按技能、两个按键技能与一个条件充能的终极技。技能状态保存在玩家身上并同步到客户端；位移类技能由客户端模拟、再由服务端重新校验。

当前版本为 `0.0.1-alpha`，面向 Minecraft 26.1.2 与 NeoForge 26.1.2.36-beta。

## 阅读路线

1. [拳套与技能资源](01_gauntlets_and_resources)：两件拳套、创造模式获取方式，以及充能、冷却与终极技的运行方式。
2. [传世经典技能](02_legacy_prime)：手炮、火箭重拳、上勾拳、裂地重拳与毁天灭地。
3. [荷鲁斯遗辉技能](03_legacy_of_horus)：生化药弹、辅助撤离、镇静飞针、生物手雷与纳米激励。
4. [按键与 HUD](04_controls_and_hud)：默认按键、游戏内技能 HUD 与提示文本。
5. [服务端配置](05_configuration)：全部配置键、默认值与范围。
6. [移动任务与网络](06_movement_and_network)：移动技能如何经网络模拟与校验。
7. [注册面与兼容性](07_registry_and_compat)：注册 ID、伤害类型与依赖边界。

## 速览

| 项目 | 当前实现 |
|:---|:---|
| 模组 ID | `olru` |
| 版本 | `0.0.1-alpha` |
| 作者 | MarbleGate |
| 物品 | `olru:legacy_prime`、`olru:legacy_of_horus` |
| 实体 | `olru:biotic_grenade` |
| 创造标签 | `olru:gauntlets_tab` |
| 伤害类型 | 9 个已注册 `olru:*` 伤害类型 |
| 玩家附件 | `olru:gauntlet_state` |
| 实体标签 | `olru:player_allies`（默认 `minecraft:villager`） |
| 配置类型 | 服务端配置（`olru-server.toml`） |
| 配方 / 命令 / 方块 / 音效 | 均未注册 |

**注意：** 当前源码中两件拳套都没有合成配方、战利品掉落或其他生存模式获取途径，只能从 `OLRU：拳套` 创造标签中取得。
