tag @e remove result
execute at @s anchored eyes run summon area_effect_cloud ^ ^ ^ {Tags:["result","stmp"]}
data modify entity @e[tag=stmp,limit=1] Rotation set from entity @s Rotation
execute at @e[tag=stmp,limit=1] rotated as @s run tp @e[tag=stmp,limit=1] ~ ~ ~ ~ ~
tag @e remove stmp