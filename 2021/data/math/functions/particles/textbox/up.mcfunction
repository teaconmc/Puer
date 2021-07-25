scoreboard players set @s mpar_l 0
data modify entity @e[tag=textbox0,limit=1,sort=nearest,distance=..10] Pos set from entity @s Item.tag.titlep
data modify entity @e[tag=textbox1,limit=1,sort=nearest,distance=..10] Pos set from entity @s Item.tag.titlep
data modify entity @e[tag=textbox2,limit=1,sort=nearest,distance=..10] Pos set from entity @s Item.tag.titlep
execute as @e[tag=textbox0,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/textup
execute as @e[tag=textbox1,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/textup
execute as @e[tag=textbox2,limit=1,sort=nearest,distance=..10] run function math:particles/textbox/textup
tag @s remove mpar_player