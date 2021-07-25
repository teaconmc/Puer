scoreboard players set temp int 0
execute if entity @s[tag=jumped] run scoreboard players set temp int 1
execute if score temp int matches 0 run function math:test48
execute if score temp int matches 1 run function math:test49
scoreboard players reset @s jump