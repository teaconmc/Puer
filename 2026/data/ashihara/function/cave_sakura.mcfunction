# 仅对处于隐藏剧情阶段2+的玩家（tag=jinja_phase2）触发；其他玩家静默撤销
execute unless entity @s[tag=jinja_phase2] run advancement revoke @s only ashihara:cave_sakura
execute if entity @s[tag=jinja_phase2] if predicate inkraft:in_any_story run tellraw @s {"text":"你似乎还处在对话中。请先结束当前对话，再回来探查这个洞穴。","color":"yellow"}
execute if entity @s[tag=jinja_phase2] if predicate inkraft:in_any_story run advancement revoke @s only ashihara:cave_sakura
execute if entity @s[tag=jinja_phase2] unless predicate inkraft:in_any_story run inkraft start ashihara:cave_sakura
