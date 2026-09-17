# 最大洞厅（位置触发 · 氛围 · 不计数）
execute unless entity @s[tag=in_jinja_under] run advancement revoke @s only ashihara:under_building
execute unless entity @s[tag=in_jinja_under] run return 0
execute if entity @s[tag=jinja_under_building] run advancement revoke @s only ashihara:under_building
execute if entity @s[tag=jinja_under_building] run return 0
execute if predicate ashihara:in_under_story run advancement revoke @s only ashihara:under_building
execute if predicate ashihara:in_under_story run return 0
execute if predicate inkraft:in_any_story run function ashihara:under_busy_hint
execute if predicate inkraft:in_any_story run advancement revoke @s only ashihara:under_building
execute if predicate inkraft:in_any_story run return 0
advancement revoke @s only ashihara:under_building
inkraft start ashihara:under_building
