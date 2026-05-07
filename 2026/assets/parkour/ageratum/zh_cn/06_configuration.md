---
title: "配置"
navigation:
  title: "06 配置"
---

# 配置

模组注册了一个 NeoForge 服务端配置和一个客户端配置。服务端类别为 `online_settings`、`locomotion_settings`、`swimming_settings` 和 `wall_movement_settings`。

## 在线设置

| 键 | 默认值 | 说明 |
|:---|:---|:---|
| `removeSpeedLimits` | `false` | 关闭大部分服务端移动速度限制/回弹；源码注释提示这也会让服务器上更容易作弊 |

## 地面移动设置

| 键 | 默认值 | 说明 |
|:---|:---|:---|
| `enableOmniSprint` | `true` | 允许从侧向/后向输入开始疾跑 |
| `enableCrawl` | `true` | 启用翻滚/滑铲键爬行 |
| `enableSlide` | `true` | 启用滑铲和后撤步 |
| `slideCooldown` | `12` | 滑铲/后撤步冷却，单位 tick |
| `slideBoostSpeed` | `0.7` | 滑铲推进速度 |
| `enableTapStrafing` | `true` | 空中滑铲时转向实际移动方向 |
| `enableLandingRoll` | `true` | 启用落地翻滚 |
| `landingRollWindow` | `6` | 落地翻滚输入窗口，单位 tick |
| `enableMoveSpeedIncrease` | `true` | 启用移动速度修正 |
| `walkSpeedMultiplier` | `1.3` | 行走速度倍率 |
| `sprintSpeedMultiplier` | `1.3` | 疾跑速度倍率 |
| `enableStepHeightIncrease` | `true` | 启用步高修正 |
| `walkStepHeight` | `0.6` | 行走步高，单位方块 |
| `sprintStepHeight` | `1.1` | 源码默认值为 `1.1`，当前英文提示文本写的是 `1.0` |
| `enableSafeFallHeightIncrease` | `true` | 扩展安全坠落高度 |
| `safeFallHeight` | `6.0` | 视为安全的坠落距离 |

## 游泳移动设置

| 键 | 默认值 | 说明 |
|:---|:---|:---|
| `enableShallowSwimming` | `true` | 在水中疾跑进入游泳 |
| `enableSwimmingBoost` | `true` | 启用游泳推进 |
| `swimmingBoostSpeedMultiplier` | `0.4` | 推进速度倍率 |
| `swimmingBoostCooldown` | `12` | 推进冷却，单位 tick |
| `enableFreestyle` | `true` | 让玩家保持在水面 |
| `enableStopSwimmingWhenIdle` | `true` | 无前进输入时停止游泳 |

## 墙面移动设置

| 键 | 默认值 | 说明 |
|:---|:---|:---|
| `canClimbMoreBlocks` | `true` | 启用 `#parkour:climbable` 攀爬 |
| `enableUpClimbSpeedIncrease` | `true` | 提高向上攀爬速度 |
| `upClimbSpeedMultiplier` | `1.25` | 向上攀爬速度倍率 |
| `enableClimbDownSpeedIncrease` | `true` | 向下看时提高向下攀爬速度 |
| `downClimbSpeedMultiplier` | `2.0` | 向下攀爬速度倍率 |
| `enableClimbAccelerationOverTime` | `true` | 攀爬速度随时间提升 |
| `upClimbAccelerationMultiplier` | `2.0` | 60 tick 内的向上加速目标 |
| `downClimbAccelerationMultiplier` | `1.5` | 60 tick 内的向下加速目标 |
| `climbableBlockNotSlowDown` | `true` | 在地面或跳跃时，可攀爬方块不减速水平移动 |
| `enableWallRun` | `true` | 启用墙跑 |
| `wallRunDuration` | `30` | 墙跑持续时间，单位 tick |
| `enableWallSlide` | `true` | 启用墙滑 |
| `enableWallJump` | `true` | 启用蹬墙跳 |
| `enableArmhang` | `true` | 启用垂挂 |
| `armhangMoveSpeed` | `0.15` | 垂挂横向移动速度 |
| `armhangResetWallClimb` | `true` | 垂挂时重置爬墙状态 |
| `enableSupportWallJump` | `true` | 启用垂挂状态的撑墙跳 |
| `enableSpeedVault` | `true` | 启用速过 |
| `enableWallClimb` | `true` | 启用爬墙 |
| `wallClimbDuration` | `20` | 爬墙持续时间，单位 tick |
| `wallClimbSpeed` | `0.2` | 爬墙向上速度 |

## 客户端设置

| 键 | 默认值 | 说明 |
|:---|:---|:---|
| `enableParkour` | `true` | 本地跑酷模式偏好，由客户端切换并保存 |

## 源码备注

配置键 `swimmingBoostCooldown` 在生成的配置树中拼写正确，尽管内部 Java 字段名为 `SWMMING_BOOST_COOLDOWN`。跳跃力度 `+0.01` 恒定生效，没有配置键。静态配置缓存会随 `ModConfigEvent` 的加载/重载流程刷新。

[返回首页](index)
