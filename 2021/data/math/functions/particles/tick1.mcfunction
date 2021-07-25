execute as @a unless score @s mpar_id matches 1.. store result score @s mpar_id run scoreboard players add #mpar_id mpar_id 1

execute as @e[tag=menu] at @s run function math:particles/menu/test

execute as @e[tag=sbutton,tag=!owned] at @s unless entity @a[distance=..6] run kill @s
execute as @e[tag=sbutton,tag=owned] at @s run function math:particles/sbutton/test

scoreboard players reset tick1_timer mpar_tick