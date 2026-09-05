# 仅对处于阶段3的玩家（tag=in_jinja_explore）触发；其他玩家静默撤销
execute unless entity @s[tag=in_jinja_explore] run advancement revoke @s only ashihara:well_kapera
execute if entity @s[tag=in_jinja_explore] if predicate inkraft:in_any_story run tellraw @s {"text":"你似乎还处在对话中。请先结束当前对话，再回来看看这口井。","color":"yellow"}
execute if entity @s[tag=in_jinja_explore] if predicate inkraft:in_any_story run advancement revoke @s only ashihara:well_kapera
execute if entity @s[tag=in_jinja_explore] unless predicate inkraft:in_any_story run inkraft start ashihara:well_kapera
