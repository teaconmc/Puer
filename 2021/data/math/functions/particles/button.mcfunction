tag @s add tmp
execute at @s run tp @e[tag=button_set,tag=!tmp,distance=..0.3] 0.0 -1000.0 0.0
tag @s remove tmp
execute at @p positioned ~ ~1.62 ~ run function math:if-raycast
execute if score @p mpar_shift matches 1.. run function math:particles/button2
execute if score @s result matches 0 if score @s int1 matches 1 run function math:particles/button3
scoreboard players operation @s result > @s int1
scoreboard players set temp int 0
execute if score @p mpar_rc matches 1.. run scoreboard players set temp int 1
execute if score @p mpar_shift matches 1.. run scoreboard players set temp int 1
execute if score @s result matches 1 run data modify entity @s Glowing set value 1b
execute if score @s result matches 1 if score temp int matches 1 run function math:particles/button/runc
execute if score @s result matches 1 if score temp int matches 0 run scoreboard players set @s int1 1