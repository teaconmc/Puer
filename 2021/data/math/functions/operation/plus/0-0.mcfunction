execute store result score stemp0 int run data get entity @s Item.tag.bit1[0]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[1]
execute store result score stemp2 int run data get entity @s Item.tag.bit1[2]
execute store result score stemp3 int run data get entity @s Item.tag.bit1[3]
execute store result score stemp4 int run data get entity @s Item.tag.bit1[4]
data modify entity @s Item.tag.bit0[5] set from entity @s Item.tag.bit1[5]

execute store result score -stemp0 int run data get entity @s Item.tag.bit0[0]
execute store result score -stemp1 int run data get entity @s Item.tag.bit0[1]
execute store result score -stemp2 int run data get entity @s Item.tag.bit0[2]
execute store result score -stemp3 int run data get entity @s Item.tag.bit0[3]
execute store result score -stemp4 int run data get entity @s Item.tag.bit0[4]

scoreboard players operation stemp0 int -= -stemp0 int
execute if score stemp0 int matches ..-1 run scoreboard players remove stemp1 int 1
execute if score stemp0 int matches ..-1 run scoreboard players add stemp0 int 10000

scoreboard players operation stemp1 int -= -stemp1 int
execute if score stemp1 int matches ..-1 run scoreboard players remove stemp2 int 1
execute if score stemp1 int matches ..-1 run scoreboard players add stemp1 int 10000

scoreboard players operation stemp2 int -= -stemp2 int
execute if score stemp2 int matches ..-1 run scoreboard players remove stemp3 int 1
execute if score stemp2 int matches ..-1 run scoreboard players add stemp2 int 10000

scoreboard players operation stemp3 int -= -stemp3 int
execute if score stemp3 int matches ..-1 run scoreboard players remove stemp4 int 1
execute if score stemp3 int matches ..-1 run scoreboard players add stemp3 int 10000

scoreboard players operation stemp4 int -= -stemp4 int

execute store result entity @s Item.tag.bit0[0] int 1 run scoreboard players get stemp0 int
execute store result entity @s Item.tag.bit0[1] int 1 run scoreboard players get stemp1 int
execute store result entity @s Item.tag.bit0[2] int 1 run scoreboard players get stemp2 int
execute store result entity @s Item.tag.bit0[3] int 1 run scoreboard players get stemp3 int
execute store result entity @s Item.tag.bit0[4] int 1 run scoreboard players get stemp4 int