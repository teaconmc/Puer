scoreboard players add @s mpar_r 1
scoreboard players operation r int = @s mpar_r
execute at @s run function math:90_radius_f
execute if score @s mpar_r matches 1.. run tag @e[tag=result] add mpar_hred_dust
execute if score @s mpar_r matches 50.. run tag @e[tag=result] add mpar_flame
execute if score @s mpar_r matches 80.. run tag @e[tag=result] add mpar_end_rod
execute as @e[tag=result] run data modify entity @s Duration set value 2
execute if score @s mpar_r matches 100.. run tag @s add prepared

tag @s add tmp
execute at @s as @e[tag=mhoop_line,sort=random,limit=1,distance=..20] at @s run function talisman_skills:fireball_hoop/line
tag @s remove tmp