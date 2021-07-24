#位置计算
execute positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0.0 as @e[tag=math_marker,limit=1] run tp @s ^ ^ ^1.0
execute store result score @s vx run data get entity @e[tag=math_marker,limit=1] Pos[0] 100
execute store result score @s vz run data get entity @e[tag=math_marker,limit=1] Pos[2] 100
scoreboard players add @s int 8
scoreboard players operation @s vy += @s int
execute store result score x int run data get entity @s Pos[0] 1000
execute store result score y int run data get entity @s Pos[1] 1000
execute store result score z int run data get entity @s Pos[2] 1000
scoreboard players operation x int += @s vx
scoreboard players operation y int += @s vy
scoreboard players operation z int += @s vz
execute store result entity @s Pos[0] double 0.001 run scoreboard players get x int
execute store result entity @s Pos[1] double 0.001 run scoreboard players get y int
execute store result entity @s Pos[2] double 0.001 run scoreboard players get z int
#粒子
execute if entity @s[tag=sheep_it_cloud] at @s run particle firework
execute if entity @s[tag=sheep_it_firework] at @s run particle end_rod
execute if entity @s[tag=sheep_it_endrod] at @s run particle end_rod