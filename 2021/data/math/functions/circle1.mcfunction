scoreboard players add @s int 1
execute at @s run summon area_effect_cloud ^ ^ ^1 {Tags:["circle","point","result"]}
execute at @s run tp @s ~ ~ ~ ~1 ~
execute if score @s int matches ..358 run function math:circle1