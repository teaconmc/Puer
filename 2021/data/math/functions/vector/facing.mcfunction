execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.0 {Tags:["fvector"]}
execute store result score @s vx run data get entity @e[tag=fvector,limit=1] Pos[0] 10000
execute store result score @s vy run data get entity @e[tag=fvector,limit=1] Pos[1] 10000
execute store result score @s vz run data get entity @e[tag=fvector,limit=1] Pos[2] 10000
kill @e[tag=fvector]