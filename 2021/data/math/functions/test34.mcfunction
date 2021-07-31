summon area_effect_cloud 0.0 0.0 0.0 {CustomName:"\"a\""}
summon area_effect_cloud 10.0 0.0 0.0 {CustomName:"\"b\""}
scoreboard players set r int 500
execute positioned 2.0 1.0 1.0 run function math:sphere-sele
say @e[tag=result]
tag @e remove result