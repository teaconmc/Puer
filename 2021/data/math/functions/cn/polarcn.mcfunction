summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
execute store result entity @e[tag=stmp,limit=1] Rotation[0] float -0.0001 run scoreboard players get θ cn
execute as @e[tag=stmp] at @s run tp @s ^ ^ ^1.0
execute store result score stemp int store result score x cn run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
scoreboard players operation x cn /= 10000 int
scoreboard players operation x cn *= ρ cn
scoreboard players operation stemp int %= 10000 int
scoreboard players operation stemp int *= ρ cn
scoreboard players operation stemp int /= 10000 int
scoreboard players operation x cn += stemp int
execute store result score stemp int store result score z cn run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
scoreboard players operation z cn /= 10000 int
scoreboard players operation z cn *= ρ cn
scoreboard players operation stemp int %= 10000 int
scoreboard players operation stemp int *= ρ cn
scoreboard players operation stemp int /= 10000 int
scoreboard players operation z cn += stemp int
kill @e[tag=stmp]