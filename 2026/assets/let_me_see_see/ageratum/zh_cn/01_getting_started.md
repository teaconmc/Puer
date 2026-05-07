---
title: 获取开始
navigation:
  title: 获取开始
items:
  - let_me_see_see:scanner
description: 三件物品、为什么都不能合成，以及能解锁一半功能的配置步骤。
---

# 获取开始

## 获得工具

模组**没有 `data/` 目录**，这意味着没有配方、没有战利品表、没有标签。三件物品只有两个来源：

- 创造分页 **`let_me_see_see:tab`**（显示名「LetMeSeeSee(YourCode)」），它排在食物 / 原材料 / 刷怪蛋之后，恰好包含三个条目。
- `/give <玩家> let_me_see_see:scanner` 之类。

分页图标是扫描仪。三件物品都只能堆叠 1 个。

## 三件物品

| 物品 | 交互方式 | 执行端 |
|:---|:---|:---|
| `scanner` | **右键方块或生物** | 分析**仅在客户端**执行 |
| `explorer` | **对空右键**（use） | 经服务端 → 客户端数据包打开界面 |
| `item_data_exporter` | **对空右键**（use） | 经服务端 → 客户端数据包打开界面 |

后两件共用同一个基类（`GUIItem`），因此作为物品行为完全相同——差别只在于打开哪个界面。

## 配置：两个选项

配置规格恰好有**两项**，而且你多半两项都想填：

| 键 | 默认值 | 为什么重要 |
|:---|:---|:---|
| `idea_path` | `""`（空） | `idea64.exe` 的路径（或任何能打开 `.class` 文件的程序）。填了才能用「OpenInIDEA」按钮。 |
| `languages` | `["en_us", "zh_cn"]` | 导出物品数据时用哪些语言写物品名。 |

::: tip
两项在「模组能否加载」意义上都是可选的，但把 `idea_path` 留空只会让一个功能变灰——界面会告诉你「Not configured the IDEA path.」。界面内有一个 **Open Config File** 按钮，你不必自己去翻 TOML。
:::

## 反编译器完全不需要配置

类预览开箱即用。模组**自带反编译器**——`org.vineflower:vineflower:1.10.1` 以 jar-in-jar 方式打包并在进程内调用，因此没有任何东西需要下载，也没有路径需要配置。

::: warning
语言文件里残留着一句 *「You need set the path of Fernflower to use class preview.」*，**请忽略它**。它的键（`preview.no_fernflower`）在源码中零引用，而且模组根本没有反编译器路径这个配置项——这句提示永远不会显示。**不要去找 Fernflower 的 jar。** 参见[反编译与 IDE](04_decompiling_and_ide)。
:::

## 配置：Java 代理

类浏览器要枚举**已加载**的类，这需要 `java.lang.instrument.Instrumentation`。模组通过自己的 jar 清单（`Agent-Class` / `Launcher-Agent-Class` / `Can-Retransform-Classes`）提供该能力，并在运行时自我附加。

当这一步失败时，你会得到专门的 **Class Explorer Unavailable** 界面，而不是崩溃或一片空白的列表。详见[排障](06_technical_notes)。

## 这里没有的东西

没有方块、没有方块实体、没有实体、没有注册到原版菜单注册表的菜单、没有命令、没有进度、没有音效、没有世界生成。模组就是三件物品加一组客户端界面。

[返回首页](index)
