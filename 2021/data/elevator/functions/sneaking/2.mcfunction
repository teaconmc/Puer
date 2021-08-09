scoreboard players operation @s ele_value -= @s ele_sneaking
execute as @s[scores={ele_value=..0}] run tag @s add elevator_down
execute as @s[scores={ele_value=0..}] run tag @s remove elevator_down
