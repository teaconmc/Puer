execute store result score stemp0 int run data get entity @s Item.tag.bit0[0]
execute store result score stemp1 int run data get entity @s Item.tag.bit0[1]
execute store result score stemp2 int run data get entity @s Item.tag.bit0[2]
execute store result score stemp3 int run data get entity @s Item.tag.bit0[3]
execute store result score stemp4 int run data get entity @s Item.tag.bit0[4]
scoreboard players set stemp int 0
execute unless score stemp0 int matches 0 run scoreboard players set stemp int 0
execute unless score stemp1 int matches 0 run scoreboard players set stemp int 1
execute unless score stemp2 int matches 0 run scoreboard players set stemp int 2
execute unless score stemp3 int matches 0 run scoreboard players set stemp int 3
execute unless score stemp4 int matches 0 run scoreboard players set stemp int 4
execute if score stemp int matches 0 run function math:operation/bit0/d0
execute if score stemp int matches 1 run function math:operation/bit0/d1
execute if score stemp int matches 2 run function math:operation/bit0/d2
execute if score stemp int matches 3 run function math:operation/bit0/d3
execute if score stemp int matches 4 run function math:operation/bit0/d4

execute store result score stemp0 int run data get entity @s Item.tag.bit1[0]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[1]
execute store result score stemp2 int run data get entity @s Item.tag.bit1[2]
execute store result score stemp3 int run data get entity @s Item.tag.bit1[3]
execute store result score stemp4 int run data get entity @s Item.tag.bit1[4]
scoreboard players set stemp int 0
execute unless score stemp0 int matches 0 run scoreboard players set stemp int 0
execute unless score stemp1 int matches 0 run scoreboard players set stemp int 1
execute unless score stemp2 int matches 0 run scoreboard players set stemp int 2
execute unless score stemp3 int matches 0 run scoreboard players set stemp int 3
execute unless score stemp4 int matches 0 run scoreboard players set stemp int 4
execute if score stemp int matches 0 run function math:operation/bit1/d0
execute if score stemp int matches 1 run function math:operation/bit1/d1
execute if score stemp int matches 2 run function math:operation/bit1/d2
execute if score stemp int matches 3 run function math:operation/bit1/d3
execute if score stemp int matches 4 run function math:operation/bit1/d4

data modify entity @s Item.tag.detmp set from entity @s Item.tag.bit2
scoreboard players operation input int = tstemp0 int
function math:operation/bit2/break
scoreboard players operation input int = tstemp1 int
scoreboard players operation nstemp0 int -= nstemp1 int
execute if score nstemp0 int matches -16 run scoreboard players set result int 0
execute if score nstemp0 int matches -12 run scoreboard players set result int 0
execute if score nstemp0 int matches -8 run function math:operation/d-2
execute if score nstemp0 int matches -4 run function math:operation/d-1
execute if score nstemp0 int matches 0 run function math:operation/d0
execute if score nstemp0 int matches 4 run function math:operation/d1
execute if score nstemp0 int matches 8 run function math:operation/d2
execute if score nstemp0 int matches 12 run scoreboard players set result int 2147483647
execute if score nstemp0 int matches 16 run scoreboard players set result int 2147483647

execute store result score stemp int run data get entity @s Item.tag.bit0[5]
execute store result score stemp1 int run data get entity @s Item.tag.bit1[5]
scoreboard players operation stemp int *= stemp1 int
execute if score stemp int matches -1 run scoreboard players operation result int *= -1 int

data modify entity @s Item.tag.bit2 set from entity @s Item.tag.detmp