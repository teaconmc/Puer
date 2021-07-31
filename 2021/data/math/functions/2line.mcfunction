tag @e remove result
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp1"]}
execute store result entity @e[tag=stmp,limit=1] Pos[1] double 0.0001 run scoreboard players get y int
execute store result entity @e[tag=stmp1,limit=1] Pos[1] double 0.0001 run scoreboard players get y int
tag @s add stmp3
execute as @e[tag=stmp] run function math:2line1
execute as @e[tag=stmp1] run function math:2line2
execute as @e[tag=stmp] at @s facing entity @e[tag=stmp1,limit=1] feet run tp @s ~ ~ ~ ~ ~
kill @e[tag=stmp1]
execute store result score stemp int run data get entity @s Item.tag.length 10
execute unless score stemp int matches 1..2000 run scoreboard players set stemp int 100
execute if score stemp int matches 1..200 as @e[tag=stmp] run function math:loop2
execute if score stemp int matches 201..2000 as @e[tag=stmp] run function math:loop3
execute as @e[tag=stmp1] store result entity @s Duration short 1 run scoreboard players get duration int
tag @e remove stmp1
kill @e[tag=stmp]
tag @e remove stmp3