summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}

#获取坐标
execute store result score stemp1 int run data get entity @s Pos[0] 10000
execute store result score stemp2 int run data get entity @s Pos[1] 10000
execute store result score stemp3 int run data get entity @s Pos[2] 10000
execute store result score stemp4 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stemp5 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stemp6 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000

#获取距离
scoreboard players operation stemp1 int -= stemp4 int
scoreboard players operation stemp2 int -= stemp5 int
execute store result score stemp7 int run scoreboard players operation stemp3 int -= stemp6 int
scoreboard players operation stemp7 int += stemp2 int
execute store result score stemp10 int run scoreboard players operation stemp7 int += stemp1 int
execute store result entity @e[tag=stmp,limit=1] Pos[0] double 0.0001 run scoreboard players get stemp1 int
execute store result entity @e[tag=stmp,limit=1] Pos[1] double 0.0001 run scoreboard players get stemp2 int
execute store result entity @e[tag=stmp,limit=1] Pos[2] double 0.0001 run scoreboard players get stemp3 int
execute as @e[tag=stmp,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1
execute store result score stemp8 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stemp9 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
scoreboard players operation stemp8 int += stemp9 int
execute store result score stemp9 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
scoreboard players operation stemp8 int += stemp9 int
scoreboard players operation stemp10 int /= 10000 int
scoreboard players operation stemp7 int %= 10000 int
execute store result score stemp9 int run scoreboard players operation stemp10 int *= 10000 int
scoreboard players operation stemp7 int *= 10000 int
scoreboard players operation stemp10 int %= stemp8 int
scoreboard players operation stemp9 int /= stemp8 int
scoreboard players operation stemp10 int *= 10000 int
scoreboard players operation stemp7 int += stemp10 int
scoreboard players operation stemp7 int /= stemp8 int
scoreboard players operation stemp9 int *= 10000 int
scoreboard players operation stemp7 int += stemp9 int

#旋转，获取单位向量，获取位置向量
execute facing entity @s feet run tp @e[tag=stmp,limit=1] ~ ~ ~ ~ ~
execute as @e[tag=stmp,limit=1] store result score stemp8 int run data get entity @s Rotation[0] 10000
execute as @e[tag=stmp,limit=1] store result score stemp9 int run data get entity @s Rotation[1] 10000
execute as @e[tag=stmp,limit=1] store result entity @s Rotation[0] float 0.0001 run scoreboard players operation stemp8 int -= input int
execute as @e[tag=stmp,limit=1] store result entity @s Rotation[1] float 0.0001 run scoreboard players operation stemp9 int -= input1 int
execute as @e[tag=stmp,limit=1] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1
execute store result score stemp1 int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score stemp2 int run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score stemp3 int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000

scoreboard players operation stemp1 int *= stemp7 int
scoreboard players operation stemp2 int *= stemp7 int
scoreboard players operation stemp3 int *= stemp7 int
scoreboard players operation stemp1 int /= 1000 int
scoreboard players operation stemp2 int /= 1000 int
scoreboard players operation stemp3 int /= 1000 int

execute as @e[tag=stmp,limit=1] run function math:point-rotate4

kill @e[tag=stmp]