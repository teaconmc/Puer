execute unless entity @e[tag=ssphere] run function math:loop70-2
tag @e remove result
scoreboard players set @e[tag=ssphere] scb 720
execute as @e[tag=ssphere] at @s run function math:loop71-1
execute as @e[tag=ssphere] at @s run tp @s 0.0 0.0 0.0 0.0 ~-0.5