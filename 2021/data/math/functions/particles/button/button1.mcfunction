scoreboard players add @s mpar_tick 1
execute if score @s mpar_tick >= @s mpar_tick1 run tag @s add button
execute if score @s mpar_tick >= @s mpar_tick1 run tag @s remove button1