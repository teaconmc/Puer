scoreboard players set min int 0
scoreboard players set max int 359
function math:random
execute store result entity @s Rotation[0] float 1 run scoreboard players get random int