tag @e[tag=input,limit=1] add cestmp
tag @e[tag=input,limit=1,tag=!cestmp] add cestmp1
tag @e[tag=input,limit=1,tag=!cestmp,tag=!cestmp1] add cestmp2

execute store result score stemp1 int run data get entity @e[tag=cestmp,limit=1] Pos[0] 10000
execute store result score stemp2 int run data get entity @e[tag=cestmp,limit=1] Pos[2] 10000
execute store result score stemp3 int run data get entity @e[tag=cestmp1,limit=1] Pos[0] 10000
execute store result score stemp4 int run data get entity @e[tag=cestmp1,limit=1] Pos[2] 10000
execute store result score stemp5 int run data get entity @e[tag=cestmp2,limit=1] Pos[0] 10000
execute store result score stemp6 int run data get entity @e[tag=cestmp2,limit=1] Pos[2] 10000

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cestmp3"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["cestmp4"]}

scoreboard players operation stemp1 int += stemp3 int
scoreboard players operation stemp2 int += stemp4 int
execute as @e[tag=cestmp3,limit=1] run function math:center1
scoreboard players operation stemp5 int += stemp3 int
scoreboard players operation stemp6 int += stemp4 int
execute as @e[tag=cestmp4,limit=1] run function math:center2

tag @e remove input

execute as @e[tag=cestmp] positioned as @e[tag=cestmp1] run function math:2line-cre
tag @e[tag=result] add cestmp5
execute as @e[tag=cestmp5] positioned as @e[tag=cestmp3] run function math:2line-ver
tag @e[tag=result] add cestmp6
tag @e[tag=result] add input
execute as @e[tag=cestmp2] positioned as @e[tag=cestmp1] run function math:2line-cre
tag @e[tag=result] add cestmp7
execute as @e[tag=cestmp7] positioned as @e[tag=cestmp4] run function math:2line-ver
tag @e[tag=result] add cestmp8
tag @e[tag=result] add input1

tellraw @a {"nbt":"Item.tag.line","entity":"@e[tag=input,limit=1]"}
tellraw @a {"nbt":"Item.tag.line","entity":"@e[tag=input1,limit=1]"}

function math:2cross

tag @e[tag=result] remove cross
tag @e[tag=result] add center
data modify entity @e[tag=result,limit=1] Pos[1] set from entity @e[tag=cestmp1,limit=1] Pos[1]


execute as @e[tag=result] positioned as @e[tag=cestmp1] run function math:get-distance

tag @e remove cestmp
tag @e remove cestmp1
tag @e remove cestmp2
kill @e[tag=cestmp3]
kill @e[tag=cestmp4]
kill @e[tag=cestmp5]
kill @e[tag=cestmp6]
kill @e[tag=cestmp7]
kill @e[tag=cestmp8]