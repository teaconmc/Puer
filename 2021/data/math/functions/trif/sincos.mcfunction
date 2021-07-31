summon armor_stand 0.0 10 0.0 {Tags:["trif"],Rotation:[0.0,0.0],NoGravity:true,Invisible:true,Marker:true}
execute as @e[tag=trif] store result entity @s Rotation[0] float -0.0001 run scoreboard players get θ int
execute as @e[tag=trif] at @s run tp @s ^ ^ ^10.0
scoreboard players set AC int 10000
execute as @e[tag=trif] store result score BC int run data get entity @s Pos[0] 1000
execute as @e[tag=trif] store result score AB int run data get entity @s Pos[2] 1000
kill @e[tag=trif]
scoreboard players operation sin int = BC int
scoreboard players operation sin int *= 10000 int
scoreboard players operation sin int /= AC int
scoreboard players operation cos int = AB int
scoreboard players operation cos int *= 10000 int
scoreboard players operation cos int /= AC int