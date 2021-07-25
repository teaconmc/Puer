tag @e remove result
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
execute store result score stemp1 int run data get entity @s Item.tag.line[0][0] 10000
execute store result score stemp2 int run data get entity @s Item.tag.line[0][1] 10000
execute store result score stemp3 int run data get entity @s Item.tag.line[0][2] 10000
execute store result score stemp4 int run data get entity @s Item.tag.line[1][0] 10000
execute store result score stemp5 int run data get entity @s Item.tag.line[1][1] 10000
execute store result score stemp6 int run data get entity @s Item.tag.line[1][2] 10000
execute as @e[tag=stmp,limit=1] run function math:line7
execute as @e[tag=stmp] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify entity @e[tag=stmp,limit=1] Pos set from entity @s Item.tag.line[0]
execute store result score stemp int run data get entity @s Item.tag.length 10
execute unless score stemp int matches 1..2000 run scoreboard players set stemp int 100
execute if score stemp int matches 1..200 as @e[tag=stmp] run function math:loop2
execute if score stemp int matches 201..2000 as @e[tag=stmp] run function math:loop3
execute as @e[tag=stmp1] store result entity @s Duration short 1 run scoreboard players get duration int
tag @e remove stmp1
kill @e[tag=stmp]