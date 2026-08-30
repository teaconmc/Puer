---
title: "实体对话数据包"
navigation:
  title: "03 实体对话"
---

# 实体对话数据包

`entity_talk` 是模组唯一自带的交互，并且完全由数据驱动。它让数据包可以表达：「当玩家看向某类型、且显示名称正好是某个值的实体时，提供一个执行这些命令的选项」。

## 文件位置

```
data/<namespace>/extra_interaction/entity_talk/<任意名称>.json
```

文件由注册为 `extra_interaction:entity_talk` 的服务端重载监听器收集，因此 `/reload` 能读取到改动。随包示例位于 `data/example/extra_interaction/entity_talk/example.json`。

## 文件格式

根对象只需要一个 `talks` 数组。每个元素接受三个字段，每个字段既可以是单个字符串，也可以是字符串数组。

| 字段 | 含义 |
|:---|:---|
| `id` | 该条目适用的实体类型注册表 ID |
| `name` | 实体必须具备的精确显示名称 |
| `commands` | 要执行的命令；每次触发随机选取一条 |

随包示例的完整内容：

```json
{
  "talks": [
    {
      "id": ["minecraft:player", "minecraft:mannequin"],
      "name": "Zi_Min",
      "commands": [
        "tellraw @s \"Hello!\"",
        "tellraw @s \"Hello again!\""
      ]
    },
    {
      "id": ["minecraft:player", "minecraft:mannequin"],
      "name": ["Amotassic", "zhenshiz"],
      "commands": [
        "chatbox skip example:teacon_intro start 0 <uuid>"
      ]
    }
  ]
}
```

当 `id` 与 `name` 同时为数组时，所有组合都会被注册，所以上面第二条覆盖了四组「名称 + 类型」配对。

## 匹配机制

选项注册在**实体类型**上，但其条件比较的是**实时显示名称**。具体来说：

- 任何 `id` 字段中出现过的实体类型都会注册一个选项，内部名称为 `` `<name>` ``。
- 当实体当前的显示名称字符串与该类型下某个 `name` 值精确相等时，条件通过。
- 由于比较使用显示名称，用命名牌给生物改名即可启用或停用该选项；对 `minecraft:player` 而言则是与账号名匹配。

因为同一实体类型的所有对话条目会合并为单个选项，实体不会同时显示两行对话。你看到的标签是实体自己的名字 —— 内部选项名就是 `` `<name>` `` 占位符，而占位符在绘制时才解析。

## 命令执行

当选项在服务端被触发时：

1. 从 `commands` 中随机选取一条。
2. 针对交互玩家与目标实体解析其中的[占位符](04_placeholders)。
3. 结果按 `;` 切分，每段去除首尾空白，存在前导 `/` 时去掉，空白段跳过。
4. 逐段执行剩余命令。

因此单个 `commands` 条目可以串联多条命令：`"say a; say b"` 会执行两条。

::: warning
命令通过一个被显式提升到游戏管理员权限（等级 `2`）并抑制输出的命令源执行。触发交互的玩家自身权限**不会**被参考。因此任何能看向匹配实体并按下交互键的玩家，都能执行数据包作者写下的那些 2 级命令。请把 `entity_talk` 文件视为受信任的服务器内容，用审阅函数文件的标准来审阅它们。
:::

由玩家触发时命令源就是该玩家，因此 `@s` 指向这名玩家。

## 重载行为

加载后的对话数据还会在数据包同步时推送给客户端 —— 玩家加入时发给该玩家，服务端 `/reload` 后发给所有在线玩家 —— 因为客户端需要同一份表来判断选项是否应绘制为可用。

::: warning
删除对话条目在游戏或服务器重启前不会完全生效。重载时模组会清除已注册的选项行，然后用新条目重建对话表，但内部那张表本身从未被先行清空，因此来自已删除或已修改文件的「名称—命令」配对仍留在内存中。新增与修改条目符合预期；要确保删除生效则需要重启。
:::

## 随包的 ChatBox 示例

模组 jar 中还带有 `data/example/chatbox/dialogues/teacon_intro.json` 与 `data/example/chatbox/dialogues/maigua.json`。这两个文件属于独立的 ChatBox 模组的数据域，存在的目的只是让第二条示例对话有东西可打开。更多交互只把 `neoforge` 与 `minecraft` 列为依赖，因此在未安装 ChatBox 的环境中，这些对话文件不起作用，`chatbox …` 命令也会失败。

[返回首页](index)
