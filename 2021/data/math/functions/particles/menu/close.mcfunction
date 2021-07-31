scoreboard players operation #temp mpar_id = @s mpar_id
execute as @e[tag=button_set,distance=..20] if score @s mpar_id = #temp mpar_id run kill @s
kill @s