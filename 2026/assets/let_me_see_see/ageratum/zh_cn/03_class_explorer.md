---
title: 类浏览器
navigation:
  title: 类浏览器
items:
  - let_me_see_see:explorer
description: 搜索已加载的类、重建扫描缓存、导出类使其持久化。
---

# 类浏览器

对空右键类浏览器即可打开。这是模组得名的那个界面。

## 你能做什么

| 控件 | 游戏内标签 | 效果 |
|:---|:---|:---|
| 搜索框 | 「Search Classes: 」 | 按名称过滤已加载的类 |
| 重建 | 「Re-scan all loaded class.」 | 依当前运行时重建类映射表 |
| 导出 | 「Export Class.」 | 记录某个类，使其进入数据库 |
| 全部导出 | 「Export and decompile all loaded classes」 | 批量导出并反编译当前已加载的全部类 |
| 过滤 | 「Show exported only」 | 隐藏尚未导出的条目 |

无效名称会报 **「Not a existed class name.」**，长时间搜索会显示 **「Searching...」** 而不是静默卡住。

## 是「已加载」，不是「可用」

浏览器列出的是**当前已加载进运行 JVM 的类**，而不是磁盘上存在的每一个类。两条后果：

- 你装了某模组但从未触发过的类，可能根本还没出现。去让游戏加载它（放下方块、打开界面），然后点**重建**。
- 列表会随游玩而变化。这正是重建按钮存在的理由，也是模组在重新生成映射表时会触发自己的 `RebuildClassMapEvent` 的原因。

::: tip
**「Export and decompile all loaded classes」是那个重活按钮。** 在大型整合包里它会一次反编译极大量的类。已知目标时请用「搜索→导出」循环，把批量路径留给你真想要一份离线语料的时候。
:::

## 导出会让它持久化

已导出的类由 `ExportsDataManager` 记录，并在配置加载时重新读入——这正是**已导出类数据库**界面能跨会话可用的原因。数据库会区分两种你应当留意的状态：

| 状态 | 提示 | 含义 |
|:---|:---|:---|
| 旧 | 「Class exported before.」 | 你已经导出过这一个 |
| 过期 | 「Some mod changed since the export and may influence class contents. Suggest to re-export.」 | 环境在你脚下变了 |

过期警告是重要的那个：一次导出是一份快照，若你之后更新或新增了模组，记录的内容可能已与实际运行的不符。界面为此提供了 **Re-Export Class**。

## 如果代理没有加载

若 `Instrumentation` 不可用，打开浏览器会得到 **Class Explorer Unavailable** 界面，文本如下：

> The Java Agent failed to load. Class explorer features require Instrumentation support and cannot function in the current runtime environment. Please check your launch arguments and JVM settings.

这是一个刻意准备且已翻译的降级路径——不是崩溃，也不是空列表。该怎么处理见[排障](06_technical_notes)。

[返回首页](index)
