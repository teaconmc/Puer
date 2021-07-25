scoreboard players set temp mpar_temp 0
scoreboard players operation temp1 mpar_temp = @s mpar_id
execute as @a[distance=..12] if score @s mpar_id = temp1 mpar_temp run scoreboard players set temp mpar_temp 1
execute if score temp mpar_temp matches 0 run function math:particles/menu/close