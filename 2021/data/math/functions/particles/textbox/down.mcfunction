scoreboard players add @s mpar_l 1
execute store result score tempx mpar_temp run data get entity @s Item.tag.v[0] 50000
execute store result score tempy mpar_temp run data get entity @s Item.tag.v[1] 50000
execute store result score tempz mpar_temp run data get entity @s Item.tag.v[2] 50000
execute if score @s mpar_l matches ..5 as @e[tag=textbox0,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/down0
execute if score @s mpar_l matches ..8 as @e[tag=textbox1,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/down0
execute if score @s mpar_l matches ..11 as @e[tag=textbox2,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/down0
execute as @e[tag=textbox0,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/textup
execute as @e[tag=textbox1,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/textup
execute as @e[tag=textbox2,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/textup
execute if score @s mpar_l matches 15.. run tag @s add mpar_player