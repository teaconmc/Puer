execute store result score stemp int run data get entity @s Item.tag.bit0[5]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[5]

scoreboard players set pstemp int 0
execute if score stemp int = stemp1 int run scoreboard players set pstemp int 1

execute if score pstemp int matches 1 run function math:operation/plus/1
execute if score pstemp int matches 0 run function math:operation/plus/0