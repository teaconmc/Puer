tag @e remove result
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp-circle"]}
execute as @e[tag=tmp-circle,limit=1] run function math:circle3
execute store result entity @e[tag=tmp-circle,limit=1] Duration short 1 run scoreboard players get duration int
execute as @e[tag=tmp-circle] run function math:circle1
kill @e[tag=tmp-circle]
execute as @e[tag=circle] run function math:circle2