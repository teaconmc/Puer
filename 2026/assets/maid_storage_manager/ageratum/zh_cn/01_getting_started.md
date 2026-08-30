---
title: 入门
navigation:
  title: 入门
description: 一切都在女仆魔法阵制作，一切都是物品，没有一个是方块。
---

# 入门

## 一切都出自女仆魔法阵

全部十五件物品都用**母模组的魔法阵**配方类型制作——`touhou_little_maid:altar`。它们**没有工作台配方、没有自定义机器、也没有任何原版合成配方**。

本附属 22 个配方中有 16 个是魔法阵配方。只要你已经会用车万女仆的魔法阵，这里的一切你都能做出来。

其中两件物品有**多条路径**，值得单独指出：

| 物品 | 路径 |
|:---|:---|
| `logistics_guide` | 两条不同的魔法阵配方 |
| `progress_pad` | 两条魔法阵配方，外加一条复用配方 |

## 本附属没有任何方块

物品注册表有十五项，而**根本不存在方块注册表**。这个模组的每一件东西都是你携带、佩戴、递给女仆或挂进物品展示框的**物品**。

这也回答了另一个本会让人起疑的问题：本附属**零战利品表**，而这是**正确的而非缺口**——它没有任何方块可以掉落东西。

## 十五件物品

按用途分组：

| 分组 | 物品 |
|:---|:---|
| **标记仓库** | `storage_define_bauble`、`allow_access`、`no_access`、`change_flag` |
| **库存清单** | `inventory_list`、`written_inventory_list` |
| **请求** | `request_list`、`virtual_request_list`、`filter_list` |
| **物流** | `logistics_guide`、`work_card` |
| **合成** | `craft_guide`、`portable_craft_calculator_bauble` |
| **监控** | `progress_pad` |
| **通信** | `configurable_communicate_terminal` |

其中两件是**饰品（bauble）**——`storage_define_bauble` 与 `portable_craft_calculator_bauble`——即佩戴而非手持。

## 纸张可复用：复制与重置

除魔法阵之外，本附属还注册了**两种自己的配方类型**，两者的存在都是为了省下重新配置的功夫：

**`maid_storage_manager:copy`** —— 复制一件已配置好的物品。适用于 `change_flag`、`craft_guide`、`filter_list` 与 `request_list`。**认真配好一张，然后按需复制多少份。**

**`maid_storage_manager:list_clear`** —— 擦除一件已用过的物品以便重新填写。适用于 `inventory_list`、`progress_pad` 与 `request_list`。

所以请求单不是一次性文具：**写好、复制给别的女仆、任务变更时重置。**

## 三条转换配方

另有三条配方注册在 `minecraft` 命名空间而非本附属自己的命名空间下：

| 转换 | 效果 |
|:---|:---|
| `no_access` → `allow_access` | 翻转访问标记 |
| `allow_access` → `no_access` | 翻回来 |
| `storage_define_bauble` → 自身 | 重置该饰品 |

它们功能正常，命名空间的选择属于 datagen 细节，与你的操作无关。

## 关于配方展示的说明

本指南**刻意不嵌入配方组件**。本附属的每一条配方都是自定义类型——母模组的魔法阵，或本附属自己的复制与清空类型——而自定义机器配方不使用标准配方组件展示。请在游戏内用 JEI 或 EMI 查看；两者都是已声明的可选依赖，本附属也与它们做了集成。

## 让女仆干活的最短路径

1. 在魔法阵制作一枚 **`storage_define_bauble`** 并佩戴。
2. 标记你希望被管理的箱子——见 [02 标记仓库](02_storage_marking)。
3. 制作一张 **`request_list`**，写上你想要的东西，递给女仆。
4. 制作一块 **`progress_pad`**，装进物品展示框，看她干活——见 [05 进度板](05_progress_pad)。

[返回首页](index)
