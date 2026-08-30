---
title: "进度与配置"
navigation:
  title: "进度与配置"
---

# 进度与配置

## 进度

| 进度 | 触发条件 |
|:---|:---|
| `harvestheritage:welcome` | 加入游戏时自动获得（根进度） |
| `harvestheritage:find_it` | 获得放大镜 |
| `harvestheritage:kfc` | 食用疯狂星期四 |
| `harvestheritage:fride_seedsack` | 食用瓜子袋 |
| `harvestheritage:max_seed_packet` | 获得速度与产出均达到配置上限的种子袋 |

`max_seed_packet` 是一个挑战进度：种子袋必须满足 `speed == seed_speed_max` **且** `output == output_max`，只是数值高还不够。

## 服务端配置

模组注册了一个服务端配置，只有两个键：

| 键 | 默认值 | 含义 |
|:---|:---|:---|
| `seed_speed_max` | `31` | 杂交为新的种子袋滚动速度时允许的上限 |
| `output_max` | `31` | 杂交为新的种子袋滚动产出时允许的上限 |

`max_seed_packet` 进度判定也使用这两个值。模组会注册一个客户端配置文件，但它没有键。

::: note
上限只在杂交滚动新属性时生效。世界存档里已经存在的种子袋在降低上限后不会被重新钳制，因此以前培育出的种子袋可以保留超过新上限的数值。
:::

本模组没有注册任何命令。

[返回首页](index)
