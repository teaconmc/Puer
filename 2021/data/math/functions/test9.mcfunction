execute positioned ^ ^ ^5 run function math:line-cre
#execute as @e[tag=result] run function math:line
tag @e remove result
execute store result score y int run data get entity @s Pos[1] 10000
execute positioned ^ ^ ^5 run function math:2line-cre
tag @e[tag=result,limit=1] add tmp
execute as @e[tag=tmp] run function math:2line
scoreboard players set input int 450000
execute positioned ^ ^ ^5 as @e[tag=tmp] run function math:2line-ang
tag @e[tag=result] add input1
execute as @e[tag=result] run function math:2line
execute positioned ^5 ^ ^ as @e[tag=tmp] run function math:2line-par
execute as @e[tag=result] run function math:2line
execute positioned ^ ^ ^3 as @e[tag=tmp] run function math:2line-ver
execute as @e[tag=result] run function math:2line
tag @e[tag=tmp] add input
function math:2cross
execute at @e[tag=point] run particle end_rod
execute at @e[tag=cross] run particle flame
kill @e[type=item]