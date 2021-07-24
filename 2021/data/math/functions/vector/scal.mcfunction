execute store result score stemp1 int run data get entity @s Item.tag.vector.pos[0] 100
execute store result score stemp2 int run data get entity @s Item.tag.vector.pos[1] 100
execute store result score stemp3 int run data get entity @s Item.tag.vector.pos[2] 100
scoreboard players operation stemp1 int *= input int
scoreboard players operation stemp2 int *= input int
scoreboard players operation stemp3 int *= input int
execute store result entity @s Item.tag.vector.pos[0] double 0.0001 run scoreboard players get stemp1 int
execute store result entity @s Item.tag.vector.pos[1] double 0.0001 run scoreboard players get stemp2 int
execute store result entity @s Item.tag.vector.pos[2] double 0.0001 run scoreboard players get stemp3 int