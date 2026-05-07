---
title: "状态效果"
navigation:
  title: "状态效果"
---

# 状态效果

我的尖塔注册了 11 个自定义状态效果。多数只是附加属性修饰符的薄封装，少数则把真正的逻辑写在事件监听器里。

## 注册总览

| 效果 ID | 类别 | 颜色 | 显示等级 | 机制 |
|:---|:---|:---|:---|:---|
| `minethespire:mind_bloom` | 有害 | `#461255` | 否 | 事件逻辑 |
| `minethespire:fairy_blessing` | 有益 | `#17D8B3` | 否 | 事件逻辑 |
| `minethespire:focus_boost` | 有益 | `#D4B6FF` | 是 | 属性修饰符 |
| `minethespire:plasma_charge` | 有益 | `#B875FF` | 是 | 属性修饰符 |
| `minethespire:barricade` | 有益 | `#8FA6AA` | 否 | 属性修饰符 |
| `minethespire:intangible` | *（未设置）* | `#74F0C8` | 否 | 事件逻辑 |
| `minethespire:quick_block` | 有益 | `#70836F` | 否 | 瞬时效果 + 修饰符 |
| `minethespire:serpent_speed` | 有益 | `#69B95A` | 否 | 属性修饰符，**已弃用** |
| `minethespire:vulnerable` | 有害 | `#C85A5A` | 否 | 事件逻辑 |
| `minethespire:venin` | 有害 | `#4E8D34` | 是 | 事件逻辑 |
| `minethespire:vigor` | 有益 | `#FFCB48` | 是 | 属性修饰符 + 事件逻辑 |

`intangible` 是唯一注册时既未调用 `isBeneficial()` 也未调用 `isHarmful()` 的效果，因此它使用构建器的默认类别，而非明确选定的类别。

## 属性驱动的效果

| 效果 | 属性 | 数值 | 运算 |
|:---|:---|:---|:---|
| 集中提升 | `minethespire:focus` | +1.0（固定值，不随等级变化） | 加值 |
| 等离子充能 | `minethespire:orb_passive_speed` | +0.5（固定值，不随等级变化） | 加值 |
| 壁垒 | `minethespire:blocking_value_change_rate` | +0.5（固定） | 加值 |
| 快速格挡 | `minethespire:blocking_value_change_rate` | `等级 + 1.5` | 加值 |
| 蛇之迅捷 | `minecraft:movement_speed` | +30 % | 乘算总量 |
| 活力 | `minecraft:attack_damage` | `等级 + 1` | 加值 |

请注意：**集中提升与等离子充能使用的是固定值，而非按等级递增的值**，尽管两者都以 `renderLevel()` 注册、游戏会显示等级数字。因此集中提升 II 提供的 focus 与集中提升 I 完全相同，强化型集中药水在功能上与普通版一致。

壁垒的 +0.5 恰好抵消默认的 `blocking_value_change_rate`（−0.5），这就是它冻结格挡值衰减的原理。详见 [07 格挡值与 HUD](07_hud_and_blocking)。

蛇之迅捷在源码中被标记为 `@Deprecated`，且没有任何代码施加它——蛇之戒指现在改为授予原版速度 II。

## 心灵绽放

模组中最严酷的效果。

- 拥有心灵绽放期间，**一切治疗都会被取消**（`LivingHealEvent`）。
- 心灵绽放**无法被移除、也不会过期**：只要实体尚未死亡或濒死，`MobEffectEvent.Remove` 与 `MobEffectEvent.Expired` 都会被取消。牛奶、`/effect clear`、以及持续时间自然耗尽全都无效。
- 唯一预期的解除方式是 `/mts clearMindBloom`，它会设置一个静态标志，在命令执行期间告知监听器允许移除。
- 当服务端配置 `fierce_mind_bloom` 启用时（**默认 `true`**），还会追加两条限制：
  - `LivingUseTotemEvent` 被取消，因此不死图腾不会救你。
  - 连那些绕过正常治疗流程、直接设定生命值的来源也会被拦住，因此其他模组的效果同样无法绕过它。

`ON_CMD_CLEAR` 标志是效果类上的一个普通静态 `volatile boolean`，由整个服务端共用。它在移除循环之前立即置位、之后立即清除。

## 精灵庇护

一次性的免死效果。当你将要死亡时：

1. 移除精灵庇护。
2. 生命值被设为最大生命值的 **30 %**。
3. 施加 40 tick 的原版抗性提升 IV。
4. 播放 `TOTEM_USE`，并生成 80 个萤火虫粒子与 60 个快乐村民粒子。

精灵庇护还会**无条件**取消 `LivingUseTotemEvent`，因此在它生效期间，不死图腾会被压制，改由较弱的精灵庇护接管。死亡监听器中精灵庇护的检查排在蜥蜴尾巴**之前**，所以两者都有时会先消耗精灵庇护。

获取途径是瓶装精灵药水——见 [05 药水与酿造](05_potions_and_brewing)。

## 无实体

拥有无实体期间，任何超过 `1.0` 的来袭伤害都会被压到恰好 `1.0`。唯一的例外是 `minecraft:generic_kill`。1.0 及以下的伤害原样通过。

这是一个固定上限而非百分比：它让你几乎免疫单次大额打击，但对密集的小额连击依然脆弱。获取方式是食用**灵体**（5 分钟）。

## 易伤

将来袭伤害乘以 `1 + 0.25 × (等级 + 1)`。

| 游戏内等级 | 倍率 |
|:---|:---|
| I（amplifier 0） | ×1.25 |
| II（amplifier 1） | ×1.5 |
| III（amplifier 2） | ×1.75 |

它在 `LivingDamageEvent.Pre` 中于格挡值吸收**之前**应用，因此格挡值需要承受的是已被放大后的伤害。

## 蛇毒

一种在到期时结算并层层递减的毒素。当一个蛇毒实例到期时：

1. 造成 `等级 + 1` 点原版 `minecraft:magic` 伤害。
2. 若该等级大于 1 且实体存活，则**以低一级的强度重新施加自身** 100 tick，并取消这次到期事件。

因此蛇毒 III 会先造成 3 点伤害，再 2 点，再 1 点，跨越连续的 5 秒窗口——大约 15 秒内合计 6 点伤害。伤害只在到期时结算，从不逐 tick 造成。

## 活力

提供 `等级 + 1` 点固定攻击伤害。它会被**攻击行为消耗**：`tryRemoveVigorOnAttack` 在 `LivingIncomingDamage` 中运行，会同时从伤害来源的所属实体和直接实体身上移除活力。

赤牛授予的活力等级为 amplifier 7（显示为活力 VIII，即 +8 攻击伤害），且持续时间为**无限**（`-1`），因此它会一直保留，直到你的下一次攻击把它消耗掉。

由于移除逻辑同时检查直接实体，你射出的弹射物也可能消耗发射者的活力。

## 快速格挡

这是一个 `InstantenousMobEffect`。施加它会安排一个真实的快速格挡实例，其持续时间为 `max(1, floor(5 × scale))` tick——即一次极短的格挡值急速回复爆发，而非持久增益。格挡药水以持续时间 5、等级 19 注册它。

[返回首页](index)
