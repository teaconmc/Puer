scoreboard players operation stempx int += -stempx int
scoreboard players operation stempy int += -stempy int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","point","cross","result"]}
execute as @e[tag=stmp,limit=1] run function math:2cross5
execute store result entity @e[tag=stmp,limit=1] Duration short 1 run scoreboard players get duration int
tag @e remove stmp