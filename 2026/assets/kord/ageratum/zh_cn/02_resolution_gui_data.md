---
title: 求解、GUI 与数据
navigation:
  title: 求解、GUI 与数据
---

# 求解、GUI 与数据

## 冲突解决

`ConflictResult` / `ConflictRisk` 与 `Severity`、`RiskTag` 报告绑定如何冲突，使求解器倾向最佳分配并把其余呈现出来。`Scene` 与风险 `Collector`（上下文 `IntentTag`/`ModalityTag`/`RedirectTag`/`ResourceTag`/`StateTag`）描述冲突发生的位置。

## 覆盖

`OverrideManager` 配合 `OverrideType` 与 `Origin` 让数据包强制或回退分配（`override` 监听器），给整合包作者对按键布局的最终控制。

## GUI

- **`KeyBindingScreen`** —— 由 `KeyBindingSelectionListWidget` 构建的按键绑定选择界面；`Backend` / `EventHandler` 驱动它。
- **配置** —— 模组注册配置界面工厂显示 `KeyDiag`（诊断视图）及内部组件。
- **Mixin** —— `MixinKeyMapping` 客户端 hook 原版按键映射。

## 数据包重载

模组在 `kord` 命名空间下注册了五个重载监听器：`contexts`、`mutex_sets`、`resources`、`key_semantics` 与 `overrides`（全部经 `AddClientReloadListenersEvent` 加载上下文/互斥/资源/语义/覆盖定义）。

[返回首页](index)