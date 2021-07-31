playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 1
scoreboard players set r int 50
execute positioned ~ ~1.0 ~ run function math:120_radius
execute as @e[tag=result] run data merge entity @s {Duration:100,Tags:["mpar_flame","mhoop_line"]}

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp","mhoop"],Duration:1000}
data modify entity @e[tag=tmp,limit=1] Rotation[0] set from entity @s Rotation[0]
execute as @e[tag=tmp] at @s run tp @s ^ ^ ^8.0
execute store result score temp int run data get entity @e[tag=tmp,limit=1] Pos[0] 10000
execute store result score temp1 int run data get entity @e[tag=tmp,limit=1] Pos[2] 10000
execute store result score tempx int run data get entity @s Pos[0] 10000
execute store result score tempy int run data get entity @s Pos[1] 10000
execute store result score tempz int run data get entity @s Pos[2] 10000
scoreboard players operation tempx int += temp int
scoreboard players operation tempz int += temp1 int
scoreboard players add tempy int 130000
execute as @e[tag=tmp] run function talisman_skills:fireball_hoop/pos
data modify entity @e[tag=tmp,limit=1] Rotation[1] set value 30.0f
tag @e remove tmp