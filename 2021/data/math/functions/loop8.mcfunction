execute at @s run tp @s ~ ~ ~ ~3 ~
scoreboard players add stemp int 1
execute at @s run summon area_effect_cloud ^ ^ ^1.0 {Tags:["stmp1"]}
execute if score stemp int matches ..119 run function math:loop8