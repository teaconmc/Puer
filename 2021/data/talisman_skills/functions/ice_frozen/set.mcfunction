#随机朝向
scoreboard players set min int 0
scoreboard players set max int 360
function math:random
execute store result entity @s Rotation[0] float 1 run scoreboard players get random int
function math:random
execute store result entity @s Rotation[1] float 1 run scoreboard players get random int