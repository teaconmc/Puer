---
title: 物品数据导出器
navigation:
  title: 物品数据导出器
items:
  - let_me_see_see:item_data_exporter
description: 按任意尺寸把物品图标渲染成 PNG，并导出物品元数据，可选 MCMOD 格式。
---

# 物品数据导出器

对空右键物品数据导出器即可打开。这是用来产出百科与数据库素材的工具，而不是读代码的工具。

## 它导出什么

两样东西，分别控制：

- **物品图像**——把物品图标渲染成 PNG，尺寸与缩放由你指定。
- **物品元数据**——名称及相关数据，按 `languages` 配置项列出的语言写出（默认 `["en_us", "zh_cn"]`）。

## 选择范围

| 字段 | 标签 | 接受 |
|:---|:---|:---|
| 命名空间 | 「Namespace: 」 | 一个 modid，**或**一个具体物品 ID |

提示文本把要点写得很清楚：

> The namespace(modid) or item id to export. Keep empty to export all namespaces.

::: warning
**命名空间留空意味着每个模组的每一件物品。** 在大型整合包里那是一次极大的渲染作业。除非你真想要整个注册表，否则请先填一个 modid。
:::

## 图像控件

| 控件 | 标签 |
|:---|:---|
| 输出尺寸 | 「Image Size: 」 |
| 物品在图内的缩放 | 「Item Scale: 」 |
| 是否输出 PNG | 「Save Item Image as PNG」 |
| 执行 | 「Export PNG」 |

两个尺寸字段是独立的：**Image Size** 是画布，**Item Scale** 是物品在画布内画多大。正是这一分离让你能在统一画布尺寸下产出带留白的图标。

渲染走模组自己的离屏帧缓冲（`OffScreenFBO` / `OffScreenRenders`），因此导出结果不依赖你屏幕上当前显示着什么。

## MCMOD 格式

还有第二个导出按钮 **「Export As MCMOD Format」**，它按 MCMOD 百科的格式写出，而非模组自己的布局。点它之前值得先读它带的这句警告：

> Cannot export using custom image settings.

也就是说，MCMOD 路径**会忽略你设置的 Image Size 与 Item Scale**，改用它自己的固定约定。如果你调好了那两个字段然后按 MCMOD 导出，你的设置被静默忽略了——而提示文本是唯一说明此事的地方。

## 为什么是物品而不是命令

导出器必须渲染物品，这需要一个已加载图集且有可用 GL 上下文的活客户端。这也是模组**完全不注册任何命令**的原因——命令会在服务端线程上运行，而那里这些东西一个都不存在。

[返回首页](index)
