scoreboard players add @s mpar_tick1 1
execute if score @s mpar_tick1 >= @s mpar_tick run function math:particles/textbox1
scoreboard players add @s mpar_tick2 1
execute store result score temp mpar_temp run data get entity @s Item.tag.lore
execute if score temp mpar_temp matches 4.. if score @s mpar_tick2 >= @s mpar_tick3 at @s run function math:particles/textbox2


data modify entity @s Glowing set value 0b

tag @s add tmp
execute as @a[distance=..10] run function math:particles/textbox/closetest
tag @s remove tmp