---
title: 技术说明
navigation:
  title: 技术说明
description: 命名空间分裂、重载命令，以及开建前值得知道的缺口。
---

# 技术说明

## 命名空间分裂，完整版

这是关于本模组最重要的技术事实：

```java
public static final String MOD_ID      = "yuushya";
public static final String MOD_ID_USED = "yuushya_modelling";
```

| 使用 `yuushya` | 使用 `yuushya_modelling` |
|:---|:---|
| 方块、物品、方块实体 | `@Mod` 注解 |
| 数据组件、菜单 | 全部九个网络包 ID |
| 两个创造分页 | `pick_color` HUD 覆盖层 |
| `assets/yuushya/` —— 241 个文件 | `assets/yuushya_modelling/lang/` —— 4 个文件 |
| `data/yuushya/` —— 54 个文件 | —— |

所以资源布局确实跨两个命名空间，而且**语言文件与它们所命名的一切分处两地**：150 个 `item.yuushya.*` 键与 24 个 `block.yuushya.*` 键都躺在 `assets/yuushya_modelling/lang/` 里。

这之所以能工作，是因为 Minecraft 会把每个命名空间的 `lang/*.json` 合并成一张全局表——决定翻译归属的是**键名**，不是文件位置。写法不常见，但并没有坏。

## 语言覆盖

| 文件 | 键数 |
|:---|:---|
| `en_us.json` | 254 |
| `zh_cn.json` | 251 |
| `zh_hk.json` | 231 |
| `zh_tw.json` | 231 |

`zh_cn` 恰好少三个键——`block.yuushya.showblock.line1`、`block.yuushya.itemblock.line1` 与 `block.yuushya.textblock.line1`，也就是三种载体方块提示的**第一行**。这三处会回退到英文。`zh_hk` 与 `zh_tw` 落后 23 个键。

提示文本本身异常详尽：多数工具都有 `line1` 到 `line4` 外加带编号的模式串（`.0`、`.1`、`.2`），这就是一个只有 58 件物品的模组为何有这么多键的原因。

## 重载命令

```
/yuushya_reload_model reload blocks
/yuushya_reload_model reload items
/yuushya_reload_model reload texts
/yuushya_reload_model reload all
```

请注意命令字面量**没有任何命名空间前缀**——它就是 `yuushya_reload_model`，既不匹配 `yuushya` 也不匹配 `yuushya_modelling` 作为前缀的形式。成功时报告 `Modellings reloaded successfully`（`command.yuushya_modelling.reload_succeed`）。

一个 `ReloadModelPacket` 把刷新传播给客户端，因此它在服务器上可用，而非仅限单人。

## 已知缺口

**文字方块没有战利品表，也没有配方。** 模组为三个方块只随包两份战利品表（`showblock`、`itemblock`）。已放置的文字方块被破坏时什么都不掉，而且根本无法合成。请用中键取方块来复制它，永远不要破坏你在意的那一个——见[载体方块](02_carrier_blocks)。

**声明的依赖范围与实际构建不符。** `neoforge.mods.toml` 声明 `neoforge [21.0,)` 与 `minecraft [1.21,)`，而 `gradle.properties` 面向 `minecraft_version_range=[26.1.2]` 并对应 NeoForge `26.1.2.71`。因此元数据宣称自 1.21 起全部兼容，而构建并非为此而作。这不会阻止它在本版本加载；请把 toml 里的范围当作**未维护**而非支持声明。

**`diable_ao_packet`** 是环境光遮蔽数据包的注册 ID——`disable` 的拼写笔误，无害，但如果你要 grep 它就得知道。

## 客户端界面与菜单之分

只有两样东西是真正的菜单（`engrave`、`history`）。三个载体编辑器——`ShowBlockScreen`、`ItemBlockScreen`、`TextBlockScreen`——是**由模组自有数据包驱动的客户端界面**，而不是菜单类型。最大的源码包正反映了这一点：`widget`（16 个类）与 `showblocktool`（15 个）远超其他，另有 11 个网络类负责让这些界面保持同步。

实际影响是：编辑 UI 是一套自定义栈而非容器 GUI——它不像箱子那样表现、无法被漏斗自动化，其状态是显式同步而非依靠原版槽位机制。

## 源码布局

| 包 | 类数 | 职责 |
|:---|---:|:---|
| `widget` | 16 | 自定义 UI 工具包 |
| `showblocktool` | 15 | 工具行为 |
| `network` | 11 | 九个数据包及配套 |
| `transformData` | 10 | 层与变换模型 |
| `engrave` | 9 | 雕刻子系统 |
| `utils`、`registries`、`item`、`event` 等 | 各 6–8 | 支撑代码 |

共 139 个 Java 文件，MIT 许可，署名八位作者。

[返回首页](index)
