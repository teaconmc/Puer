scoreboard players operation temp int = @s uid
execute as @e[tag=jump_boat] if score @s uid = temp int run tag @s add tmp
execute at @s run tp @e[tag=tmp,limit=1] ~ ~-0.6 ~
tag @e remove tmp