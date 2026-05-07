---
title: "客户端选项与资源包"
navigation:
  title: "08 客户端选项与资源包"
---

# 客户端选项与资源包

## 客户端配置

模组注册了一个客户端配置项：

- `showCheckScreen`（默认 `false`）：开启后，标题界面会在每次启动时被「Yuushya - Mod and Resource Pack Checking」检查界面替换一次。

## 检查界面

检查界面分三个区域列出缺失资源与推荐附加内容：Resource Packs（资源包）、Recommend Mods（推荐模组）与 Connected Texture Mods（连接纹理模组）。每个条目都有下载链接。「Stop showing」复选框会关闭并保存该配置项。

## 内置资源包

模组通过 `AddPackFindersEvent` 注册了三个内置资源包：

- **Yuushya Fusion Combine**（需要 Fusion）。
- **Yuushya Mcpatcher Feature**（推荐搭配 OptiFine 或 Continuity）。
- **Yuushya CTM Support**（需要 ConnectedTexturesMod）。

检查界面会根据缺失情况推荐 Yuushya 16x、Yuushya Foliage Addon、Yuushya Modelling、OptiFine、Continuity、CTM 与 Indium。

## 运行表面

当前 26.1 源码没有注册命令，也没有注册按键。交互表面是创造栏、蓝图/模板菜单、工具的右键行为与客户端检查界面。

[返回首页](index)
