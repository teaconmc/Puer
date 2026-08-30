---
title: "建筑工具"
navigation:
  title: "03 建筑工具"
items:
  - "yuushya:form_trans_item"
  - "yuushya:blockstate_update_item"
---

# 建筑工具

## 形态扳手（`form_trans_item`）

形态扳手用于调整暴露了形态属性的 Yuushya 方块。

- 右键方块：向前循环形态值。
- 左键（攻击）方块：向后循环形态值。
- 屏幕上方提示显示属性名与新值。

扳手不会破坏目标方块：动作后 `canAttackBlock` 返回 `false`。它没有耐久，注册在 `item` 创造栏。

## 方块更新刷（`blockstate_update_item`）

方块更新刷会重新执行方块的 `getStateForPlacement` 逻辑并原位替换方块状态，用于修复连接模型未随相邻方块变化刷新的旧状态，例如窗框。

- 主手或副手右键方块都会触发更新。
- 带方块实体的方块会被跳过。
- 刷子没有耐久。

两个工具都由模组的主注册流程直接注册，并把多形态状态保存在 `yuushya:mode` 数据组件中（结构生成器物品也使用该组件）。

[返回首页](index)
