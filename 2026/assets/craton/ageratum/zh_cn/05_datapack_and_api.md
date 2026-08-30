---
title: 数据包与 API
navigation:
  title: 数据包与 API
description: 两个自定义数据包注册表、如何添加自己的层或剖面，以及供其他模组使用的 API 面。
---

# 数据包与 API

Craton 的地质**完全由数据包驱动**。层与剖面都是带 codec 的自定义注册表，因此数据包可以在不改代码的前提下添加、替换或移除岩层。

## 两个注册表

| 注册表 | 内容 |
|:---|:---|
| 地质层 | 一条岩石带及其厚度与噪声 |
| 地质剖面 | 一个生物群系标签加一串有序的层 |

两者都通过 `CratonRegistries` 注册，其内置条目由 `DatapackRegistryGenerator` 产出——也就是说，自带的 14 个层与 13 个剖面本身就是生成出来的数据包文件，而非硬编码对象。

## 添加自己的层

层 JSON 只需要 `block`，其余全部回退到默认值：

```json
{
  "block": "minecraft:calcite",
  "thickness": 18.0,
  "amplitude": 10.0,
  "freq_x": 0.008,
  "freq_z": 0.009,
  "seed": 909
}
```

默认值为厚度 `24.0`、振幅 `12.0`、`freq_x` / `freq_z` 为 `0.01`、种子 `0`。请注意：若省略种子它会默认为 **0**，因此两个都省略种子的层将共享同一噪声偏移，其边界会同步起伏——请给每一层不同的种子。

`block` 字段经方块注册表的名称 codec 映射并取该方块的**默认状态**，所以层永远是某个方块的朴素形态。

## 添加自己的剖面

剖面把一个生物群系 holder set 与一串有序的层配对。由于自带剖面都从 **NeoForge 通用生物群系标签**（`IS_PLAINS`、`IS_MOUNTAIN`、`IS_OCEAN` 等）解析生物群系，遵循这一惯例可以让你的剖面自动适用于模组生物群系。

两个自然的用途：

- **让大理岩生成。** `marble` 是一个已完整注册但没有任何自带剖面引用的层。把它加进某个剖面，它就会出现在地下。
- **恢复砂砾。** 情况相同——`gravel` 层已存在但未被使用。

## 顺序很重要

层列表是自上而下的。所有自带剖面都以 `deepslate` 结尾，这正是让深部地下拥有一致底板的原因。如果你编写的剖面省略了深部基底层，层序的底部就是你的最后一项。

## API 包

`com.teamtea.craton.api.geology` 是公开接口面：

- `GeologyLayer` —— 该 record 及其 codec。
- `GeologyProfile` —— 生物群系到层的绑定。
- `ExtendBlockFamily` / `ExtendedBlockFamily` —— 在原版 `BlockFamily` 上承载竖直台阶的接口对。`MixinBlockFamily` 负责让原版系列实现它。

如果你希望自己的石头以同样方式挂上竖直台阶，`ExtendedBlockFamily.getVerticalSlab(family)` 是访问器，而 `StoneCollection` 展示了预期的四表面处理分组方式。

## 无命令、无配置

Craton **没有命令，也没有配置文件**。这意味着没有游戏内开关可以恢复[它对原版做了什么改动](04_vanilla_worldgen_changes.md)中描述的那些原版石头团块——**想保留它们需要用数据包**覆盖模组的移除条目。

[返回首页](index)
