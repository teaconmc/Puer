summon area_effect_cloud ^ ^ ^1.0 {Tags:["stmp"]}
execute as @e[tag=stmp] run function math:loop24
data modify entity @e[tag=stmp,limit=1] Tags set from entity @s Tags