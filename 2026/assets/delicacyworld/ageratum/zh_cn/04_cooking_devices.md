---
title: "烹饪设备"
navigation:
  title: "04 烹饪设备"
items:
  - "delicacyworld:steamer"
  - "delicacyworld:boiling_pot"
  - "delicacyworld:wok"
  - "delicacyworld:drink_mixer"
  - "delicacyworld:sink"
---

# 烹饪设备

烹饪由代码驱动而不是数据包配方：生食物品会被对应设备加工成带品质元数据的熟食。Ageratum 没有这些代码驱动转换的渲染器，因此不能使用 `<recipe>` 组件引用烹饪配方。

## 蒸笼与饮品搅拌器

右键打开双槽烹饪设备菜单：0 号槽放生食材料，1 号槽放熟食输出。成品会留在设备中，直到被取出。

## 煮锅与炒锅

设备空闲且未在烹饪时，手持匹配生食右键即可直接开始烹饪。成品会作为物品实体弹出，烹饪期间设备附近会显示浮动倒计时。

## 设备对应表

| 设备 | 菜品 |
|:---|:---|
| `steamer` | `raw_mantou`、`raw_xiaolongbao`、`raw_rice_roll`、`raw_black_pepper_t_bone` |
| `boiling_pot` | `raw_luotiao`、`raw_guilin_rice_noodles`、`raw_fuding_pork_slices`、`raw_chaoshan_beef` |
| `wok` | `raw_egg_fried_rice`、`raw_fried_rice_noodles`、`raw_linyi_fried_chicken`、`raw_boiled_pork_slices` |
| `drink_mixer` | `raw_flower_tea`、`raw_watermelon_honey_juice`、`raw_cappuccino`、`raw_sparkling_watermelon_ice_cream` |

## 营业库存

营业期间，通过菜单放入设备的原料会与餐厅的临时营业库存联动：设备要求库存中存在对应生食，并在完成时从库存扣除一份，而不是每次都消耗设备输入槽。煮锅和炒锅的直接烹饪使用玩家手中的物品堆。`allowCookingOutsideBusiness` 为 true（默认）时，非营业状态也可以烹饪。

## 洗手池

洗手池是独立工作台，使用同样的双槽菜单结构。它将水桶转换为水桶装水，耗时 100 tick；将玻璃瓶转换为药水，耗时 40 tick。

## 可配置烹饪时间

每道菜的烹饪时间可通过 `dishCookTicks` 配置。默认值：基础菜品 400 tick（20 秒），普通菜品 600 tick（30 秒），肠粉、福鼎肉片、临沂炒鸡和卡布奇诺为 1200 tick（60 秒），其余进阶菜品为 2400 tick（120 秒）。

[返回首页](index)
