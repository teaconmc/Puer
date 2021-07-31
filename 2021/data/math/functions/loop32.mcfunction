scoreboard players remove result int 1
particle flame ~ ~ ~ 0.0 0.0 0.0 0 1 force
tp @s ~ ~ ~
execute if score result int matches 1.. positioned ^ ^ ^0.1 run function math:loop32