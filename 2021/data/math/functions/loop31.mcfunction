scoreboard players add temp1 mpar_temp 1
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp"]}
execute store result entity @e[tag=tmp,limit=1] Rotation[0] float -1 run scoreboard players add @s mpar_tick 1
execute as @e[tag=tmp] at @s run tp @s ^ ^ ^1.0
execute store result score cos mpar_temp run data get entity @e[tag=tmp,limit=1] Pos[2] 1000
execute store result score sin mpar_temp run data get entity @e[tag=tmp,limit=1] Pos[0] 1000
scoreboard players operation @s mpar_u = cos mpar_temp
scoreboard players operation @s mpar_u *= @s mpar_r
scoreboard players operation @s mpar_w = sin mpar_temp
scoreboard players operation @s mpar_w *= @s mpar_r

scoreboard players operation tempx mpar_temp = @s mpar_u0
scoreboard players operation tempx mpar_temp *= @s mpar_u
scoreboard players operation temp mpar_temp = @s mpar_w0
scoreboard players operation temp mpar_temp *= @s mpar_w
scoreboard players operation tempx mpar_temp += temp mpar_temp

scoreboard players operation tempy mpar_temp = @s mpar_u1
scoreboard players operation tempy mpar_temp *= @s mpar_u
scoreboard players operation temp mpar_temp = @s mpar_w1
scoreboard players operation temp mpar_temp *= @s mpar_w
scoreboard players operation tempy mpar_temp += temp mpar_temp

scoreboard players operation tempz mpar_temp = @s mpar_u2
scoreboard players operation tempz mpar_temp *= @s mpar_u
scoreboard players operation temp mpar_temp = @s mpar_w2
scoreboard players operation temp mpar_temp *= @s mpar_w
scoreboard players operation tempz mpar_temp += temp mpar_temp

scoreboard players operation tempx mpar_temp /= 10000 mpar_const
scoreboard players operation tempy mpar_temp /= 10000 mpar_const
scoreboard players operation tempz mpar_temp /= 10000 mpar_const

scoreboard players operation tempx mpar_temp += @s mpar_x
scoreboard players operation tempy mpar_temp += @s mpar_y
scoreboard players operation tempz mpar_temp += @s mpar_z

kill @e[tag=tmp]
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp"]}
tag @s add tmp2
execute as @e[tag=tmp] run function math:loop29
tag @e remove tmp
tag @s remove tmp2

execute if score temp1 mpar_temp < @s mpar_omega run function math:loop31