---
title: "开发者 API"
navigation:
  title: "06 开发者 API"
---

# 开发者 API

更多交互的设计目标就是供其他模组使用。公开接口由一个注解、一个接口和一个构建类组成。

## 注册提供者

给一个类加上 `@InteractionAutoRegister` 注解，并让它实现 `InteractionRegister`：

- 在模组构造阶段，更多交互会遍历所有已加载模组的注解扫描数据。
- 对每一个在类型层级被注解的类，它通过**无参构造器**实例化该类并调用 `init()`。
- 成功与失败都会记录日志；抛出异常的提供者会被记为错误并跳过，绝不会影响其他提供者。

由于实例化使用无参构造器，提供者类必须是具体类并且具备无参构造器。

## 添加交互

`InteractionRegister` 以默认方法提供四个注册辅助方法：

| 方法 | 注册对象 |
|:---|:---|
| `addForBlock(id, name, interaction)` | 单个方块，按注册表 ID 字符串 |
| `addForBlocks(filter, name, interaction)` | 方块注册表中匹配谓词的每个方块 |
| `addForEntity(id, name, interaction)` | 单个实体类型，按注册表 ID 字符串 |
| `addForEntities(filter, name, interaction)` | 注册表中匹配谓词的每个实体类型 |

`name` 参数既是映射键，也是标签来源。空的 `name` 会被静默忽略，因此不会为它注册任何内容。为同一目标重复注册同一 `name` 会替换先前条目；其余条目保持插入顺序，也就是它们的绘制顺序。

::: warning
`addForBlocks` 与 `addForEntities` 在被调用的那一刻遍历内置注册表，而 `init()` 运行于模组构造阶段 —— 早于其他模组注册自己的方块与实体类型。因此批量过滤只能看到那一刻已存在的内容。跨模组目标请使用按 ID 的重载。
:::

## 构建交互

`Interaction` 通过静态工厂创建，每个工厂接受一个条件和一个动作：

| 工厂方法 | 交给你的代码的目标类型 |
|:---|:---|
| `Interaction.withEntity(condition, action)` | 经类型检查后的 `Entity` |
| `Interaction.withBlock(condition, action)` | 经类型检查后的 `BlockPos` |
| `Interaction.withAny(condition, action)` | 原始目标对象 |

`withEntity` 与 `withBlock` 是 `withAny` 之上的薄封装，会先做目标类型检查，因此方块交互绝不会收到实体。`InteractionRegister` 也把 `withEntity` 与 `withBlock` 作为默认方法暴露以便使用。`Interaction.EMPTY` 是一个共享的恒为真且什么都不做的实例，可用作占位行。

有两个可链式调用的修饰方法：

- `tips(...)` —— 接受字符串列表或可变参数并追加。玩家尝试使用锁定选项时随机选取一条。字符串按翻译键处理，无对应键时回退为字面文本。
- `icon(...)` —— 设置可选的 14×14 贴图标识符，绘制在行的左侧。`null` 表示无图标。

`copy()` 会产生一个共享同一条件与动作的新实例，并复制提示与图标。

## 分端判断由你负责

这是 API 中最重要的约定。玩家激活选项时，客户端会依次做两件事：

1. 在**客户端本地**执行该动作。
2. 发送 `extra_interaction:send_interaction` 数据包，随后服务端再次执行同一动作。

也就是说你的动作在每一端各被调用一次。任何不能执行两次的逻辑 —— 生成实体、给予物品、修改世界状态、执行命令 —— 都必须判断世界是否为服务端，就像随包的实体对话动作那样在客户端提前返回。

::: warning
动作运行时**不会**重新测试条件。当前源码中执行路径内的复查处于注释状态，因此 `accept` 总是直接调用动作。请让你的动作自行校验前置条件，而不要相信条件已经通过。这一点为何不止影响正确性，请见[网络与服务器注意事项](07_networking_and_server_notes)。
:::

## 占位符解析器

占位符表是可扩展的：`SimplePlaceholder.addResolver(name, function)` 注册一个解析器，它接收玩家与当前目标并返回字符串，返回 `null` 表示保留该记号不变。六个内置解析器记录在[占位符](04_placeholders)中。

## 客户端集成面

作为参考，模组的客户端挂钩为：

- `RegisterKeyMappingsEvent`，用于交互键。
- `RenderGuiEvent.Post`，用于选项列表。
- `InputEvent.Key` 用于激活，`InputEvent.MouseScrollingEvent` 用于选择，后者在列表占用滚动时被取消。
- 一个作用于原版按键处理的客户端专用 mixin，在 `extra_interaction.mixins.json` 中声明为必需；另有一条访问转换器条目，用于暴露绘制这些行所需的 GUI 渲染状态。

[返回首页](index)
