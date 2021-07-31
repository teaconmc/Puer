tag @e remove result
summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score stemp1 int run data get entity @e[tag=stmp1,limit=1] Pos[0] 100
execute store result score stemp2 int run data get entity @e[tag=stmp1,limit=1] Pos[1] 100
execute store result score stemp3 int run data get entity @e[tag=stmp1,limit=1] Pos[2] 100
kill @e[tag=stmp]
scoreboard players operation stemp int = r int
scoreboard players operation stemp int *= r int
execute as @e[sort=nearest,limit=20] run function math:loop11