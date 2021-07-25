scoreboard players remove stemp int 10
execute at @s run summon area_effect_cloud ~ ~ ~ {Tags:["stmp1","point","line","result"]}
execute at @s run tp @s ^ ^ ^1.0
execute if score stemp int matches 1.. run function math:loop3