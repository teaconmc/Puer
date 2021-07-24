summon area_effect_cloud 0.0 0.0 0.0 {Tags:["temp"]}
execute store result entity @e[tag=temp,limit=1] Rotation[0] float -0.0001 run scoreboard players get vrx int
execute store result entity @e[tag=temp,limit=1] Rotation[1] float -0.0001 run scoreboard players get vry int
execute as @e[tag=temp] at @s run tp @s ^ ^ ^1
execute as @e[tag=temp] store result score vectorx int run data get entity @s Pos[0] 10000
execute as @e[tag=temp] store result score vectory int run data get entity @s Pos[1] 10000
execute as @e[tag=temp] store result score vectorz int run data get entity @s Pos[2] 10000
scoreboard players operation vectorx int *= vectorm int
scoreboard players operation vectory int *= vectorm int
scoreboard players operation vectorz int *= vectorm int
kill @e[tag=temp]