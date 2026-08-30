---
title: "运动、碰撞与外观"
navigation:
  title: "04 运动、碰撞与外观"
---

# 运动、碰撞与外观

## 碰撞与反弹

`collision` 控制粒子是否检测方块碰撞，`bounceTime` 是可处理的碰撞次数。`horizontalRelativeCollisionDiffuse` 调整碰撞后的水平扩散，`verticalRelativeCollisionBounce` 调整垂直反弹。

碰撞次数耗尽不等于粒子必然消失；要在指定碰撞次数后移除粒子，需要使用 meta 的 `disappearOnCollision`。高数量粒子开启碰撞会显著增加计算成本。

## 阻力、重力与偏转

指令分别提供碰撞前后的 `friction` 与 `afterCollisionFriction`，以及 `gravity` 与 `afterCollisionGravity`。第一次碰撞后，粒子切换到第二组值。

`xDeflection`、`zDeflection` 是持续横向偏转，另有各自的碰撞后版本。`rollSpeed` 控制纹理自身旋转；非零时初始滚转角也会随机化。

## 实体互动

`interactWithEntity` 开启后，粒子会与玩家互动。`horizontalInteractFactor` 和 `verticalInteractFactor` 分别控制水平与垂直扰动强度。这不是伤害或状态效果系统，主要用于让粒子运动响应玩家。

实体互动、方块碰撞和复杂表达式可以同时启用，但组合成本会累积。先用少量粒子验证轨迹，再提高 `amount`。

## 生命周期外观

`r`、`g`、`b` 直接乘到纹理颜色上，值可以超过 `1`；设计器也提醒这种情况下缩略图与世界内结果可能不同。`bloomFactor` 允许范围为 `1` 到 `255`，用于额外亮度表现。

透明度由 `beginAlpha`、`endAlpha` 和 `alphaMode` 控制，alpha 范围为 `0` 到 `1`。大小由非负的 `beginScale`、`endScale` 和 `scaleMode` 控制。变化模式包括线性、指数和正弦；指令链子段还可继承父粒子模式。

## 渲染类型

`takeOverType` 有四种当前值：

- `INSTANCED`：使用粒子图集的实例化渲染。
- `INSTANCED_TERRAIN`：使用方块材质图集。
- `INSTANCED_ITEM`：使用物品材质图集。
- `DEFAULT`：不强制改用上述类型。

纹理来自哪个图集必须与渲染类型匹配。材质选择错误通常表现为缺图、错误纹理或完全不显示。

## 指令链中的继承

子段可以让纹理来源、寿命、位置、速度、布尔项、颜色和若干物理值继承父粒子。底层数字继承标记是 `=`，枚举使用 `INHERIT`；设计器会生成正确形式。首段没有父粒子，不能依赖继承值取得有效结果。

[返回疯狂粒子目录](index)
