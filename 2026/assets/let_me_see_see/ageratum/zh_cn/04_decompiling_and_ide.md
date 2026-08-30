---
title: 反编译与 IDE
navigation:
  title: 反编译与 IDE
description: Fernflower 配置、已导出类数据库、语法高亮，以及跳转到 IntelliJ IDEA。
---

# 反编译与 IDE

**已导出类数据库**界面是真正阅读代码的地方。

## 反编译器随包自带

类预览无需任何配置。模组以 jar-in-jar 方式打包 **`org.vineflower:vineflower:1.10.1`** 并**在进程内**运行它——`ClassDecompiler` 直接构造引擎并把类文件喂进去，结果按路径缓存在一张 `ConcurrentHashMap` 中。

API 类型名仍叫 `Fernflower`（`org.jetbrains.java.decompiler.main.Fernflower`），因为 **Vineflower 是 Fernflower 的分支且沿用了原有包名**。所以日志行写着 `Fernflower: ...`，而实际运行的引擎是 Vineflower。

::: warning
语言文件中有一句 *「You need set the path of Fernflower to use class preview.」*——**它是失效遗留**。其键 `preview.no_fernflower` 在源码中**零引用**，而且不存在反编译器路径的配置项（规格中只有 `idea_path` 与 `languages`）。这句提示永远不会出现。如果你曾因它去找 Fernflower 的 jar，那是在追一句来自早期设计的字符串。
:::

## 预览面板的各种状态

界面会明确报告自己的状态，而不是显示一个空盒子：

| 提示 | 含义 |
|:---|:---|
| 「You are not focusing any class.」 | 尚未选中任何类 |
| 「Decompiling.」 | 正在处理 |
| 「Cannot find class file.This should not happen.」 | 找不到类文件——这句措辞本身把它标记为异常状况 |
| 「An error occurred in decompilation, please check the log for more information.」 | 引擎失败；细节在日志里（找带 `Fernflower:` 前缀的行） |

第三条值得记住：作者把它标注为「不应该发生」，所以你若撞上它，说明发现的是真正的意外情况，而不是一种正常的失败模式。

## 语法高亮是真解析

模组内嵌了**由 ANTLR4 生成的 Java 词法分析器**（`antlr4-runtime` 以 jar-in-jar 方式打包），并在词元流上驱动一个 `ColoringListener`。因此高亮基于语法而非正则——这也是为什么即使在格式古怪的反编译输出中，标识符、关键字与字面量也能正确着色。

## 在类之间导航

预览内部的类名可以点击：

> Ctrl + left click to jump

这让预览成为一张可导航的小型关系图，而不是一坨扁平文本——你可以顺着类型引用从一个反编译类进入另一个，而不必退回搜索框。

## 跳转到 IntelliJ IDEA

**OpenInIDEA** 按钮把类文件交给 `idea_path` 指向的程序。若该配置为空，你会得到：

> Not configured the IDEA path.

配置注释刻意写得宽松——*「The path of your Intellij IDEA (idea64.exe) (Or other program can open .class file)」*——因此任何外部查看器都能用；尽管按钮标签这么写，它并不局限于 IDEA。

界面里还有一个 **Open Config File** 按钮，你不必离开游戏就能设置路径；不过要生效需要重载配置（模组监听 `ModConfigEvent.Reloading`）。

[返回首页](index)
