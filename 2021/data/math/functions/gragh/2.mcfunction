execute as @e[tag=tornado] at @s run summon armor_stand ~ ~ ~2 {Tags:["tornado1"],Invisible:true,Marker:true}
scoreboard players set @e[tag=tornado1,tag=!tornado2] vx 20000
scoreboard players set @e[tag=tornado1,tag=!tornado2] vy 2000
tag @e[tag=tornado1,tag=!tornado2] add tornado2