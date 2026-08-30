---
title: "命令"
navigation:
  title: "11 命令"
---

# 命令

动态的树注册了基础命令 `/dt`，别名 `/dynamictrees`。别名需要管理员权限；多数子命令只需 2 级权限（多数服务器上普通玩家即可运行）。

| 命令 | 权限 | 作用 |
|:---|:---|:---|
| `/dt gettree <pos> [code_raw]` | 2 级 | 显示该位置的树的树种与 JoCode；`code_raw` 输出未格式化的原始代码。 |
| `/dt getroots <pos> [code_raw]` | 2 级 | 显示该位置的树根的树种与 JoCode。 |
| `/dt growpulse <pos> [number]` | 管理员 | 对该位置的树触发 `number` 次生长脉冲（默认/最小为 1）。 |
| `/dt killtree <pos>` | 管理员 | 摧毁该位置的树，不掉落木料。 |
| `/dt registry <registry> list [raw]` | 2 级 | 列出动态树注册表的内容：`registry`、`cellkit`、`leavesproperties`、`growthlogickit`、`family`、`genfeature`、`fruit`、`pod`、`species`、`soilproperties`。 |
| `/dt fertility <pos> [raw]` | 读取 2 级；设置数值需管理员 | 读取该位置根系土壤肥力；带数值 `0..15` 时设置。 |
| `/dt settree <pos> <species> [jo_code] [turns] [fertility]` | 管理员 | 创建指定树种的树，可带 JoCode、转向数与肥力；支持树根 JoCode 分支。 |
| `/dt rotatejocode <jo_code> <turns>` | 2 级 | 把 JoCode 旋转指定圈数。 |
| `/dt createstaff <pos> <species> [jo_code] [color] [readOnly] [max_uses]` | 管理员 | 在该位置创建绑定树种与选项的林地法杖——见[林地法杖与 JoCode](09_woodland_staff_and_jocodes)。 |
| `/dt setcoordxor <xor>` | 管理员 | 设置用于确定性世界生成放置的坐标异或值。 |
| `/dt clearorphaned [pos [radius]]` | 2 级 | 清理该位置周边（默认半径：一个区块）不再属于存活树木的残留树数据。 |
| `/dt purgetrees [pos [radius]]` | 管理员 | 破坏性地移除该位置周边的全部树结构——请谨慎使用。 |

::: note
`/dt transform` 与 `/dt createtransformpotion` 的注册在当前源码中被注释，因此不可用。
:::

[返回动态的树首页](index)