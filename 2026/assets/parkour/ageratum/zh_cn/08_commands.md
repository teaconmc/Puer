---
title: "命令"
navigation:
  title: "08 命令"
---

# 命令

`parkour` 没有注册服务端命令根。唯一命令实现是 `DebugCommandHandler` 通过 `RegisterClientCommandsEvent` 注册的客户端调试树。

## `/parkour debug`

客户端命令语法为 `/parkour debug <type>`，其中 `<type>` 是以下之一：

| 类型 | 效果 |
|:---|:---|
| `wall_slide` | 只显示墙滑传感器调试盒 |
| `wall_run` | 只显示墙跑传感器调试盒 |
| `wall_climb` | 只显示爬墙传感器调试盒 |
| `wall_jump` | 只显示蹬墙跳传感器调试盒 |
| `armhang_eye` | 只显示垂挂眼位传感器调试盒 |
| `armhang_top` | 只显示垂挂顶位传感器调试盒 |
| `nothing` | 隐藏所有传感器调试盒 |

每个非 `nothing` 命令都会把 `DebugSensorRenderHandler.DEBUG_TYPE` 切换到对应类型并输出聊天消息；`nothing` 会隐藏全部渲染。由于这些是客户端命令，不涉及服务端权限等级，也不会改变游戏玩法状态。

[返回首页](index)
