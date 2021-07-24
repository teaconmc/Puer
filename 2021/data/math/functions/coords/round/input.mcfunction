scoreboard players operation temp int = roucox int
scoreboard players operation temp int /= 360 int
scoreboard players operation temp int *= 360 int
scoreboard players operation x int = roucox int
scoreboard players operation x int -= temp int
execute as @e[tag=rouco2] if score @s int = roucox int run tag @s add rouco3
execute as @e[tag=rouco1] at @s facing entity @e[tag=rouco3,limit=1] feet run summon minecraft:area_effect_cloud ^ ^ ^10 {Tags:["cank","rouco4","rouco"]}
tag @e remove rouco3
execute as @e[tag=rouco4] store result score x int run data get entity @s Pos[0] 1000
execute as @e[tag=rouco4] store result score z int run data get entity @s Pos[0] 1000
scoreboard players operation x int *= roucoy int
scoreboard players operation z int *= roucoy int