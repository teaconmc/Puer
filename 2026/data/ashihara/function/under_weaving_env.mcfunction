# 機殿 · 环境段（位置触发 · 不计数）
execute unless entity @s[tag=in_jinja_under] run advancement revoke @s only ashihara:under_weaving_env
execute unless entity @s[tag=in_jinja_under] run return 0
execute if entity @s[tag=jinja_under_weaving_env] run advancement revoke @s only ashihara:under_weaving_env
execute if entity @s[tag=jinja_under_weaving_env] run return 0
execute if predicate ashihara:in_under_story run advancement revoke @s only ashihara:under_weaving_env
execute if predicate ashihara:in_under_story run return 0
execute if predicate inkraft:in_any_story run function ashihara:under_busy_hint
execute if predicate inkraft:in_any_story run advancement revoke @s only ashihara:under_weaving_env
execute if predicate inkraft:in_any_story run return 0
advancement revoke @s only ashihara:under_weaving_env
inkraft start ashihara:under_weaving_env
