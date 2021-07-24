scoreboard players set r int 80
execute at @s run function math:90_radius_f
tag @e[tag=result] add mhoop_har
execute as @e[tag=result] run data modify entity @s Duration set value 950
tag @s add attack0
execute store result score @s mpar_x run data get entity @s Pos[0] 10000
execute store result score @s mpar_y run data get entity @s Pos[1] 10000
execute store result score @s mpar_z run data get entity @s Pos[2] 10000

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.5 {Tags:["tmp"]}
execute store result score @s mpar_u run data get entity @e[tag=tmp,limit=1] Pos[0] 10000
execute store result score @s mpar_v run data get entity @e[tag=tmp,limit=1] Pos[1] 10000
execute store result score @s mpar_w run data get entity @e[tag=tmp,limit=1] Pos[2] 10000
kill @e[tag=tmp]