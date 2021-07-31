execute store result score stempbit0 int run data get entity @s Item.tag.bit0[0]
execute store result score stempbit1 int run data get entity @s Item.tag.bit0[1]
execute store result score stempbit2 int run data get entity @s Item.tag.bit0[2]
execute store result entity @s Item.tag.bit0[0] int 1 run scoreboard players get stemp2 int
execute store result entity @s Item.tag.bit0[1] int 1 run scoreboard players get stemp3 int
execute store result entity @s Item.tag.bit0[2] int 1 run scoreboard players get stemp4 int
scoreboard players operation stemp2 int = stempbit0 int
scoreboard players operation stemp3 int = stempbit1 int
scoreboard players operation stemp4 int = stempbit2 int
execute store result score stemp5 int run data get entity @s Item.tag.bit0[5]
execute store result entity @s Item.tag.bit0[5] int 1 run scoreboard players operation stemp5 int *= -1 int