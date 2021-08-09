scoreboard players operation @s ele_value = @s ele_sneaking
schedule function elevator:sneaking/2 1t
execute as @s[tag=!elevator_down] at @s run function elevator:down
