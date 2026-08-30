---
title: 芯片与配方
navigation:
  title: 芯片与配方
---

# 芯片与配方

## 工艺芯片

- **`process_chip`** —— 数据驱动的物品；`EtherProcessChipManager.foreach` 注册的芯片会出现在创造标签中，各自通过 `ProcessChipItem.getStackFor(id)` 获得。
- **`direct_input`** —— 芯片变体，用于把直入输入接入配方或机器。

## 配方答案物品

5×5、7×7 与 9×9 配方网格是处理工厂的答案物品：

- `ether_process_recipe_answer_5x5`
- `ether_process_recipe_answer_7x7`
- `ether_process_recipe_answer_9x9`

## 自定义配方

注册了两种配方类型（`RecipeTypeRegistry` / `RecipeSerializerRegistry`）：

- **`NodeProcessRecipe`** —— 节点级处理配方。
- **`EtherProcessFactoryRecipe`** —— 工厂配方，使用 `DelayedIngredient` 包装器延迟解析 `SizedIngredient` 或标签查找。

芯片匹配网格形状；工厂将输入与配方匹配并产出答案。

[返回首页](index)