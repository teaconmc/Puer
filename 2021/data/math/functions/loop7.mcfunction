execute at @s run tp @s ~ ~ ~ ~ ~-3
scoreboard players add stemp1 int 1
scoreboard players set stemp int 0
function math:loop8
execute if score stemp1 int matches ..59 run function math:loop7