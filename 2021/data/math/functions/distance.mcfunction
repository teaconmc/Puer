summon area_effect_cloud ~ ~ ~ {Tags:["tmp-distance"]}
execute store result score @s x1 run data get entity @e[limit=1,sort=nearest] Pos[0] 10000
execute store result score @s y1 run data get entity @e[limit=1,sort=nearest] Pos[1] 10000
execute store result score @s z1 run data get entity @e[limit=1,sort=nearest] Pos[2] 10000
execute store result score @s x run data get entity @s Pos[0] 10000
execute store result score @s y run data get entity @s Pos[1] 10000
execute store result score @s z run data get entity @s Pos[2] 10000
execute at @s facing entity @e[tag=tmp-distance,limit=1] feet positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1 {Tags:["distance"]}
execute store result score dist11 int store result score dist1 int run scoreboard players operation @s x1 -= @s x
execute store result score dist12 int store result score dist2 int run scoreboard players operation @s y1 -= @s y
execute store result score dist13 int store result score dist3 int run scoreboard players operation @s z1 -= @s z
execute store result score @s x1 run data get entity @e[tag=distance,limit=1] Pos[0] 10000
execute store result score @s y1 run data get entity @e[tag=distance,limit=1] Pos[1] 10000
execute store result score @s z1 run data get entity @e[tag=distance,limit=1] Pos[2] 10000

scoreboard players operation dist1 int /= @s x1
scoreboard players operation dist1 int *= 10000 int
scoreboard players operation dist11 int %= @s x1
scoreboard players operation dist11 int *= 10000 int
scoreboard players operation dist11 int /= @s x1
scoreboard players operation dist1 int += dist11 int

scoreboard players operation dist2 int /= @s y1
scoreboard players operation dist2 int *= 10000 int
scoreboard players operation dist12 int %= @s y1
scoreboard players operation dist12 int *= 10000 int
scoreboard players operation dist12 int /= @s y1
scoreboard players operation dist2 int += dist12 int

scoreboard players operation dist3 int /= @s z1
scoreboard players operation dist3 int *= 10000 int
scoreboard players operation dist13 int %= @s z1
scoreboard players operation dist13 int *= 10000 int
scoreboard players operation dist13 int /= @s z1
scoreboard players operation dist3 int += dist13 int

scoreboard players operation @s distance = dist1 int
scoreboard players operation @s distance > dist2 int
scoreboard players operation @s distance > dist3 int
kill @e[tag=tmp-distance]
kill @e[tag=distance]