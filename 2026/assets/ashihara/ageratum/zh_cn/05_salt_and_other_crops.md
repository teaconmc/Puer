---
title: "盐田与其他作物"
navigation:
  title: "05 盐田与其他作物"
items:
  - "ashihara:salt_field"
  - "ashihara:coarse_salt"
  - "ashihara:cucumber"
  - "ashihara:sweet_potato"
  - "ashihara:tomato"
  - "ashihara:soy_bean"
  - "ashihara:tea_seeds"
---

# 盐田与其他作物

<block id="ashihara:salt_field"/>

用宽刃铁锄处理沙子可建立盐田。盐田在没有得到水分时会逐渐干燥；达到可收获状态后，用锹取得粗盐。粗盐还能在研钵中加工成细盐，用于料理和腌渍。

<recipe id="ashihara:roasted_sweet_potato"/>

苇原还注册了黄瓜、甘薯、番茄、黄豆、茶树等作物与食材。甘薯有熔炉、烟熏炉和营火烤制路线；其他作物则主要供切配、锅煮或发酵使用。

## 种子来源缺陷

资源中存在让破坏草掉落黄瓜、甘薯、番茄、黄豆和茶种子的战利品修改器文件，但 `global_loot_modifiers.json` 的 `entries` 列表为空，代码中也没有找到对应序列化器注册。这些预期掉落不会正常触发。

::: warning
只安装模组本体时，不要假定所有作物都能从草中取得。整合包需要用任务、战利品、交易或配方补充种子，否则相关料理链会缺少原料。
:::

[返回苇原目录](index)
