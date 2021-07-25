scoreboard players remove stemp int 1
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["stmp1","point","line","result"]}
execute at @s run tp @s ^ ^ ^0.1
execute if score stemp int matches 1.. run function math:loop2