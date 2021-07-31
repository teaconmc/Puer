tag @e remove result
summon area_effect_cloud ~ ~ ~ {Tags:["stmp","result","point","mid"]}
execute store result score stemp int run data get entity @s Pos[0] 10000
execute store result score stemp1 int run data get entity @s Pos[1] 10000
execute store result score stemp2 int run data get entity @s Pos[2] 10000
execute store result score 1stemp int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score 1stemp1 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score 1stemp2 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
scoreboard players operation stemp int += 1stemp int
scoreboard players operation stemp1 int += 1stemp1 int
scoreboard players operation stemp2 int += 1stemp2 int
execute as @e[tag=stmp,limit=1] run function math:mid1
execute store result entity @e[tag=stmp,limit=1] Duration short 1 run scoreboard players get duration int
tag @e remove stmp