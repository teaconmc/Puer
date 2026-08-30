---
title: 配方
navigation:
  title: 配方
description: 自定义阵配方格式、它的数据包限制、重载行为与缺口。
---

# 配方

## 一套完全自定义的配方系统

阵配方不走原版配方管理器。模组自带类型 `magic_io:zhen_block`，并配有自己的加载器、管理器、序列化器与同步载荷。

一条配方长这样：

```json
{
  "type": "magic_io:zhen_block",
  "zhen_type": "magic_io:abundant_conflux_zhen",
  "inputs": {
    "item_input_all": [{"item": "minecraft:stone", "count": 1}]
  },
  "outputs": {
    "item_output_all": [{"item": "minecraft:cobblestone", "count": 8}],
    "drop_output": [{"loot_table": "magic_io:ore_attract"}]
  },
  "processing_time": 200
}
```

有三点值得注意：

- **`zhen_type` 指名一个具体的分级方块**，含前缀。为 `abundant_conflux_zhen` 写的配方不会在 `archaic_conflux_zhen` 上运行。
- **输入与输出以槽位区索引**，而非槽位下标——与面访问映射使用的是同一套区名。见 [04 阵总线与 IO](04_zhen_bus_and_io)。
- **输出可以是一个战利品表**而非固定物品堆，通过 `drop_output` 实现。这正是 JEI 分类中「± Loot」提示的含义：这类输出是一次掷骰，而非保证。

## 加载、重载与同步

加载路径是手写的，值得理解，因为它有实际影响：

- 配方是通过**扫描 `recipe` 目录中命名空间为 `magic_io` 的 JSON 文件**收集的。这在服务器启动时发生，并通过一个已注册的重载监听器再次发生。
- **`/reload` 有效。** 重载监听器会清空管理器并重新读取全部内容，因此迭代配方无需重启。
- 加载好的配方会用同步载荷**推送给客户端**，在服务器启动时与玩家登录时各一次。JEI 正是靠此知道它们的存在。
- **原版熔炉配方会被注入**进阵配方管理器，因此熔炼配方无需重写即可被阵机器使用。
- 畸形配方会被逐文件捕获、记录并跳过——**一个坏 JSON 不会拖垮其余配方**。

### 数据包限制

由于扫描按 **`magic_io` 命名空间**过滤，添加阵配方的数据包必须把文件放在 **`data/magic_io/recipe/`** 下。放在你自己命名空间下的配方**永远不会被看到**，无论 JSON 多么正确。

这是整合包作者最需要知道的一点，而游戏内不会有任何报告——被忽略的配方只是从不出现。

## 随包内容

35 个配方文件，按层级分目录组织：

| 层级 | 配方数 |
|:---|--:|
| 不稳定 | 4 |
| 稳定 | 7 |
| 坚固 | 8 |
| 丰沛 | 8 |
| 古老 | 7 |
| 原初 | **1** |

对照 **138 个阵方块**，这是一份样本而非完整覆盖。大多数阵型无可加工之物，而原初层级的 37 个方块只有整整一条配方。

有一件具体产物值得知道：**`coal_coke` 是 `unstable/cinder` 配方的输出**，这正是它作为已注册物品却不出现在创造分页中的原因。

## 有两个战利品表引用是断的

模组包含三个战利品表：`random_treasure`、`sift_metal_drop` 与 `zhen_loot`。

而配方引用了**四个**：

| 被引用 | 是否存在 | 被谁引用 |
|:---|:---|:---|
| `magic_io:random_treasure` | ✔ | |
| `magic_io:sift_metal_drop` | ✔ | |
| **`magic_io:ore_attract`** | ✘ **缺失** | `abundant/conflux` |
| **`magic_io:ore_fragment`** | ✘ **缺失** | `abundant/quake` |

因此**丰沛汇流阵**与**丰沛震阵**两条配方的掉落输出指向了并不随包的战利品表。这两条配方仍会产出其常规物品输出，只是那次额外掷骰不产生任何东西。

另请注意 `zhen_loot` 确实存在但**没有任何配方引用它**，而且三个表全都声明为 `minecraft:empty` 类型。

如果你要围绕本模组做整合包，用数据包补上 `ore_attract` 与 `ore_fragment` 即可恢复设计意图中的额外掉落。

[返回首页](index)
