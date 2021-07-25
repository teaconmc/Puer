scoreboard players operation stempx int += -stempx int
scoreboard players operation stempy int += -stempy int
scoreboard players operation stempz int += -stempz int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","point","cross","result"]}
execute store result entity @e[tag=stmp,limit=1] Pos[0] double 0.0001 run scoreboard players get stempx int
execute store result entity @e[tag=stmp,limit=1] Pos[1] double 0.0001 run scoreboard players get stempy int
execute store result entity @e[tag=stmp,limit=1] Pos[2] double 0.0001 run scoreboard players get stempz int
execute store result entity @e[tag=stmp,limit=1] Duration short 1 run scoreboard players get duration int
tag @e remove stmp