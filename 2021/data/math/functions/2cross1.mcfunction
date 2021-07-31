summon item ~ 180.0 ~ {Tags:["stmp"],Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1]}}}
execute store result score input int run scoreboard players operation stempb1 int -= stempb2 int
execute as @e[tag=stmp] run function math:operation/bit0/break
scoreboard players set input int 10000
execute as @e[tag=stmp] run function math:operation/bit0/mult
execute store result score input int run scoreboard players operation stempk2 int -= stempk1 int
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
execute store result score stempy int run scoreboard players operation stempx int = result int
kill @e[tag=stmp]
scoreboard players operation stempb1 int += stempb2 int
scoreboard players operation stempy int /= 100 int
scoreboard players operation stempk1 int /= 100 int
scoreboard players operation stempy int *= stempk1 int
scoreboard players operation stempy int += stempb1 int