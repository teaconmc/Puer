#斜边AC 对边AB 临边BC
summon armor_stand 0.0 10 0.0 {Tags:["trif"],Rotation:[0.0,0.0],NoGravity:true,Invisible:true,Marker:true}
execute as @e[tag=trif] store result entity @s Rotation[0] float -0.0001 run scoreboard players get input int
execute as @e[tag=trif] at @s run tp @s ^ ^ ^1.0
execute as @e[tag=trif] store result score result int run data get entity @s Pos[0] 10000
kill @e[tag=trif]