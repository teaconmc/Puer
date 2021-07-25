summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp0"]}
data modify entity @e[tag=stmp,limit=1] Pos set from entity @s Motion
execute as @e[tag=stmp,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run summon area_effect_cloud ^1 ^ ^ {Tags:["stmp0","stmp1","stmp4"]}
execute as @e[tag=stmp,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run summon area_effect_cloud ^ ^1 ^ {Tags:["stmp0","stmp1","stmp5"]}
execute as @e[tag=stmp,limit=1] positioned 0.0 0.0 0.0 facing entity @s feet run summon area_effect_cloud ^ ^ ^1 {Tags:["stmp0","stmp1","stmp6"]}


execute store result score @s x run data get entity @e[tag=stmp4,limit=1] Pos[0] 10000
scoreboard players operation @s x *= @s u
execute store result score stemp int run data get entity @e[tag=stmp5,limit=1] Pos[0] 10000
scoreboard players operation stemp int *= @s v
scoreboard players operation @s x += stemp int
execute store result score stemp int run data get entity @e[tag=stmp6,limit=1] Pos[0] 10000
scoreboard players operation stemp int *= @s w
scoreboard players operation @s x += stemp int

execute store result score @s y run data get entity @e[tag=stmp4,limit=1] Pos[1] 10000
scoreboard players operation @s y *= @s u
execute store result score stemp int run data get entity @e[tag=stmp5,limit=1] Pos[1] 10000
scoreboard players operation stemp int *= @s v
scoreboard players operation @s y += stemp int
execute store result score stemp int run data get entity @e[tag=stmp6,limit=1] Pos[1] 10000
scoreboard players operation stemp int *= @s w
scoreboard players operation @s y += stemp int

execute store result score @s z run data get entity @e[tag=stmp4,limit=1] Pos[2] 10000
scoreboard players operation @s z *= @s u
execute store result score stemp int run data get entity @e[tag=stmp5,limit=1] Pos[2] 10000
scoreboard players operation stemp int *= @s v
scoreboard players operation @s z += stemp int
execute store result score stemp int run data get entity @e[tag=stmp6,limit=1] Pos[2] 10000
scoreboard players operation stemp int *= @s w
scoreboard players operation @s z += stemp int

kill @e[tag=stmp0]