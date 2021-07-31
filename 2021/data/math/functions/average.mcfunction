summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{tmp:[],bit0:[0,0,0,0,0,1]}},Tags:["stmp"]}
data modify entity @e[tag=stmp,limit=1] Item.tag.tmp set from entity @s Item.tag.list
execute store result score stempc int run data get entity @s Item.tag.list
scoreboard players set stempl int 0
execute if score stempc int matches 1.. as @e[tag=stmp] run function math:loop10
scoreboard players operation input int = stempc int
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
kill @e[tag=stmp]