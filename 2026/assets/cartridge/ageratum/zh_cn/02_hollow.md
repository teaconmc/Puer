---
title: 虚空
navigation:
  title: 虚空
---

# 虚空

## 虚空实体

**`hollow`** 是一种生物（MISC 类别，1×0.5 碰撞箱、0.4 眼高、20 最大生命）——一种可召唤的深渊化生物。`HollowEntityData` 携带其配置，`HollowEntityEventListener` / `HollowPlayerEventListener` 接通行为。

## 随机器

**`hollow_randomizer`** 在使用时随机化虚空的外观/数据。

## 被拿起的虚空

**`carried_hollow`**（0×0、防火）是手持变体：当用 **Carry On** 拿起虚空时，`CarriedHollowEntity` 与 `CarriedHollowEventListener` 以及渲染层（`HollowEarRenderLayer`、`HollowFaceRenderLayer`、`HollowSkinRenderLayer`）渲染你实际捧着的虚空，通过 `CarriedObjectRenderMixin` / `PickupHandlerMixin` / `PlacementHandlerMixin` 适配 Carry On。

## 渲染与命令

`HollowModel`、`HollowRenderer`、`HollowEarRenderLayer` 等处理视觉；`/hollow` 命令（`HollowCommand`）用于设置虚空。

[返回首页](index)