summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1]}},Tags:["stmp"]}
scoreboard players operation input int = disstemp4 int
execute as @e[tag=stmp] run function math:operation/bit0/break
scoreboard players set input int 10000
execute as @e[tag=stmp] run function math:operation/bit0/mult
scoreboard players operation input int = disstemp1 int
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
kill @e[tag=stmp]