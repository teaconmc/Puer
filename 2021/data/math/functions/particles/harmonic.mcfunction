summon area_effect_cloud ~ ~ ~ {Tags:["stmp"]}
execute store result score @s mpar_harx run data get entity @s Pos[0] 100
execute store result score @s mpar_hary run data get entity @s Pos[1] 100
execute store result score @s mpar_harz run data get entity @s Pos[2] 100
execute store result score harx0 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[0] 100
execute store result score hary0 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[1] 100
execute store result score harz0 mpar_temp run data get entity @e[tag=stmp,limit=1] Pos[2] 100
scoreboard players operation @s mpar_harx -= harx0 mpar_temp
scoreboard players operation @s mpar_hary -= hary0 mpar_temp
scoreboard players operation @s mpar_harz -= harz0 mpar_temp
kill @e[tag=stmp]
tag @s add mpar_har