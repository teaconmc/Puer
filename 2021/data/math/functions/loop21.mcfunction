scoreboard players operation x mpar_temp = u0 mpar_temp
scoreboard players operation y mpar_temp = v0 mpar_temp
scoreboard players operation x mpar_temp *= u mpar_temp
scoreboard players operation y mpar_temp *= v mpar_temp
scoreboard players operation x mpar_temp += y mpar_temp
scoreboard players operation x mpar_temp /= 100 mpar_const
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation x mpar_temp += x0 mpar_temp

scoreboard players operation y mpar_temp = u1 mpar_temp
scoreboard players operation x mpar_temp = v1 mpar_temp
scoreboard players operation y mpar_temp *= u mpar_temp
scoreboard players operation x mpar_temp *= v mpar_temp
scoreboard players operation y mpar_temp += x mpar_temp
scoreboard players operation y mpar_temp /= 100 mpar_const
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation y mpar_temp += y0 mpar_temp

scoreboard players operation z mpar_temp = u2 mpar_temp
scoreboard players operation x mpar_temp = v2 mpar_temp
scoreboard players operation z mpar_temp *= u mpar_temp
scoreboard players operation x mpar_temp *= v mpar_temp
scoreboard players operation z mpar_temp += x mpar_temp
scoreboard players operation z mpar_temp /= 100 mpar_const
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation z mpar_temp += z0 mpar_temp