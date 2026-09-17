# 归途符（阶段5 · 消耗品）——脱困优先，不检查对话状态
execute unless entity @s[tag=in_jinja_under] run tellraw @s {"text":"归途符没有反应。也许该在沉没的建筑群里使用它。","color":"yellow"}
execute unless entity @s[tag=in_jinja_under] run return 0
execute at @e[tag=fox_proxy,limit=1] run tp @s ~ ~ ~
# 不在对话中就顺手打开回报对话；正在对话中则只脱困、不抢对话
execute unless predicate inkraft:in_any_story run inkraft start ashihara:daily
