#获取目标
scoreboard players operation temp int = @s int
execute as @e if score @s talisman_id = temp int run tag @s add tmp

#接近
execute at @s facing entity @e[tag=tmp,limit=1] eyes run tp @e[tag=math_marker,limit=1] ~ ~ ~ ~ ~
data modify entity @s Rotation set from entity @e[tag=math_marker,limit=1] Rotation
scoreboard players add @s int1 1
execute if score @s int1 matches 15.. run function talisman_skills:crit_golem/jump
execute if score @s int1 matches 15.. run scoreboard players set @s int1 0

#攻击
execute at @s if entity @e[tag=tmp,distance=..5.0] run function talisman_skills:crit_golem/attack

#清除
execute unless entity @e[tag=tmp] run tag @s remove targeted
execute if score @s int2 matches 50.. run tag @s remove targeted
tag @e remove tmp