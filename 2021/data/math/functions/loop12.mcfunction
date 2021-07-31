execute store result score stemp int run data get entity @s Item.tag.tmp[0]
data remove entity @s Item.tag.tmp[0]
scoreboard players operation result int += stemp int
execute if data entity @s Item.tag.tmp[0] run function math:loop12