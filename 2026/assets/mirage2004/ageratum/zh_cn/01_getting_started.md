---
title: 获取开始
navigation:
  title: 获取开始
description: 四个创造分页、为什么什么都不能合成，以及如何读懂方块 ID。
---

# 获取开始

## 获得方块

模组**没有配方**——整个模组里不存在 `recipe/` 目录。一切来自：

- 四个创造分页，或
- `/give @s mirage2004:<方块ID>`。

275 个方块**每一个都有**战利品表，因此放下之后破坏会掉落自身。建造过程不损失材料；只有最初的获取是创造模式限定。

## 四个创造分页

| 分页 | 图标 | 装什么 |
|:---|:---|:---|
| `materials` | `small_tile_white` | 各种形状的表面材料 |
| `windows` | `curtain_glass_blue` | 玻璃、框窗、预制阳台 |
| `infrastructure` | —— | 电线杆、电线、线缆系统、防盗网 |
| （第四个） | —— | 其余分组 |

这个划分比看起来重要：**`infrastructure` 才是街道构件所在处**，而如果你只是浏览墙面贴图，最容易漏掉的正是这一半。

## 如何读懂方块 ID

ID 由生成它们的那两个轴拼成：

```
mirage2004:<材料族>_<颜色>_<形状>
```

直接取自目录的例子：

| ID | 材料族 | 颜色 | 形状 |
|:---|:---|:---|:---|
| `small_tile_white` | 小方砖 | 白 | （实心） |
| `curtain_glass_blue` | 幕墙玻璃 | 蓝 | （实心） |
| `concrete_utility_pole_gray_pole` | 水泥电线杆 | 灰 | 杆 |
| `power_line_black_wire` | 电线 | 黑 | 线 |
| `framed_window_2_white_clear_pane` | 框窗 2 | 白 + 透明 | 窗格 |
| `prefab_window_balcony_black_blue_balcony_left` | 预制阳台窗 | 黑 + 蓝 | 阳台（左） |

一旦知道想要的材料族与颜色，**通常可以直接猜出 ID** 而不必翻分页。注意玻璃类材料族带**两个**颜色词——先框色再玻璃色（`white_clear`、`black_blue`、`white_green`）。

## 一次实际的首建

这个模组是围绕立面设计的，所以就建一个立面：

1. **墙面**——选一个时代感的砖或抹灰材料族与颜色（`dirty_white` 脏白、`pale_cream` 浅米黄、`sunlit_mustard` 日晒芥黄）。
2. **窗**——把 `framed_window_*` 窗格嵌进墙洞；它们厚 2/16 且居中，不与墙面齐平。
3. **阳台**——`prefab_window_balcony_*_balcony_left` 与 `_right` 成对。它们是**互为镜像的两半**，不是一整块。
4. **防盗网**——在窗前放 `security_grille_*`。注意[窗与防盗网](04_windows_and_grilles)里的连接规则。
5. **街道**——路边一根 `concrete_utility_pole_gray_pole`，杆间牵 `power_line_*_wire`。

第 3–5 步才是让它读起来像 2004 年而不是普通公寓楼的关键。

## 没有配置，没有命令

没有配置文件，也没有命令。`Config` 类存在，但**声明零个选项且从未被注册**，因此 `config/` 下不会生成任何东西。模组做的一切都在方块本身里。

[返回首页](index)
