---
title: Kord
navigation:
  title: Kord
---

# Kord（和弦）

Kord（模组 ID `kord`，版本 `1.0.0`）是 lnatit（`com.lnatit.kord`）开发的客户端按键绑定框架（All Rights Reserved），目标 Minecraft 26.1.2 / NeoForge（`26.1.2.36-beta`），以 `@Mod(dist = Dist.CLIENT)` 注册。它不再用原始按键冲突，而是把按键绑定视为**语义键**，像**和弦**（`KeyPair`）那样求解：为每个动作分配按键，同时检测并分级冲突。

## 模组内容

- **语义键** —— 物理按键映射到语义绑定（`key_semantics`），使同一动作意图与具体按键解耦。
- **和弦求解** —— `Evaluator` 权衡意图、模态与互斥状态树，为每个 `KeyPair` 选出最终按键。
- **冲突风险** —— 求解器报告冲突的严重度与场景，而非静默冲突。
- **数据驱动** —— 上下文、互斥集、资源、按键语义与覆盖均可从数据包重载。
- **自定义 GUI** —— 按键绑定选择界面（`KeyBindingScreen`）与配置 `KeyDiag` 界面。

## 阅读路线

- [语义键](01_semantic_keys) —— 让动作映射到语义绑定。
- [求解、GUI 与数据](02_resolution_gui_data) —— 和弦求值、冲突风险与界面。
