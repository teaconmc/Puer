summon item ~ 180.0 ~ {Tags:["stmp1"],Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1],bit1:[0,0,0,0,0,1],bit2:[0,0,0,0,0,1]}}}

scoreboard players operation input int = stempa int
execute as @e[tag=stmp1] run function math:operation/bit0/break
scoreboard players operation input int = stempb int
execute as @e[tag=stmp1] run function math:operation/bit1/break
scoreboard players operation input int = stempc int
execute as @e[tag=stmp1] run function math:operation/bit2/break

scoreboard players operation input int = stempk int

execute as @e[tag=stmp1] run function math:operation/bit0/mult
execute as @e[tag=stmp1] run function math:operation/bit1/mult
execute as @e[tag=stmp1] run function math:operation/bit2/mult

execute as @e[tag=stmp1] run function math:operation/bit0/1-3
scoreboard players operation -stempx int += stempx1 int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation -stempx int += result int
execute as @e[tag=stmp1] run function math:operation/bit1/1-3
scoreboard players operation -stempy int += stempy1 int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation -stempy int += result int
execute as @e[tag=stmp1] run function math:operation/bit2/1-3
scoreboard players operation -stempz int += stempz1 int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation -stempz int += result int

execute store result entity @s Duration short 1 run scoreboard players get duration int

kill @e[tag=stmp1]
tag @s remove stmp