---
title: "组件与发射器"
navigation:
  title: "06 组件与发射器"
---

# 组件与发射器

魔法四叶草注册了三个持久化数据组件。它们适合命令、战利品表和数据包生成的定制成品。

## 来源命名空间

```mcfunction
/give @s advanced_clover:magic_clover[advanced_clover:ingredient_namespace={namespace:"ae2"}]
```

`ingredient_namespace.namespace` 是字符串。常规动态合成会自动把另一件材料的模组 ID 写入这里。

## 自定义实体列表

```mcfunction
/give @s advanced_clover:magic_clover[advanced_clover:entity_list={chance:300,entity_list:["minecraft:zombie","minecraft:skeleton"]}]
```

- `chance` 使用 `0` 至 `1000`，除以 `10` 后就是百分比。
- `entity_list` 必须是至少含一个可召唤、可由 `EntityType.create` 创建的实体类型 ID 的字符串列表；仅在注册表中有效还不够。
- 字符串还可以在实体 ID 后携带 SNBT；用于正式内容前应在测试世界验证。

## 自定义物品列表

```mcfunction
/give @s advanced_clover:magic_clover[advanced_clover:item_list={item_list:["minecraft:diamond","minecraft:iron_ingot"]}]
```

`item_list.item_list` 只接受完整、精确的物品 ID，不支持正则或通配符。至少一个条目有效时，它会取代来源命名空间和全局名单。

## 发射器行为

发射器会消耗一枚魔法四叶草，并直接调用随机**物品**生成逻辑，再把结果发射出去。它不会执行实体概率，也不会读取自定义实体列表。若找不到有效物品，发射器会发射一个普通四叶草作为返还。

::: warning
不要把 `entity_list` 设为空列表：当前实现会在随机选择或提示文本阶段访问第一个条目，空列表可能导致异常。玩家等不可创建类型会触发两次失败处理并可能返还两个普通四叶草。`minecraft:ender_pearl` 实体还有一个特殊发射分支，但之后仍会继续创建通用实体，存在生成两个末影珍珠实体的风险。
:::

当前版本没有模组专用命令或按键；本页的 `/give` 只是原版管理员命令示例。

[返回进阶四叶草目录](index)
