tag @s add button_set
tag @s add mpar_glowing
data merge entity @s {NoGravity:true,PickupDelay:32767s}
scoreboard players set @s d 20000
scoreboard players set @s h 40000
scoreboard players set @s l 20000
execute if data entity @s Item.tag.owner store result score @s mpar_id run data get entity @s Item.tag.owner
execute if data entity @s Item.tag.owner run tag @s add owned
execute store result score @s mpar_tick1 run data get entity @s Item.tag.cd
execute unless data entity @s Item.tag.cd run scoreboard players set @s mpar_tick1 15
tag @s remove sbutton
tag @s add sbutton1
tag @s add sbutton_set
tag @s add mpar_age
execute store result score @s mpar_sbid run scoreboard players add #sb mpar_sbid 1
execute if data entity @s Item.tag.title run data modify entity @s CustomName set from entity @s Item.tag.title
execute if data entity @s Item.tag.title run data modify entity @s CustomNameVisible set value 1b