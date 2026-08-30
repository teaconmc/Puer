---
title: MTR-NTE
navigation:
  title: MTR-NTE
---

# MTR-NTE（NeoMTR 纸板箱特色）

MTR-NTE（注册命名空间 `mtrsteamloco`，随模组 ID **`mtr`** 发布 —— 用 `/ageratum mtr` 打开本指南）是随 NeoMTR 一同发布的「纸板箱」NTE 扩展。NeoMTR 是 Minecraft Transit Railway（`mtr`，版本 300.6.1，MIT 许可）面向 Minecraft 26.1.2 的新移植版。本扩展在 MTR 既有轨道交通网络之上新增方块、建造工具、自定义轨道渲染与脚本列车，由 Jonathan Ho 与 Zbx1425 在 `cn.zbx1425.mtrsteamloco` 下开发。

## 注册内容

- **方块** —— `mtrsteamloco:eye_candy`（装饰物件，由 eye-candy 脚本驱动的方块实体）与 `mtrsteamloco:one_way_gate_1`（单向闸机）。
- **物品** —— `mtrsteamloco:bridge_creator_1`（桥梁创建器）、`mtrsteamloco:rail_editor_visual`（轨道编辑工具：外观）与 `mtrsteamloco:rail_editor_geometry`（轨道编辑工具：几何），后两者堆叠上限为 1。
- **数据组件** —— `mtrsteamloco:tool_tag` 在工具上持久化 NBT（供轨道编辑器使用）。
- **音效** —— `mtrsteamloco:bell`；**粒子** —— `mtrsteamloco:steam_smoke`（蒸汽机车烟雾，覆盖粒子额度限制）。
- **脚本内容** —— eye-candy 脚本（`eyecandies/*`）、脚本自定义列车与动态列车模型加载，以及自定义轨道模型（`rails/builtin.json`、`rails/catenaries.json`）。
- **客户端命令** —— `/mtrnte`，含 `config`、`hideriding`、`virtdrive [atpcutout]` 与 `stat` 子命令。

## 阅读路线

- [获取开始](01_getting_started) —— 获取工具与上手步骤。
- [轨道编辑与列车](02_rail_editing_and_trains) —— 轨道几何/外观编辑、桥梁创建与脚本列车。
