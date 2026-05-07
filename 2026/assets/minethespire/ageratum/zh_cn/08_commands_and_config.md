---
title: "命令与配置"
navigation:
  title: "命令与配置"
---

# 命令与配置

## `/mts` 命令树

所有命令都挂在唯一的根字面量 `mts` 下，于 `RegisterCommandsEvent` 中注册。三个类各自贡献一棵子树。

### 权限等级

**所有子命令都没有声明 `requires(...)` 子句。** 模组中不存在任何 `Commands.hasPermission(...)` 调用，因此整棵 `/mts` 树在**权限等级 0** 即可使用——服务器上的每个玩家都能执行全部命令，包括向其他实体引导 Orb、以及清除任何人身上的心灵绽放。

在意此事的服主应当用外部权限系统限制 `/mts`。

### `/mts combat`

| 语法 | 效果 | 返回值 |
|:---|:---|:---|
| `/mts combat tick` | 为执行者打印 `Combat tick remains: <n> tick` | 剩余刻数 |
| `/mts combat hostiles` | 为执行者打印 `Hostile UUIDs: [...]` | 敌对数量 |

两者都要求真实玩家（`getPlayerOrException`），且只作用于执行者；没有目标参数。输出以不广播的成功消息发送。

### `/mts clearMindBloom <targets>`

移除心灵绽放的唯一受支持方式。

- `targets` 是标准实体选择器，且是**必需**参数。
- 内部会把静态标志 `MindBloomEffect.ON_CMD_CLEAR` 置为 `true`，从每个生物目标身上移除该效果，然后清除标志。没有这个标志，移除监听器会否决此次移除。
- 若没有任何目标实际失去该效果，命令以原版消息 `commands.effect.clear.specific.failed` 失败。
- 成功时通过原版键 `commands.effect.clear.specific.success.single` / `...multiple` 报告，并**向管理员广播**。

注意字面量采用驼峰式：`clearMindBloom`，而不是 `clear_mind_bloom`。

### `/mts orb`

| 语法 | 效果 |
|:---|:---|
| `/mts orb clear` | 清除执行者的 Orb |
| `/mts orb clear <targets>` | 清除选择器中每个生物的 Orb |
| `/mts orb channel <targets> <orbType>` | 为选择器中每个生物引导一个该类型的 Orb |

`orbType` 是枚举参数，只接受 `Lightning`、`Frost`、`Dark`、`Plasma`。这些值在枚举中是**首字母大写**的，Tab 补全也会照此显示。

行为注意点：

- 不带参数的 `clear` 使用 `getPlayer()`，因此从控制台等非玩家来源执行时会以 `Failed to clear Orbs` 失败。
- 数量为零时 `clear` 会报告*失败*（`No Orbs are owned by ...` / `No Orbs are existing among ... Entities`），尽管实际上并没有出错。
- `channel` 走的是常规引导路径，因此会遵守目标的 `max_charge_ball` 上限；向已满容量的实体引导会唤发它最旧的 Orb。
- `channel` 会向管理员广播成功消息，`clear` 不会。
- 选择器中的非生物实体会被静默跳过。

## 配置

`ConfigTheSpire` 注册了三份配置文件（CLIENT、COMMON 与 SERVER）。COMMON 规格虽被构建并注册，但**完全不含任何选项**，因此其文件实际上是空的。

### 客户端

| 键 | 类型 | 默认值 | 翻译 | 含义 |
|:---|:---|:---|:---|:---|
| `combat_state` | 布尔 | `false` | 渲染战斗状态信息 | 显示战斗状态 HUD 指示器 |

### 服务端

| 键 | 类型 | 默认值 | 范围 | 翻译 |
|:---|:---|:---|:---|:---|
| `max_combat_ticks` | 整数 | `300` | 1 – `Integer.MAX_VALUE` | 最大战斗刻数 |
| `quick_exist_combat_ticks` | 整数 | `60` | 1 – `Integer.MAX_VALUE` | 快速脱离战斗刻数 |
| `fierce_mind_bloom` | 布尔 | `true` | — | 猛烈的心灵绽放 |

配置文件中自带的注释：

- `quick_exist_combat_ticks` —— *"After all hostiles are gone, remaining Combat Ticks will decrease to this value."*（所有敌对消失后，剩余战斗刻数会降至此值。）
- `fierce_mind_bloom` —— *"Effect \"Mind Bloom\" will entirely prevent healing and disable death protections, e.g. Totem of Undying"*（「心灵绽放」效果将完全阻止治疗并禁用免死保护，例如不死图腾。）

### 配置键的拼写不一致

实际的 TOML 键是 **`quick_exist_combat_ticks`**——是 "exist" 而不是 "exit"。Java 字段名为 `QUICK_EXIT_COMBAT_TICKS`，翻译键为 `config.minethespire.quick_exit_combat_ticks`，两者拼写都是正确的。手动编辑配置文件时必须使用拼错的 `quick_exist_combat_ticks`；拼写正确的键会被忽略。

### 这些选项实际改变什么

- `max_combat_ticks` 是每次登记敌对时计数器被重置到的值。提高它会让战斗更「黏」，并延后所有脱离战斗类加成（赤牛、燃烧之血）。
- `quick_exist_combat_ticks` 是敌对集合清空后计数器被压到的下限。把它设得*高于* `max_combat_ticks` 是范围检查允许的，其结果是该压制永远不会生效。
- `fierce_mind_bloom` 控制两件事：图腾保护，以及对「直接设定生命值」的拦截。把它**关闭**后，心灵绽放的治疗取消与免移除特性依然完整保留——它只是重新启用图腾与设置生命值的来源。**没有任何配置项能让心灵绽放变得可移除。**

### 配置界面

客户端侧的模组类用 NeoForge 通用的 `ConfigurationScreen` 注册了 `IConfigScreenFactory`，因此三份文件都能在游戏内的模组列表里编辑，无需自定义 UI。

[返回首页](index)
