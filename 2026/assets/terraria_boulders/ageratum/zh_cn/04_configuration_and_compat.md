---
title: 配置与兼容
navigation:
  title: 配置与兼容
---

# 配置与兼容

## 配置

模组通过 `ModConfigs.register(modContainer)` 使用 NeoForge 配置系统注册配置。

## 效果、音效、伤害与数据

- **状态效果** —— `ModEffects` 注册自定义状态效果（例如吃 `boulder_bread` 施加的 `choking` 窒息）。
- **音效** —— `ModSounds` 注册自定义音效事件。
- **伤害** —— `ModDamageTypes` 注册自定义伤害类型。
- **数据组件** —— `ModDataComponents` 注册自定义组件（例如伪装巨石的 `is_locked`）。

## 网络

数据包在 `PayloadRegistrar` 中注册，包括用于座位交互的 `MountClickPayload` 与 `ServerHandler`。

## 数据生成与兼容

- `ModDatagen.gatherData` 在客户端与服务端生成配方/战利品等。
- 项目声明可选的 **JEI**（`29.6.2.31`）与 **Jade**（`26.1.5`）依赖用于集成。
- 客户端自定义渲染类型与着色器工具（`ModRenderTypes`、`ShaderUtil`）驱动特殊的巨石视觉。

[返回首页](index)