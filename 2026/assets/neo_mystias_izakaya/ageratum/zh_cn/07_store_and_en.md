---
title: "商店与 EN"
navigation:
  title: "商店与 EN"
---

# 商店与 EN

## EN 货币

经济单位注册为 `neo_mystias_izakaya:en`，界面显示为 円。每位玩家默认从 0 EN 开始，余额存放在 `balance` 玩家附件中。余额在死亡时复制保留，所有余额变动都会记录到 `transaction` 附件。

商店购买会消耗 EN。餐桌销售会把 EN 支付给餐厅店主。当前源码中，下面列出的调试命令是唯一内置的给玩家发放 EN 的方式。

## 商店界面

河童电话方块（`neo_mystias_izakaya:store`；物品 `neo_mystias_izakaya:misc/store`，中文界面名称为“河童电话”）在主手为空时右键打开客户端商店界面。它提供食材与酒水分类页、全部物品视图、购物车、总计和玩家当前 EN 余额。

重载时服务端会重建三个商店：

- `neo_mystias_izakaya:ingredients`：全部已注册食材。
- `neo_mystias_izakaya:beverages`：全部已注册酒水。
- `neo_mystias_izakaya:all`：两者的合集。

## 价格与购买

基础价格来自 `data/neo_mystias_izakaya/neo_mystias_izakaya/economy/default.json`。每次重载都会以 `0.4 * Math.random()` 初始化每个物品的折扣。购买价为 `(int)(price * count * (1 - discount))`，折扣可能让总额变成 0。

购买成功后会从买家余额扣除 EN，并把购买的物品栈以掉落物实体生成在玩家位置，而不是直接放入背包。物品提示与配方卡片上显示的价格也来自同一份经济数据。

## 调试命令

命令根节点为 `/neo_mystias_izakaya debug`：

- `/neo_mystias_izakaya debug balance set <count>` 设置执行者的 EN 余额。
- `/neo_mystias_izakaya debug tag getItemList <tag>` 输出带某正/负向标签列表的物品。
- `/neo_mystias_izakaya debug tag getTagListRaw <item>` 输出某个物品 ID 的标签列表数据。

已检查的命令类没有实现权限检查，因此请把它们当作仅供本地测试与私有服务器使用的调试命令，而不是管理员门禁工具。

[返回首页](index)
