execute store result score stemp0 int run data get entity @s Item.tag.bit2[5]
execute if score input int < 0 int run scoreboard players operation stemp0 int *= -1 int
execute if score input int = 0 int run scoreboard players operation stemp0 int *= 0 int
execute if score input int > 0 int run scoreboard players operation stemp0 int *= 1 int
execute if score stemp0 int < 0 int run function math:operation/bit2/plus/0
execute if score stemp0 int > 0 int run function math:operation/bit2/plus/1