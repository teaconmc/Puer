execute as @e[tag=tornado] store result score x int run data get entity @s Pos[0] 10000
execute as @e[tag=tornado] store result score z int run data get entity @s Pos[2] 10000
execute as @e[tag=tornado1] store result score @s x run data get entity @s Pos[0] 10000
execute as @e[tag=tornado1] store result score @s z run data get entity @s Pos[2] 10000
execute as @e[tag=tornado1] run scoreboard players operation @s x -= x int
execute as @e[tag=tornado1] run scoreboard players operation @s z -= z int
execute as @e[tag=tornado1] run scoreboard players operation @s vx -= @s x
execute as @e[tag=tornado1] run scoreboard players operation @s vz -= @s z
execute as @e[tag=tornado1] store result entity @s Motion[0] double 0.0001 run scoreboard players get @s vx
execute as @e[tag=tornado1] store result entity @s Motion[1] double 0.0001 run scoreboard players get @s vy
execute as @e[tag=tornado1] store result entity @s Motion[2] double 0.0001 run scoreboard players get @s vz
execute as @e[tag=tornado1] at @s run particle minecraft:firework ~ ~ ~ 0 0 0 0 10 force