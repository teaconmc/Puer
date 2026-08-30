---
title: 电力与核能
navigation:
  title: 电力与核能
---

# 电力与核能

本模组为铁砧工艺电力网格提供多种发电与储能方式，外加核能线：核能收集器、铀棒与核弹。

## 太阳能板

`solar_panel` 太阳能板是一种在白天工作的可放置电力生产者。它需要下方实心面，并拒绝放置在 3×3×3 范围内已有其它面板的位置（"离另一个太阳能板太近了"）。其输出等于天空亮度减去当前天空变暗值（0–15），下雨时减半，夜间为 0。放置只受间距限制，不受视线遮挡影响。

其合成配方使用日光传感器、向日葵与铁板：

<recipe id="anvilcraftextrapower:solar_panel_from_circuit_board"/>

## 核能收集器与铀棒

`nuclear_collector` 集核器是本模组的高输出电力生产者。它实现 `IPowerProducer`，向铁砧工艺的 `PowerGrid` 电力网格供电。

- 它在自身周围 5×5×3 范围内探测铀棒，并产生**铀棒数 × `powerOutput_of_a_uraniumRod`** 的电力（默认每棒 150）。范围内的核弹或铁砧工艺钚方块也计为 1 根铀棒。
- 探测到的铀棒会被点燃（`ACTIVE = 5`）。铀棒还会根据可提供的水量累积热量。
- 它必须由上方水体冷却；耗水会排干水/冰（水→空气，蓝冰→浮冰→冰→水）。没有足够水时收集器升温最快。
- 当热量达到热限的 2/3 时为**过热**需要冷却；达到热限时被替换为蘑菇云（堆芯熔毁）。
- 周围 9×5×9 内存在另一个集核器会使其停机（"离另一个集核器太近了"）；附近无铀棒时报"没有铀棒在附近"。

`uranium_rod` 铀棒是三段方块，作为反应堆燃料。未受控时会对 75 格内实体施加凋零 II 效果。`frost_controller` 浮霜控制器可以放在铀棒附近削减其活性（5 − 控制器数，最小 1），通入红石可完全关闭。

已确认的合成配方：

<recipe id="anvilcraftextrapower:nuclear_collector"/>
<recipe id="anvilcraftextrapower:nuclear_bomb"/>

## 核弹与蘑菇云

`nuclear_bomb` 核弹是铁砧类（可坠落）方块：从高处砸落碎裂时会召唤 `mushroom_cloud` 蘑菇云，伴随闪光、屏幕震动、爆炸音效与粒子。死亡信息使用 `anvilcraftextrapower:nuclear_explosion` 伤害类型（"%1$s 在闪光中化为了砧子"）。

注意（当前源码）：蘑菇云代码把 `canGrief` 硬编码为 `false`，因此目前核弹只会产生动画/震动/闪光/音效并清除附近掉落物，**不会真正破坏方块或伤害实体**。此行为可能在后续版本改变。

## 储能

电池与电容器物品均挂 `anvilcraftextrapower:capacitor` 标签，通过铁砧工艺充电器充放电：

| 物品 | 充电器行为 |
|:---|:---|
| `lead_acid_battery` 铅酸电池 / `lead_acid_battery_empty` 空铅酸电池 | 放电把满电池变为空电池（长时间低功率输出）；充电从空形式充满 |
| `multiphase_capacitor` 多相电容器 / `multiphase_capacitor_empty` 空多相电容器 | 放电把它变为空电容器；充电消耗 `multiphase_matter` 多相物质 |
| `potato_battery` 土豆电池 / `flashing_potato_battery` 闪电土豆电池 | 电池方块（也可戴在头上）。丢到火/岩浆/红热方块上会变成烤马铃薯；被闪电击中变成闪电变体，后者以极高功率短时放电 |

已确认的合成配方：

<recipe id="anvilcraftextrapower:potato_battery"/>
<recipe id="anvilcraftextrapower:lead_acid_battery_empty"/>
<recipe id="anvilcraftextrapower:multiphase_capacitor_empty"/>
<recipe id="anvilcraftextrapower:multiphase_capacitor"/>

## 步进器

`pedometer` 步进器注册了方向/进度/通电动状态，但在当前源码中步进逻辑尚未实现：它没有有效方块实体且进度从不推进，因此目前尚不计步或输出红石。

[返回首页](index)
