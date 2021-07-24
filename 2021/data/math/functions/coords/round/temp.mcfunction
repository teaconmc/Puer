summon area_effect_cloud 0.0 80.0 0.0 {Tags:["cank","roct"],Rotation:[0.0,0.0]}
execute store result entity @e[tag=roct,limit=1] Rotation[0] float 0.1 run scoreboard players get roctx int
execute as @e[tag=roct] at @s run tp @s ^ ^ ^1
execute as @e[tag=roct] store result score roctx1 int run data get entity @s Pos[0] 1000
execute as @e[tag=roct] store result score rocty1 int run data get entity @s Pos[2] 1000
scoreboard players operation roctx1 int *= rocty int
scoreboard players operation rocty1 int *= rocty int
kill @e[tag=roct]