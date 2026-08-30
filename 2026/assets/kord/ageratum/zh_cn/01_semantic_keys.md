---
title: 语义键
navigation:
  title: 语义键
---

# 语义键

Kord 的核心思想：按键绑定不是物理按键，而是**语义键**。`KeySemantic` / `KeySemanticManager`（`key_semantics` 数据包监听器）与 `KeyContext` 把动作的含义链接到当前分配的物理按键，因此即使按键改变或冲突，同一意图依然有效。

## 按键对与求值

求解器基于 `KeyPair`（修饰键+基础键组成的「和弦」）工作。`Evaluator` 考虑：

- **意图** —— `Intent` / `IntentList` 描述动作的含义以及它想要按键的强度。
- **模态** —— `Modality` 区分模式（如普通 vs. 定时/按住），使同一物理和弦可承载不同含义。
- **互斥集** —— `MutexSet` / `MutexSetManager`（`mutex_sets`）与互斥状态树（`AndNode` / `OrNode` / `NotNode` / `LeafNode`）让动作互相排斥。
- **同型与重定向** —— `SameType` 与 `RedirectMode` 处理共享意图或被重定向的动作。

## 来源

按键语义来自 `KeyDefinition`（经 `KeySemanticManager`），并可用 `OverrideDefinition` 覆盖。

[返回首页](index)