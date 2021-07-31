#烟花圈
scoreboard players set r int 8
execute positioned ~ ~0.1 ~ run function math:30_radius
execute at @e[tag=result,type=minecraft:area_effect_cloud] run particle minecraft:firework

#粒子流
execute as @e[tag=sheep_it_smoke] at @s run function talisman_skills:sheep_it/flow
scoreboard players add @s int 1
execute if score @s int matches 3.. positioned ~ ~-2.5 ~ as @e[tag=result,limit=10,sort=random] facing entity @s feet run function talisman_skills:sheep_it/smoke
execute if score @s int matches 3.. run scoreboard players set @s int 0

#变羊
tag @s add tmp
execute as @e[type=#talisman_skills:withermob,distance=..1.2,tag=!sheep_it_mob] store result score @s int run data get entity @e[tag=tmp,limit=1] Age
tag @s remove tmp
tag @e[type=#talisman_skills:withermob,distance=..1.2,tag=!sheep_it_mob] add sheep_it_mob