scoreboard players set min int 0
scoreboard players set max int 15
function math:random
execute store result entity @s Color byte 1 run scoreboard players get random int