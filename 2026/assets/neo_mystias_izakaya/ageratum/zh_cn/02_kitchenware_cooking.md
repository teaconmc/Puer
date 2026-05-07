---
title: "厨具与烹饪"
navigation:
  title: "厨具与烹饪"
---

# 厨具与烹饪

## 五种厨具

所有厨具方块共用同一套烹饪逻辑，但只接受 `kitchenware` 标签与自身类型匹配的配方。

| 方块 | 物品 ID | 厨具标签 | 配方数 |
|:---|:---|:---|:---|
| 煮锅 | `neo_mystias_izakaya:cooker/boiling_pot` | `#neo_mystias_izakaya:boiling_pot` | 38 |
| 料理台 | `neo_mystias_izakaya:cooker/cutting_board` | `#neo_mystias_izakaya:cutting_board` | 36 |
| 油锅 | `neo_mystias_izakaya:cooker/frying_pan` | `#neo_mystias_izakaya:frying_pan` | 36 |
| 烤架 | `neo_mystias_izakaya:cooker/grill` | `#neo_mystias_izakaya:grill` | 17 |
| 蒸锅 | `neo_mystias_izakaya:cooker/steamer` | `#neo_mystias_izakaya:steamer` | 37 |

通用方块标签 `#neo_mystias_izakaya:kitchenware` 包含上述五个标签。有一个通用配方 `neo_mystias_izakaya:cuisines/dark_matter` 指向 `#neo_mystias_izakaya:kitchenware`，需要五个 `minecraft:barrier` 食材，`time` 为 0。

## 槽位与界面

厨具方块实体共有六个槽：五个食材槽与一个输出槽。主手为空时右键打开菜单。食材槽在方块未点亮时接受 `#neo_mystias_izakaya:ingredient` 物品，每格最多放一个。输出槽禁止玩家直接放入物品；制作完成后对它潜行 Shift 点击即可取回料理。

左侧配方网格根据当前食材与厨具标签计算可能产物。点击一个配方格会发送烹饪请求。右侧面板列出当前玩家餐厅菜单中该厨具可制作的料理；点击其中一项会请求服务端从已绑定的橱柜与玩家背包提取所需食材。当前源码中，这个菜单点击只会填充食材，真正开始烹饪仍需要点击左侧匹配的配方格。

## 烹饪流程

1. 在槽位中放入最多五种带 `#neo_mystias_izakaya:ingredient` 的食材。
2. 在“可能配方”网格中点击想要制作的料理。
3. 服务端重新校验配方，方块点亮并开始倒计时。
4. 计时归零后，料理成品出现在输出槽。

生成数据中的配方 `time` 单位为 tick，范围是 0 到 24。例如 `time` 为 7 时约 0.35 秒；界面按 `(总时间 - 剩余时间) / 20` 显示秒数进度。

## 当前行为说明

当前烹饪逻辑只消耗前四个食材槽中的物品。第五个食材的正向标签仍会参与结果计算，但当前实现不会消耗第五个食材。如果额外食材的正向标签与配方的负向标签冲突，输出会变成 `neo_mystias_izakaya:cuisines/dark_matter`（见[配方与标签](03_recipes_and_tags)）。

[返回首页](index)
