#获取目标
execute unless entity @s[tag=targeted] if entity @e[type=#talisman_skills:withermob,distance=..10] run function talisman_skills:crit_golem/target
#接近目标
execute if entity @s[tag=targeted] run function talisman_skills:crit_golem/approach