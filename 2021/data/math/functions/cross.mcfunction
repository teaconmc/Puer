tag @e remove result

execute store result score -stempx int run data get entity @e[tag=input,limit=1] Item.tag.line[0][0] 10000
execute store result score -stempy int run data get entity @e[tag=input,limit=1] Item.tag.line[0][1] 10000
execute store result score -stempz int run data get entity @e[tag=input,limit=1] Item.tag.line[0][2] 10000

execute store result score stempx1 int run data get entity @e[tag=input,limit=1] Item.tag.line[1][0] 10000
execute store result score stempy1 int run data get entity @e[tag=input,limit=1] Item.tag.line[1][1] 10000
execute store result score stempz1 int run data get entity @e[tag=input,limit=1] Item.tag.line[1][2] 10000

scoreboard players operation stempx1 int -= -stempx int
scoreboard players operation stempy1 int -= -stempy int
scoreboard players operation stempz1 int -= -stempz int

summon area_effect_cloud ~ ~ ~ {Tags:["stmp","result","point","cross"]}

execute as @e[tag=stmp] run function math:cross1

execute store result score stempx2 int run data get entity @e[tag=input1,limit=1] Item.tag.line[0][0] 10000
execute store result score stempy2 int run data get entity @e[tag=input1,limit=1] Item.tag.line[0][1] 10000
execute store result score stempz2 int run data get entity @e[tag=input1,limit=1] Item.tag.line[0][2] 10000


execute store result score stempd int run data get entity @e[tag=input1,limit=1] Item.tag.line[1][0] 10000
execute store result score stempe int run data get entity @e[tag=input1,limit=1] Item.tag.line[1][1] 10000
execute store result score stempf int run data get entity @e[tag=input1,limit=1] Item.tag.line[1][2] 10000

scoreboard players operation stempd int -= stempx2 int
scoreboard players operation stempe int -= stempy2 int
scoreboard players operation stempf int -= stempz2 int

execute as @e[tag=stmp] run function math:cross2

scoreboard players operation stempx2 int -= -stempx int
scoreboard players operation stempy2 int -= -stempy int
scoreboard players operation stempz2 int -= -stempz int


scoreboard players set cstemp int 1
execute if score stempe int matches 0 run scoreboard players set cstemp int 0
scoreboard players operation stemp int = stempb int
scoreboard players operation stemp int *= stempd int
scoreboard players operation stemp1 int = stempa int
scoreboard players operation stemp1 int *= stempe int
execute if score stemp int = stemp1 int run scoreboard players set cstemp int 0
execute if score cstemp int matches 0 run function math:cross3

execute if score cstemp int matches 0 run kill @e[tag=stmp]
execute if score cstemp int matches 1 run function math:cross8
execute if score cstemp int matches 2 run function math:cross9
execute if score cstemp int matches 3 run function math:cross10
execute if score cstemp int matches 4 run function math:cross11
execute if score cstemp int matches 5 run function math:cross12
execute if score cstemp int matches 6 run function math:cross13

tag @e remove input
tag @e remove input1

execute as @e[tag=stmp] run function math:cross14