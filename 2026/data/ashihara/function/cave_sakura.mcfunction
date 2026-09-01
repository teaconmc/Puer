execute if predicate inkraft:in_any_story run tellraw @s {"text":"你似乎还处在对话中。请先结束当前对话，再回来探查这个洞穴。","color":"yellow"}
execute if predicate inkraft:in_any_story run advancement revoke @s only ashihara:cave_sakura
execute unless predicate inkraft:in_any_story run inkraft start ashihara:cave_sakura
