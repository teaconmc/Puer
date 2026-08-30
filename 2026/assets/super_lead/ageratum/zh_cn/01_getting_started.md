---
title: "开始使用"
navigation:
  title: "01 开始使用"
items:
  - "super_lead:super_lead"
  - "super_lead:basic_cargo_manifest"
  - "super_lead:advanced_cargo_manifest"
  - "super_lead:preset_binder"
---

# 开始使用

## 合成

| 产物 | 配方 |
|:---|:---|
| `super_lead:super_lead` | 一个原版拴绳（无序） |
| `super_lead:basic_cargo_manifest` | 纸 + 线 |
| `super_lead:advanced_cargo_manifest` | 基础货物清单 + 书 |
| `super_lead:preset_binder` | 纸 + 线 + 红石 + 铁锭 |

`super_lead:attachment_tuner` 在当前数据包中没有配方。所有超级绳物品都会加入原版**工具与实用物品**创造栏。

## 放置绳索

1. 右键方块面设置第一锚点。锚点可贴在任意方块面，不限于栅栏；栅栏与铁栏杆会充当绳「结」。
2. 右键第二个方块即可创建连接。

再次右击**同一个锚点**会消耗一根原版拴绳并延长一格长度单位（最多 4 倍）。潜行 + 右键锚点可以用相同方式延长已有绳索。创造模式下延长不消耗物品。

## 升级绳索

手持超级绳并潜行 + 右键，可用对应材料原地转换或升级其种类：

- 红石块 → 红石绳（双向红石信号）
- 铁块 → 能量绳（FE 传输）；随后红石块可提升其 tier
- 漏斗 → 物品绳（带路由的物品运输）
- 炼药锅 → 流体绳（流体传输）
- 钢块（Mekanism）→ 压力绳（化学/气体传输）
- 铜块（Mekanism）→ 热量绳（热量传输）
- 福鲁伊克斯块（AE2）→ ME 电缆绳（AE2 频道桥接）

部分升级与连接操作需要**潜行 + 右键**；不潜行持同一物品则用于装饰。

## 管理绳索

- **剪断**：手持剪刀右键绳索（或栅栏结）即可剪断并掉落物品。成功会消耗非创造玩家的剪刀耐久。
- **悬挂物品**：主手持有可悬挂物品（灯笼、告示牌、方块等）、副手持线，右键绳索即可悬挂。告示牌可染色、发光并在世界中编辑；左键可切换方块/物品显示模式。
- **调谐器 / 预设绑定器**：`super_lead:attachment_tuner` 打开单个附件的显示配置；`super_lead:preset_binder` 管理已保存的绳索预设。
- **滑索**：手持铁链或铜链右键绳索即可骑行；按 Shift 离开。

## 货物清单

右键 `super_lead:basic_cargo_manifest` 或 `super_lead:advanced_cargo_manifest` 会打开一个菜单，用于筛选物品绳要运输的物品。基础清单按物品筛选；高级清单额外支持标签与 NBT 匹配（白名单或黑名单，可选精确 NBT 匹配）。清单内容存储在 `super_lead:cargo_manifest_items` 组件中。

## 配置

通用配置（`super_lead-common.toml`）包含 `energy.base_transfer_per_tick`（tier 0 默认 256 FE/t）、`energy.tier_max_level`（默认 30）、`network.max_leash_distance`（每长度单位默认 12 格，范围 4–32）、`network.max_ropes_per_block_face`（默认 8）、`network.item_transfer_interval_ticks`（默认 4）、`network.fluid_bucket_amount`（默认 1000 mB），以及物品/流体/压力/热量绳的 tier 上限和 `presets.allow_op_visual_presets`。

## 控制与依赖

该模组只注册一个客户端按键 `key.super_lead.open_config`，位于杂项分类，默认未绑定，用于打开调优配置界面。绳索按维度存储在 `super_lead:lead_connections` 存档中。Mekanism（提供压力/热量绳）与 Applied Energistics 2（提供 ME 电缆绳）为可选集成。

[返回首页](index)
