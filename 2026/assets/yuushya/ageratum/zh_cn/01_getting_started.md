---
title: "蓝图与创造栏"
navigation:
  title: "01 蓝图与创造栏"
items:
  - "yuushya:block_blueprint"
  - "yuushya:wood_blueprint"
  - "yuushya:stone_blueprint"
  - "yuushya:extra_shapes_blueprint"
  - "yuushya:window_blueprint"
  - "yuushya:furniture_blueprint"
  - "yuushya:fabric_blueprint"
  - "yuushya:lighting_blueprint"
  - "yuushya:facility_blueprint"
  - "yuushya:traffic_blueprint"
  - "yuushya:living_being_blueprint"
  - "yuushya:sign_blueprint"
  - "yuushya:catering_blueprint"
  - "yuushya:store_blueprint"
---

# 蓝图与创造栏

## 创造栏

模组注册了十六个内容创造栏（另有 `item` 栏放工具、蓝图与帽子）。每个内容栏在 `data/yuushya/register/item_group.json` 中配置图标与蓝图物品：

| 创造栏 | 蓝图物品 |
|:---|:---|
| `extra_blocks` | `yuushya:block_blueprint` |
| `wood` | `yuushya:wood_blueprint` |
| `stone` | `yuushya:stone_blueprint` |
| `extra_shapes` | `yuushya:extra_shapes_blueprint` |
| `window` | `yuushya:window_blueprint` |
| `furniture` | `yuushya:furniture_blueprint` |
| `fabric` | `yuushya:fabric_blueprint` |
| `lighting` | `yuushya:lighting_blueprint` |
| `electrical_appliance` | `yuushya:lighting_blueprint` |
| `living_being` | `yuushya:living_being_blueprint` |
| `signs` | `yuushya:sign_blueprint` |
| `catering` | `yuushya:catering_blueprint` |
| `store` | `yuushya:store_blueprint` |
| `infrastructure` | `yuushya:facility_blueprint` |
| `traffic` | `yuushya:traffic_blueprint` |
| `structure` | `yuushya:extra_shapes_blueprint` |

## 蓝图物品

每张蓝图都是可堆叠的普通物品。使用时整组从手中消耗（创造模式也会消耗），并打开切石机式菜单，蓝图已放入输入槽。菜单输出列表来自该栏对应的切石机配方，由模组数据生成器生成。

::: note
当前源码树没有静态 `data/yuushya/recipes` 文件。切石机配方由构建期数据生成器根据注册数据中的 `auto_generated.recipe` 字段生成，因此这里按工作流描述，不引用固定配方 ID。
:::

[返回首页](index)
