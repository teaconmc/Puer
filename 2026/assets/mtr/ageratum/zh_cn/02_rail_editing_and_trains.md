---
title: 轨道编辑与列车
navigation:
  title: 轨道编辑与列车
---

# 轨道编辑与列车

## 轨道编辑器

两件工具用于编辑既有 MTR 轨道的几何与外观。两者堆叠上限均为 1，并通过 `mtrsteamloco:tool_tag` 数据组件持久化设置。

- **外观编辑器**（`rail_editor_visual`）—— 调整轨道的外观显示。
- **几何编辑器**（`rail_editor_geometry`）—— 通过其界面（`gui.mtrsteamloco.rail_editor_geometry.*`）设置节点姿态、竖曲线、半径与批量应用选项，并可将设置保存回工具。

几何编辑器要求轨道节点是自由节点（`gui.mtrsteamloco.rail_editor_geometry.not_free_node`）；半径可设定、封顶（`radius_set_max`）或清除（`radius_set_none`），并可依据连接轨道推导角度（`derive_angle`）。

## 桥梁创建器

`bridge_creator_1` 沿 MTR 轨道建造桥梁；创建进行中时物品模型切换为已选变体（`bridge_creator_1_selected`）。

## 接触网与自定义轨道

轨道模型包位于 `assets/mtrsteamloco/rails/`（`builtin.json` 列出内置轨道模型，`catenaries.json` 定义架空接触网类型）。轨道外观可通过 NTE 的轨道模型注册表（`data/RailModelRegistry`）按轨覆盖，使同一条 MTR 轨道节点显示自定义模型。

## 脚本列车

脚本自定义列车从模型文件加载模型与行为（模组内置 DK3/D51 系列的 `models/atlas/*.json`）；列车以脚本渲染器渲染并可进行虚拟驾驶。

## 虚拟驾驶

乘坐列车时，`/mtrnte virtdrive` 启动所乘列车的虚拟驾驶（`TrainVirtualDrive`）；`atpcutout` 切换其 ATP 切除状态，`/mtrnte stat` 将当前渲染状态输出到聊天栏。网络包（`PacketVirtualDrive`、`PacketUpdateRail` 等）在客户端与服务端之间同步虚拟驾驶状态。

## 脚本与集成

自定义 eye-candy 与列车脚本在专用脚本上下文中运行（`render/scripting`）；`SowcerModelAgent` 与 `DynamicTrainModelLoader` 将外部 Sowcer 模型与动态列车模型集成进 MTR 渲染器。

[返回首页](index)