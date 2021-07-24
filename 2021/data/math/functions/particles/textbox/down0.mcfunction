execute store result score temp mpar_temp run data get entity @s Pos[0] 10000
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation temp mpar_temp += tempx mpar_temp

execute store result score temp mpar_temp run data get entity @s Pos[1] 10000
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation temp mpar_temp += tempy mpar_temp

execute store result score temp mpar_temp run data get entity @s Pos[2] 10000
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation temp mpar_temp += tempz mpar_temp