#获取吸引子坐标
tag @e[tag=attractor,limit=1,sort=nearest] add stmp
execute store result score x0 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score y0 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
tag @e remove stmp

#获取当前坐标
execute store result score x1 mpar_temp run data get entity @s Pos[0] 10000
execute store result score y1 mpar_temp run data get entity @s Pos[2] 10000

#相减
scoreboard players operation x1 mpar_temp -= x0 mpar_temp
scoreboard players operation y1 mpar_temp -= y0 mpar_temp

#计算旋转角度，三角函数值
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
scoreboard players operation @s mpar_omega += @s mpar_alpha
execute store result entity @e[tag=stmp,limit=1] Rotation[0] float -0.001 run scoreboard players operation @s mpar_omega < @s mpar_omega1
execute as @e[tag=stmp] at @s run tp @s ^ ^ ^1.0
execute store result score sin mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score cos mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
kill @e[tag=stmp]

#旋转矩阵,储存位置
scoreboard players operation x2 mpar_temp = x1 mpar_temp
scoreboard players operation x2 mpar_temp *= cos mpar_temp
scoreboard players operation y2 mpar_temp = y1 mpar_temp
scoreboard players operation y2 mpar_temp *= sin mpar_temp
scoreboard players operation x2 mpar_temp -= y2 mpar_temp
scoreboard players operation x2 mpar_temp /= 10000 mpar_const
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation x2 mpar_temp += x0 mpar_temp


scoreboard players operation y2 mpar_temp = x1 mpar_temp
scoreboard players operation y2 mpar_temp *= sin mpar_temp
scoreboard players operation x2 mpar_temp = y1 mpar_temp
scoreboard players operation x2 mpar_temp *= cos mpar_temp
scoreboard players operation y2 mpar_temp += x2 mpar_temp
scoreboard players operation y2 mpar_temp /= 10000 mpar_const
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation y2 mpar_temp += y0 mpar_temp