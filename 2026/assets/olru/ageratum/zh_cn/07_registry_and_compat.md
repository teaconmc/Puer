---
title: "注册面与兼容性"
navigation:
  title: "注册面与兼容性"
---

# 注册面与兼容性

## 已注册表面

| 注册表 | ID |
|:---|:---|
| 物品 | `olru:legacy_prime`、`olru:legacy_of_horus` |
| 实体类型 | `olru:biotic_grenade` |
| 创造标签 | `olru:gauntlets_tab` |
| 伤害类型 | 下列 9 个 `olru:*` 类型 |
| 附件 | `olru:gauntlet_state` |
| 实体类型标签 | `olru:player_allies` |

模组**没有**注册方块、方块实体、配方、进度、音效、命令、世界生成、战利品表或结构。空的 mixin 配置不声明任何 mixin，也没有访问转换器。

## 伤害类型

所有伤害类型使用 `scaling: when_caused_by_living_non_player` 与 `exhaustion: 0.1`，注册路径如下：

| 伤害类型 | 效果 |
|:---|:---|
| `olru:legacy_prime_hand_cannon` | hurt |
| `olru:legacy_prime_rocket_punch` | hurt |
| `olru:legacy_prime_rocket_punch_wall_impact` | hurt |
| `olru:legacy_prime_rising_uppercut` | hurt |
| `olru:legacy_prime_seismic_slam` | hurt |
| `olru:legacy_prime_meteor_strike` | hurt |
| `olru:legacy_of_horus_biotic_round` | hurt |
| `olru:legacy_of_horus_sedative_dart` | poking |
| `olru:legacy_of_horus_biotic_grenade` | hurt |

中英文语言文件都提供了死亡消息。

## 友方实体标签

`olru:player_allies` 是一个 `#entity_type` 标签。当前数据文件只包含 `minecraft:villager`。`GauntletHelper.isFriendly` 在判断荷鲁斯遗辉治疗或忽略哪些目标时，会把它与「自己」和「任意玩家」一起使用。

## 生物手雷实体

`olru:biotic_grenade` 以 `MobCategory.MISC` 注册，碰撞箱 0.35 × 0.35，客户端追踪范围 64 格、更新间隔 2 tick。客户端使用原版投掷物渲染器，以喷溅药水作为默认物品。它只由荷鲁斯遗辉技能三生成；没有刷怪蛋，也不会自然生成。

## 依赖与元数据

- Minecraft：必需 `[26.1.2]`
- NeoForge：必需 `[26.1.2.36-beta,)`
- 未声明可选、不兼容或跨模组集成依赖。
- 开发构建会把 `ToroHealth-Continued 1.5.1-beta` 加入本地运行 classpath；它只是开发运行时，不是 `neoforge.mods.toml` 中的模组依赖。
- 元数据：作者 `MarbleGate`，许可证 `See License files`，版本 `0.0.1-alpha`，Java 25 toolchain。

## 当前源码注意事项

- 传世经典没有友伤过滤：瞬发命中、锥形、裂地与流星伤害都可能命中其他玩家，而且毁天灭地充能事件不排除友方目标。
- 荷鲁斯遗辉把所有玩家视为友方，因此其直接作战工具不会伤害玩家，除非其他模组改变实体行为。
- 拳套输入只认主手，即使状态创建也会扫描整个物品栏；副手持拳套不会获得技能操作。
- 当前源码中两件拳套都没有生存获取途径，创造标签是唯一注册来源。
- 辅助撤离在服务端按下右键开始时就会消耗技能冷却。

[返回首页](index)
