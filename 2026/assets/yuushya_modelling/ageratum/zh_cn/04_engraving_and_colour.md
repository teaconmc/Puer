---
title: 雕刻与颜色
navigation:
  title: 雕刻与颜色
description: 两个菜单、取色器覆盖层，以及持久化你成果的五个数据组件。
---

# 雕刻与颜色

除几何之外，还有两套系统改变载体的外观：**雕刻**与**颜色**。

## 两个菜单

模组恰好注册两种菜单类型：

| 菜单 | 注册 ID | 由谁打开 |
|:---|:---|:---|
| 雕刻 | `yuushya:engrave` | `engrave_item` |
| 历史 | `yuushya:history` | `history_item` |

它们是真正的服务端菜单，不同于载体编辑界面（`ShowBlockScreen`、`ItemBlockScreen`、`TextBlockScreen`）——那些是由数据包驱动的客户端界面。这个区别对多人游戏有意义：菜单状态由原版机制同步，而界面依赖模组自己的九种数据包。

## 雕刻

`engrave_item` 对载体打开雕刻菜单。`engrave` 包是源码中较大的包之一（九个类），所以这是一整套子系统，而不是单个开关。

## 取色器

`color_picker_item` 配合 `COLOR_DATA` 组件工作，而它拥有其他工具都没有的东西：**一个 HUD 覆盖层**。

模组把 `PickColorOverlay` 注册在**准星之上**，标识符为 `pick_color`，颜色选择经专门的 `PickColorPacket` 传输。因此在使用取色器时，你能在屏幕中央得到实时反馈，而不必打开菜单。

::: tip
请注意该覆盖层注册在 **`yuushya_modelling`** 命名空间下，而不是 `yuushya` —— 模组对这类客户端注册（覆盖层与全部九个数据包 ID）一律使用 `MOD_ID_USED`，而世界内容使用 `MOD_ID`。如果你在写兼容补丁，这个分界正是会让你踩坑的地方。
:::

## 五个数据组件

载体记住的一切都存在这些组件里，全部在 `yuushya` 命名空间下：

| 组件 | 保存 |
|:---|:---|
| `BLOCKSTATE` | 捕获到的外观 |
| `TRANSFORM_DATA` | 层集合与每层的位置 / 旋转 / 缩放 |
| `TRANS_DIRECTION` | 当前轴向或方向 |
| `COLOR_DATA` | 经取色器施加的颜色 |
| `SHAPE_DATA` | 形状信息（`CompoundTag`） |

因为它们是数据组件而非仅存于方块实体的状态，所以会随**物品**一同流转——这正是中键取方块复制能生效的原因（见[载体方块](02_carrier_blocks)）。

## 环境光遮蔽控制

有一个 `UpdateAOPacket`（注册 ID 内部略有拼写问题，写作 `diable_ao_packet`）用于切换环境光遮蔽行为。在多层以奇怪角度交接的复合建造上，原版 AO 会产生看起来像缝隙的暗边；能逐建造关掉它就是解法。

## 重载模型

若你在游戏运行中修改了底层模型资源，`/yuushya_reload_model reload` 接受四个范围：

```
/yuushya_reload_model reload blocks
/yuushya_reload_model reload items
/yuushya_reload_model reload texts
/yuushya_reload_model reload all
```

成功时报告 `Modellings reloaded successfully`。一个 `ReloadModelPacket` 把刷新推给客户端，因此这在多人环境下也有效，而不只是单人。

[返回首页](index)
