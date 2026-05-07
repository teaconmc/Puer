---
title: 配置
navigation:
  title: 配置
description: 服务端与客户端配置文件，以及支配每个动作的双重门控规则。
---

# 配置

「动量」注册了**两份**配置规格：一份 `SERVER` 规格与一份 `CLIENT` 规格。可从模组列表打开配置界面。

## 双重门控规则

十七个动作开关**被定义了两次**——在服务端文件与客户端文件中，以完全相同的名称位于 `function_switches` 小节下。每个状态都用逻辑与来测试它们：

> 动作只有在**服务端开关**与**客户端开关**都启用时才会运行。

其设计意图是清晰的权限划分：

- **服务端**那份是硬性禁止。关闭后，服务器上每位玩家都无法使用该动作。
- **客户端**那份是个人偏好。玩家可在本地关闭个别动作，而不影响他人。

实际后果是：某处不对劲时，第一件要检查的事就是——某个动作毫无反应，通常是在你没查看的那一侧被禁用了。两份文件出厂时十七个开关都是 `true`。

十七个开关分别是：`enableProne`、`enableSlide`、`enableBreakFallReady`、`enableBreakFall`、`enableDodge`、`enableWallClimb`、`enableWallSlide`、`enableWallRun`、`enableWallHang`、`enablePowerJump`、`enableWallKick`、`enableVaultUp`、`enableVaultIn`、`enableWaterRun`、`enableWaterPush`、`enableFallSlow`、`enableAirJump`。

## 服务端配置

`function_settings` 小节：

| 键 | 类型 | 默认 | 范围 | 说明 |
|:---|:---|:---|:---|:---|
| `allowManeuverWithoutThruster` | 布尔 | `true` | — | 为 false 时，没有喷气助推器则一切失效 |
| `maneuverConsumeHunger` | 布尔 | `false` | — | 机动是否额外消耗饥饿值 |
| `defaultEnableManeuver` | 布尔 | `true` | — | 全新玩家的初始机动状态 |
| `maneuverConsumeHungerAmount` | 双精度 | `0.01` | 0.0 – 1.0 | 每个机动刻的疲劳消耗 |
| `boosterStaminaReduction` | 双精度 | `1.0` | 0.0 – 1.0 | 佩戴助推器时的体力折扣；1.0 为完全豁免 |
| `minSlideSpeed` | 双精度 | `4.0` | 1.0 – 100.0 | 起滑所需米/秒；**未疾跑时翻倍** |
| `minWallRunSpeed` | 双精度 | `4.0` | 1.0 – 100.0 | 起跑墙所需米/秒——注释声称 `6.0` |
| `minWaterSwimSpeed` | 双精度 | `10.0` | 1.0 – 100.0 | 维持水上漂所需米/秒 |
| `slideAccelerationCooldown` | 整数 | `20` | 0 – 200 | 刻 |
| `airDodgeCooldown` | 整数 | `40` | 0 – 200 | 每层闪避充能的刻数 |
| `airDodgeStorage` | 整数 | `2` | 0 – 10 | 可储存的闪避充能 |
| `airFriction` | 双精度 | `0.998` | 0.0 – 1.0 | 替换原版的 `0.91` |
| `climbBoostMultiplier` | 双精度 | `3.0` | 0.0 – 10.0 | 疾跑时的梯子速度 |
| `wallKickAccelerationCooldown` | 整数 | `20` | 0 – 200 | 刻 |

`function_switches` 小节：上述十七个布尔值，全部 `true`。

## 客户端配置

顶层：

| 键 | 默认 | 含义 |
|:---|:---|:---|
| `enableCameraOffset` | `true` | 相机倾斜与视场角偏移 |
| `enableDodgeDirDouble` | `true` | 闪避方式 1：按住疾跑 + 双击方向 |
| `enableDodgeSprintClick` | `false` | 闪避方式 2：按住方向 + 按下疾跑 |
| `enableDodgeSprintDouble` | `false` | 闪避方式 3：按住方向 + 双击疾跑 |

`key_hints` 小节：[06 操作与 HUD](06_controls_and_hud.md) 中记录的八个覆盖层选项。

`function_switches` 小节：同样的十七个布尔值，全部 `true`。

## 注释与默认值不一致之处

有两个选项随包的默认值与自己的注释相矛盾。注册的值才生效；注释已过时。

| 键 | 注释声称 | 实际注册 |
|:---|:---|:---|
| `minWallRunSpeed` | `6.0` | **`4.0`** |
| `fadeInSpeed` | `0.08` | **`0.01`** |

若你正在调整墙跑，请注意实际门槛比文件中的说明更低——墙跑比预期更容易触发。

## 哪一侧掌握哪些值

只有开关是重复的。每一个**数值**调优项都只存在于服务端文件中，包括那些感觉上属于客户端的项，例如 `airFriction` 与闪避冷却。客户端无法在本地放宽它们；物理数值由服务端说了算。

客户端文件独占的是相机偏移、三种闪避触发方式，以及提示覆盖层。

[返回首页](index)
