execute positioned 0.0 10.0 0.0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["test","parabola","mpar_custom","mpar_firework"],Motion:[0.0001,0.2,1.0],Duration:100}
execute store result entity @e[tag=test,limit=1] Motion[0] double 0.00001 run scoreboard players remove a mpar_temp 1
tag @e remove test