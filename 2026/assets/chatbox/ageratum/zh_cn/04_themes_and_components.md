---
title: "主题与组件"
navigation:
  title: "04 主题与组件"
---

# 主题与组件

```
data/<namespace>/chatbox/theme/<name>.json
```

主题是这套系统的视觉一半。它定义对话框、选项按钮、对话可召唤的具名立绘、功能按钮、按键提示，以及任何可复用的动画。用 `/chatbox theme` 切换主题即可在不改动对话的情况下换肤。

## 主题分区

| 分区 | 形态 | 用途 |
|:---|:---|:---|
| `portrait` | 对象，名称 → 立绘 | 对话行可引用的具名立绘 |
| `option` | 单个类立绘对象 | 每个选项按钮的模板 |
| `dialogBox` | 单个类立绘对象 | 对话框边框及其文本布局 |
| `functionalButton` | 数组 | 记录 / 快进 / 自动播放按钮 |
| `keyPrompt` | 对象 | 「右键继续」提示 |
| `customAnimation` | 对象，名称 → 关键帧列表 | 按名引用的可复用动画 |

## 共享组件字段

每个视觉元素都接受这组通用字段：

| 字段 | 含义 |
|:---|:---|
| `x`、`y` | 位置，按对齐方式解释 |
| `width`、`height` | 尺寸 |
| `widthReference`、`heightReference` | 尺寸相对于什么度量 |
| `scale` | 等比缩放系数 |
| `alignX`、`alignY` | 锚定边：`left`/`center`/`right`，`top`/`center`/`bottom` |
| `renderOrder` | 绘制顺序；越小越靠后 |
| `brightness` | 亮度乘数 |
| `opacity` | 不透明度 |
| `angle` | 旋转 |
| `hidden` | 初始隐藏 |
| `renderEvents` | 附加在本组件上的事件 |

### 默认渲染顺序

层级问题最容易绊住人，因此内置默认值值得记住：

| 元素 | 默认 `renderOrder` |
|:---|:---|
| 视频 | `-1` |
| 对话框 | `0` |
| 选项 | `10` |
| 立绘 | `20` |
| 功能按钮 | `30` |
| 按键提示 | `40` |

对话行中省略 `renderOrder` 的立绘覆盖会被刻意重置为未设置，而不是继承 `20`，因此若不显式设置，覆盖项可能落到对话框之后。

## 立绘字段

立绘携带共享字段，另加：

| 字段 | 含义 |
|:---|:---|
| `type` | `texture`（默认）、`player_head`、`item`、`entity` |
| `value` / `texture` | 要渲染的资源；两个名称互为别名 |
| `hoverTexture` / `selectTexture` | 悬停外观；同样互为别名 |
| `isLock`、`lockTexture` | 锁定状态及其贴图 |
| `itemCount` | 堆叠数量，用于 `item` 立绘 |
| `animation` | 要播放的具名动画 |
| `customAnimation` | 内联关键帧列表 |
| `loop` | 循环播放动画 |
| `attachment` | 附着在该立绘上绘制的额外物件 |
| `yOffset`、`stareAt`、`stareAtX`、`stareAtY` | 仅实体渲染：纵向偏移与注视目标 |

### 四种立绘类型

| `type` | `texture` 的含义 |
|:---|:---|
| `texture` | 贴图标识符，绘制为平面图像 |
| `player_head` | 玩家名 —— `@s` 渲染观看玩家自己的头颅 |
| `item` | 物品标识符，按 `itemCount` 渲染为物品堆 |
| `entity` | 实体名或 `@s`，渲染为可被指定注视方向的生物 |

`stareAt` 配合 `stareAtX` / `stareAtY` 让 `entity` 立绘朝向某个屏幕位置，这正是被渲染的角色看起来会「跟着对话看」的原因。

## 对话框与选项

对话框在共享字段之上追加文本布局：

| 字段 | 含义 |
|:---|:---|
| `lineWidth` | 正文换行宽度 |
| `nameX`、`nameY` | 框内说话者名称偏移 |
| `textX`、`textY` | 框内正文偏移 |
| `textAlign` | `left`（默认），或其他对齐方式 |

选项追加 `optionChatX`、`optionChatY` 与 `textAlign` 用于标签摆放，并用 `texture` / `selectTexture` / `lockTexture` 表示普通、悬停与锁定三种美术。

## 功能按钮

`functionalButton` 是列表，每项的 `type` 决定其行为：

| `type` | 行为 |
|:---|:---|
| `log` | 打开历史记录界面 |
| `fastforward` | 开启快进并关闭自动播放 |
| `autoplay` | 切换自动播放 |

每种类型都有内置的普通与悬停贴图，因此主题可以只列出按钮而不提供美术，仍能得到可用且有样式的控件。按钮默认尺寸 5 × 8、锚定右下、`renderOrder` 为 30，并按下标自动横向排布 —— 每级 5 像素，右对齐按钮向左、左对齐按钮向右 —— 除非你自行设置 `x`。

## 按键提示

| 字段 | 默认值 | 含义 |
|:---|:---|:---|
| `visible` | `true` | 是否显示提示 |
| `mouseTextureWidth` | `16` | 提示图标宽度 |
| `mouseTextureHeight` | `16` | 提示图标高度 |
| `rightClickTexture` | — | 「右键继续」的图标 |
| `scrollTexture` | — | 「滚轮切换选项」的图标 |

模组为此附带了默认的 `right_mouse` 与 `scroll_mouse` 贴图。

## 动画

`customAnimation` 把名称映射到关键帧列表；立绘随后可以在 `animation` 中写出该名称来播放，或携带自己的内联 `customAnimation`。播放速率来自对话文件的 `animationFPS`，`loop` 决定是否重复。`RESTART_ANIMATION` 与 `PLAY_ANIMATION` 事件可让渲染事件在行内重启动画或切换到另一段动画 —— 参见[事件与条件](05_events_and_conditions)。

::: info
主题只是客户端表现。主题无法限制流程推进、执行命令，也无法改变对话说了什么；它只决定东西摆在哪里、长什么样。
:::

[返回首页](index)
