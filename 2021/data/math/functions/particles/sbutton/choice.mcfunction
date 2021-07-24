execute as @e[tag=mpar_choice] if score @s mpar_id = @e[tag=tmp,limit=1] mpar_id run kill @s
summon snowball ^-0.5 ^0.5 ^ {Tags:["tmp1","sbutton_set","mpar_choice","mpar_choice0","sbutton","button_set"],Motion:[0.0d,0.0d,0.0d],NoGravity:1b,Item:{id:"minecraft:lime_wool",Count:1b,tag:{cd:1}},Age:5900s}
execute as @e[tag=tmp1,limit=1] run function math:particles/sbutton/custom
scoreboard players operation @e[tag=tmp1,limit=1] mpar_sbid = @s mpar_sbid
scoreboard players operation @e[tag=tmp1,limit=1] mpar_id = @s mpar_id
tag @e remove tmp1


summon snowball ^0.5 ^0.5 ^ {Tags:["tmp1","sbutton_set","sbutton","mpar_choice","mpar_choice1","button_set"],Motion:[0.0d,0.0d,0.0d],NoGravity:1b,Item:{id:"minecraft:red_wool",Count:1b,tag:{cd:1}},Age:5900s}
execute as @e[tag=tmp1,limit=1] run function math:particles/sbutton/custom
scoreboard players operation @e[tag=tmp1,limit=1] mpar_sbid = @s mpar_sbid
scoreboard players operation @e[tag=tmp1,limit=1] mpar_id = @s mpar_id
tag @e remove tmp1