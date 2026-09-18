# ============================================================
# 【酒狐线重置 · 共用入口】把 target 交给剧本执行
# 调用前需要先写好 storage minecraft:jinja_reset target
# 剧本读完会自己把 target 删掉，所以不会留下残留值。
# ============================================================

# 对话中不允许重置：不然会把正在播的剧情掐掉，状态也对不上
execute if predicate inkraft:in_any_story run tellraw @s {"text":"[酒狐线重置] 你还在对话中。请先结束当前对话，再来重置。","color":"yellow"}
execute if predicate inkraft:in_any_story run return 0

inkraft start ashihara:jinja_reset
