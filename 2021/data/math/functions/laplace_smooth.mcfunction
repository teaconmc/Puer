summon item ~ 255.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1]}},Tags:["stmp"]}
execute store result score input int run data get entity @s Item.tag.list[0]
scoreboard players add input int 1
execute as @e[tag=stmp] run function math:operation/bit0/break
scoreboard players set input int 10000
execute as @e[tag=stmp] run function math:operation/bit0/mult
function math:sum
execute store result score stemp int run data get entity @s Item.tag.list
scoreboard players operation input int = result int
scoreboard players operation input int += stemp int
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
kill @e[tag=stmp]