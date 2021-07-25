execute as @a[scores={math_clickevent=1..}] at @s run function math:examples/missile/shoot
scoreboard players reset @a math_clickevent

execute as @e[tag=double_missile] at @s run function math:examples/missile/track