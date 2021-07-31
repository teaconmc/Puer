scoreboard players remove test int 1
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp"]}
execute as @e[tag=tmp] run function math:test32
kill @e[tag=stmp]
execute if score test int matches 1.. run function math:test31