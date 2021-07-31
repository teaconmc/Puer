execute positioned ~ ~1.62 ~ run summon area_effect_cloud ^1.0 ^ ^3 {Tags:["tmp"]}
execute store result score x0 int run data get entity @s Pos[0] 10000
execute store result score y0 int run data get entity @s Pos[1] 10000
execute store result score z0 int run data get entity @s Pos[2] 10000
scoreboard players add y0 int 16200
execute as @e[tag=math_marker] positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score n0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score n1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score n2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute as @e[tag=tmp] run function math:test44
execute at @e[tag=tmp] run particle end_rod
kill @e[tag=tmp]