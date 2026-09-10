# 对话中：提示先结束当前对话，避免打断/重开
execute if predicate inkraft:in_any_story run tellraw @s {"text":"你似乎还处在对话中。请先结束当前对话。","color":"yellow"}
execute if predicate inkraft:in_any_story run advancement revoke @s only ashihara:daily
execute if predicate inkraft:in_any_story run return 0
advancement revoke @s only ashihara:daily
inkraft start ashihara:daily
