scoreboard players add temp mpar_temp 1

scoreboard players operation phase mpar_temp = @s mpar_tick
scoreboard players operation phase mpar_temp += @s mpar_omega
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp1"]}
execute store result entity @e[tag=stmp1,limit=1] Rotation[0] float 1 run scoreboard players operation phase mpar_temp < @s mpar_alpha
execute positioned 0.0 0.0 0.0 rotated as @e[tag=stmp1,limit=1] run function math:loop27
kill @e[tag=stmp1]

scoreboard players add @s mpar_tick 1

execute if score @s mpar_tick = @s mpar_alpha run kill @s

execute if score temp mpar_temp < @s mpar_v if score @s mpar_tick < @s mpar_alpha run function math:loop28