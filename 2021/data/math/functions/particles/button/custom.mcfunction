tag @s add button_set
tag @s add mpar_glowing
data merge entity @s {NoGravity:true,PickupDelay:32767s}
scoreboard players set @s d 35000
scoreboard players set @s h 45000
scoreboard players set @s l 35000
execute if data entity @s Item.tag.owner store result score @s mpar_id run data get entity @s Item.tag.owner
execute if data entity @s Item.tag.owner run tag @s add owned
execute store result score @s mpar_tick1 run data get entity @s Item.tag.cd
execute unless data entity @s Item.tag.cd run scoreboard players set @s mpar_tick1 15
tag @s remove button
tag @s add button1
tag @s add mpar_age