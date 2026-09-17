# 本殿下方溶洞末端 · 「门之钥」（隐形 NPC 右键触发）
# 前置：phase5 收尾打的 tag in_jinja_kanden；已拿过（tag fhtagn）则静默
execute unless entity @s[tag=in_jinja_kanden] run return 0
execute if entity @s[tag=fhtagn] run return 0
execute if predicate inkraft:in_any_story run function ashihara:under_busy_hint
execute if predicate inkraft:in_any_story run return 0
inkraft start ashihara:honden_tablet
