summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score result0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score result1 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score result2 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute store result score stemp int run data get entity @s Pos[0] 10000
scoreboard players operation result0 int -= stemp int
execute store result score stemp int run data get entity @s Pos[1] 10000
scoreboard players operation result1 int -= stemp int
execute store result score stemp int run data get entity @s Pos[2] 10000
scoreboard players operation result2 int -= stemp int
kill @e[tag=stmp]