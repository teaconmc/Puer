#获取向量基
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.0 {Tags:["stmp"]}
execute store result score v0 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score v1 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score v2 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
execute positioned 0.0 0.0 0.0 run tp @e[tag=stmp] ^-1.0 ^ ^
execute store result score u0 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score u1 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score u2 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
kill @e[tag=stmp]

#原点
execute store result score x0 mpar_temp run data get entity @s Pos[0] 10000
execute store result score y0 mpar_temp run data get entity @s Pos[1] 10000
execute store result score z0 mpar_temp run data get entity @s Pos[2] 10000
#移除标签
tag @s remove circle


scoreboard players operation r0 mpar_temp = @s mpar_r
scoreboard players operation @s mpar_tick = @s mpar_omega
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp2"]}
execute store result entity @e[tag=stmp2,limit=1] Rotation[0] float 1 run scoreboard players get @s mpar_omega
execute positioned 0.0 0.0 0.0 rotated as @e[tag=stmp2,limit=1] run function math:loop23
kill @e[tag=stmp2]
kill @s