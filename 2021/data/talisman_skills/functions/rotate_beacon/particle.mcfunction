#旋转向量
execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -0.1 run scoreboard players set @s int 0
execute as @e[tag=math_marker] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.5
execute store result score cos int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
execute store result score sin int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
#坐标
execute store result score x2 int store result score x0 int store result score x1 int run data get entity @s Pos[0] 1000
execute store result score z2 int store result score z0 int store result score z1 int run data get entity @s Pos[2] 1000
#传送
tp @e[tag=math_marker,limit=1] ~ ~ ~
execute store result entity @e[tag=math_marker,limit=1] Pos[0] double 0.001 run scoreboard players operation x0 int += sin int
execute store result entity @e[tag=math_marker,limit=1] Pos[2] double 0.001 run scoreboard players operation z0 int += cos int
execute at @e[tag=math_marker,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rotate_beacon_rotate","tmp","mpar_end_rod"],Duration:1200,Rotation:[0.0f,-90.0f]}
execute store result entity @e[tag=math_marker,limit=1] Pos[0] double 0.001 run scoreboard players operation x1 int -= sin int
execute store result entity @e[tag=math_marker,limit=1] Pos[2] double 0.001 run scoreboard players operation z1 int -= cos int
execute at @e[tag=math_marker,limit=1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["rotate_beacon_rotate","tmp","mpar_end_rod"],Duration:1200,Rotation:[0.0f,-90.0f]}
scoreboard players operation @e[tag=tmp] x1 = x2 int
scoreboard players operation @e[tag=tmp] z1 = z2 int
scoreboard players set @e[tag=tmp] int 1800
scoreboard players set @e[tag=tmp,limit=1] int 0
#重置
tag @e remove tmp
scoreboard players set @s int1 0