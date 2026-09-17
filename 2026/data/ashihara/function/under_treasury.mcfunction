# 神宝库 · 被撬开的箱子（隐形 NPC 右键 · 计数）
execute unless entity @s[tag=in_jinja_under] run return 0
execute if entity @s[tag=jinja_under_treasury] run return 0
execute if predicate ashihara:in_under_story run return 0
execute if predicate inkraft:in_any_story run function ashihara:under_busy_hint
execute if predicate inkraft:in_any_story run return 0
inkraft start ashihara:under_treasury
