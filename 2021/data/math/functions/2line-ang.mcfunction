tag @e remove result
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp0"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp1"]}
tag @s add stmp3
execute as @e[tag=stmp0] run function math:2line3
execute as @e[tag=stmp] run function math:2line4
execute as @e[tag=stmp1] run function math:2line5
execute as @e[tag=stmp] at @s facing entity @e[tag=stmp1,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[tag=stmp0] at @s facing entity @e[tag=stmp1,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute store result score stemp int run data get entity @e[tag=stmp0,limit=1] Rotation[0] -10000
execute store result entity @e[tag=stmp,limit=1] Rotation[0] float -0.0001 run scoreboard players operation stemp int += input int
execute store result entity @e[tag=stmp0,limit=1] Rotation[0] float -0.0001 run scoreboard players add stemp int 1800000
tp @e[tag=stmp0] ~ ~ ~
tp @e[tag=stmp] ~ ~ ~
execute as @e[tag=stmp0] at @s run tp @s ^ ^ ^5.0
execute as @e[tag=stmp] at @s run tp @s ^ ^ ^5.0
summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{line:[[0.0d,0.0d],[0.0d,0.0d]]}},Tags:["stmp2","result"],NoGravity:true}
data modify entity @e[tag=stmp2,limit=1] Item.tag.line[0][0] set from entity @e[tag=stmp0,limit=1] Pos[0]
data modify entity @e[tag=stmp2,limit=1] Item.tag.line[0][1] set from entity @e[tag=stmp0,limit=1] Pos[2]
data modify entity @e[tag=stmp2,limit=1] Item.tag.line[1][0] set from entity @e[tag=stmp,limit=1] Pos[0]
data modify entity @e[tag=stmp2,limit=1] Item.tag.line[1][1] set from entity @e[tag=stmp,limit=1] Pos[2]
tag @e remove stmp2
kill @e[tag=stmp0]
kill @e[tag=stmp]
kill @e[tag=stmp1]
tag @e remove stmp3