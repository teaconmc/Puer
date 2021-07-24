tag @e remove result
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["stmp","stmp0"]}
summon area_effect_cloud ~ ~ ~ {Tags:["stmp","stmp1"]}
execute store result score stempx1 int run data get entity @e[tag=stmp0,limit=1] Pos[0] 10000
execute store result score stempy1 int run data get entity @e[tag=stmp0,limit=1] Pos[1] 10000
execute store result score stempz1 int run data get entity @e[tag=stmp0,limit=1] Pos[2] 10000
execute store result score stempx2 int run data get entity @e[tag=stmp1,limit=1] Pos[0] 10000
execute store result score stempy2 int run data get entity @e[tag=stmp1,limit=1] Pos[1] 10000
execute store result score stempz2 int run data get entity @e[tag=stmp1,limit=1] Pos[2] 10000
execute as @e[tag=!stmp,limit=20,sort=nearest,tag=!cube] run function math:loop6
kill @e[tag=stmp]