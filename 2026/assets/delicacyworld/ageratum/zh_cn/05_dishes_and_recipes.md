---
title: "菜品与食谱"
navigation:
  title: "05 菜品与食谱"
items:
  - "delicacyworld:mantou_recipe"
  - "delicacyworld:raw_mantou"
  - "delicacyworld:cooked_mantou"
---

# 菜品与食谱

模组注册了 16 道菜。每道菜都有三个物品：`<dish>_recipe`（食谱）、`raw_<dish>`（生食）和 `cooked_<dish>`（熟食）。熟食是方块物品，可以摆放到餐桌、备餐台或冰箱顶部作为食物模型。

## 菜品表

| 菜品 | 阶位 | 设备 | 默认价格 | 默认烹饪时间 |
|:---|:---|:---|:---:|:---:|
| `mantou`（馒头） | 基础 | `steamer` | 500 | 20 秒 |
| `luotiao`（粿条） | 基础 | `boiling_pot` | 500 | 20 秒 |
| `egg_fried_rice`（蛋炒饭） | 基础 | `wok` | 500 | 20 秒 |
| `flower_tea`（花茶） | 基础 | `drink_mixer` | 500 | 20 秒 |
| `xiaolongbao`（小笼包） | 普通 | `steamer` | 1500 | 30 秒 |
| `guilin_rice_noodles`（桂林米粉） | 普通 | `boiling_pot` | 1500 | 30 秒 |
| `fried_rice_noodles`（炒河粉） | 普通 | `wok` | 1500 | 30 秒 |
| `watermelon_honey_juice`（西瓜蜂蜜汁） | 普通 | `drink_mixer` | 1500 | 30 秒 |
| `rice_roll`（肠粉） | 进阶 | `steamer` | 5000 | 60 秒 |
| `fuding_pork_slices`（福鼎肉片） | 进阶 | `boiling_pot` | 5000 | 60 秒 |
| `linyi_fried_chicken`（临沂炒鸡） | 进阶 | `wok` | 5000 | 60 秒 |
| `cappuccino`（卡布奇诺） | 进阶 | `drink_mixer` | 5000 | 60 秒 |
| `black_pepper_t_bone`（黑椒 T 仔骨） | 进阶 | `steamer` | 5000 | 120 秒 |
| `chaoshan_beef`（潮汕烫牛肉） | 进阶 | `boiling_pot` | 5000 | 120 秒 |
| `boiled_pork_slices`（水煮肉片） | 进阶 | `wok` | 5000 | 120 秒 |
| `sparkling_watermelon_ice_cream`（亮闪闪西瓜冰淇淋） | 进阶 | `drink_mixer` | 5000 | 120 秒 |

## 生食合成配方

数据生成器为每道菜生成一个无序配方，配方 ID 均为 `raw_<dish>`。

::: danger
**这 16 个配方一个都不会被加载。** 它们被写入 `data/delicacyworld/recipes/` —— 这是 Minecraft 1.20.x 及更早使用的**复数**目录名。Minecraft 在 1.21.2 把该数据包目录改为**单数 `recipe/`**，而本模组面向 **26.1.2**（其自带 `pack.mcmeta` 声明 `pack_format: 88`）。游戏从不扫描复数目录，因此**尽管配方文件确实躺在磁盘上，本模组的每一道菜在生存中都无法合成**。同批同版本的模组（`cc_mb`、`better_rod`）用的都是单数形式。把目录改名为 `recipe` 就是全部修复，文件内容无需改动。
:::

完整配方材料如下：

| 配方 ID | 材料 |
|:---|:---|
| `raw_mantou` | 小麦、水桶 |
| `raw_luotiao` | 小麦、水桶、盐 |
| `raw_egg_fried_rice` | 小麦、鸡蛋、酱油 |
| `raw_flower_tea` | 水桶、菊花、糖 |
| `raw_xiaolongbao` | 小麦、猪排、香菇、水桶 |
| `raw_guilin_rice_noodles` | 小麦、猪排、酱油、盐 |
| `raw_fried_rice_noodles` | 小麦、鸡蛋、酱油、辣椒 |
| `raw_watermelon_honey_juice` | 西瓜片、蜂蜜瓶、水桶 |
| `raw_rice_roll` | 小麦、水桶、酱油、香菇 |
| `raw_fuding_pork_slices` | 猪排、辣椒、白胡椒、酱油 |
| `raw_linyi_fried_chicken` | 鸡肉、胡椒粉、香辣酱、小麦 |
| `raw_cappuccino` | 牛奶瓶、糖、可可豆、水桶 |
| `raw_black_pepper_t_bone` | 牛肉、黑椒酱、白胡椒、盐 |
| `raw_chaoshan_beef` | 牛肉、辣椒、白胡椒、酱油 |
| `raw_boiled_pork_slices` | 猪排、辣椒、香辣酱、酱油 |
| `raw_sparkling_watermelon_ice_cream` | 西瓜片、牛奶瓶、糖、蜂蜜瓶 |

## 食谱物品获取

食谱物品带有来源提示。当前实现有三条途径：

- 基础食谱：图书管理员村民获得 2 个随机交易，每个售价 5 个金锭。
- 普通食谱：流浪商人获得 2 个随机交易，每个售价 1 个绿宝石；原版宝箱也有概率增加一个（废弃矿井 36%、简单地牢 34%、要塞走廊 40%、要塞交叉口 38%）。
- 进阶食谱：原版宝箱有概率增加一个（末地城宝藏 45%、远古城市 45%、试炼密室奖励 42%、不祥奖励 50%、林地府邸 42%）；末影龙和监守者必然尝试掉落一个，被闪电击中的苦力怕有 25% 概率。

食谱 JSON 目录中没有烹饪配方；[烹饪设备](04_cooking_devices)中的设备对应关系是唯一的烹饪路径。

[返回首页](index)
