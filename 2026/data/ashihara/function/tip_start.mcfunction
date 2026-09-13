# 由「神社历史笔记」命令碎片调用。
# 注意：必须放在函数里执行 —— 函数在解析期用的是 function-permission-level
# （server.properties，默认 2 级）构造的非玩家编译源，因此 /inkraft start 的
# admin 检查可以通过；若直接由道具在运行时执行 inkraft start，则 Inkraft 会
# 回到"玩家档案权限"上判定，无 op 的玩家会被拒绝。
execute unless predicate inkraft:in_any_story run inkraft start ashihara:player_tip_note
