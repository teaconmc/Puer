---
title: AI 能做什么
navigation:
  title: AI 能做什么
description: 暴露给已连接代理的完整动作面，以及背后的五个 HTTP 端点。
---

# AI 能做什么

README 把这个模组概括为 **See · Act · Know · Record**（看 · 做 · 知 · 录）。以下是它的具体含义。

## 动作面

`ReflectedInputHandler` 是 HTTP 层调用的那个类。它的公开方法就是「已连接代理能让你的客户端做什么」的完整清单：

| 方法 | 效果 |
|:---|:---|
| `click(x, y, button)` | 用指定鼠标键点击屏幕坐标 |
| `rightClick()` | 右键 |
| `pressKey(key, holdSeconds)` | 按下并保持任意键一段时间 |
| `hotkey(keys[])` | 组合键 |
| `typeText(text)` | 输入字符串 |
| `pasteText(text)` | 粘贴字符串 |
| `scroll(clicks)` / `scrollAt(x, y, clicks)` | 滚动，可指定位置 |
| `mouseDrag(x1, y1, x2, y2, button)` | 在两点间拖拽 |
| `setViewAngle(yaw, pitch)` | 绝对设置视角朝向 |
| `lookDelta(dYaw, dPitch)` | 相对转动视角 |
| **`executeCommand(command)`** | **以玩家身份执行任意命令** |
| `getPlayerInfo()` / `getWorldInfo()` / `debugFields()` | 读取状态 |

这是一套完整的输入设备。**没有**允许按键的白名单、**没有**对可点击界面的限制、**也没有**对命令文本的过滤。

::: danger
**`executeCommand` 以你玩家的权限运行。** 在单人世界或你是管理员的服务器上，这包括 `/op`、`/ban`、`/stop`、`/kill @a` 以及其他一切。模组不检查、不过滤、也不「记录并确认」命令字符串——它直接透传。这对驱动测试世界的开发工具是合适的，在其他任何地方都不合适。
:::

## 执行线程

所有输入都经 `ReflectedInputHandler::executeOnRenderThread` 编排到渲染线程上。这正是那些点击「货真价实」的原因——它们走的是与你自己输入相同的路径，而不是从网络线程去戳游戏状态，因此对人类有效的操作对代理同样有效。

## HTTP 端点

服务器上注册了五个上下文：

| 端点 | 用途 |
|:---|:---|
| `/api/status` | 版本、加载器、端口、pid、运行时长——用于自动发现 |
| `/api/cmd` | 上面那套动作面 |
| `/api/screenshot` | 捕获帧缓冲，可叠加坐标网格 |
| `/api/events` | 用于实时观察的服务端推送事件流 |
| `/api/calls` | 调用日志 |
| `/debug` | 面向人的仪表板 |

截图端点的**坐标网格**是让其余一切可用的关键：代理截一张带网格的图，读出按钮在哪，然后按该坐标发送点击。没有它，模型只能瞎猜像素位置。

## 它擅长什么

设计意图中的循环是测试你自己的模组：

1. 让代理打开你的 GUI。
2. 让它截图并描述所见。
3. 让它点完一整套流程。
4. 让它通过 `getPlayerInfo` / `getWorldInfo` 或一条命令验证方块或物品行为是否正确。

由于一切都走反射而非版本特定 API，同一套代理脚本可跨 Minecraft 版本工作——见[工作原理](04_how_it_works)。

[返回首页](index)
