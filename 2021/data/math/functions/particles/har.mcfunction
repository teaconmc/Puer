summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
execute store result entity @e[tag=stmp,limit=1] Rotation[0] float -1 run scoreboard players get @s mpar_har
execute as @e[tag=stmp] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos0 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[2] 100
execute store result entity @e[tag=stmp,limit=1] Rotation[0] float -1 run scoreboard players add @s mpar_har 5
execute as @e[tag=stmp] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[2] 100
kill @e[tag=stmp]

scoreboard players operation cos mpar_temp -= cos0 mpar_temp

execute store result score x mpar_temp run data get entity @s Pos[0] 10000
execute store result score y mpar_temp run data get entity @s Pos[1] 10000
execute store result score z mpar_temp run data get entity @s Pos[2] 10000

scoreboard players operation temp mpar_temp = @s mpar_harx
scoreboard players operation temp mpar_temp *= cos mpar_temp
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation x mpar_temp += temp mpar_temp

scoreboard players operation temp mpar_temp = @s mpar_hary
scoreboard players operation temp mpar_temp *= cos mpar_temp
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation y mpar_temp += temp mpar_temp

scoreboard players operation temp mpar_temp = @s mpar_harz
scoreboard players operation temp mpar_temp *= cos mpar_temp
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation z mpar_temp += temp mpar_temp