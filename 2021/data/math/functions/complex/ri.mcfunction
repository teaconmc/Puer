summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
execute store result entity @e[tag=stmp,limit=1] Rotation[0] float -0.0001 run scoreboard players get input int
execute as @e[tag=stmp] at @s run tp @s ^ ^ ^1.0
execute store result score r int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute store result score i int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
scoreboard players operation r int *= input1 int
scoreboard players operation i int *= input1 int
kill @e[tag=stmp]