execute store result score stemp1 int run data get entity @s Pos[0] 10000
execute store result score stemp2 int run data get entity @s Pos[1] 10000
execute store result score stemp3 int run data get entity @s Pos[2] 10000
scoreboard players operation stemp1 int += movex int
scoreboard players operation stemp2 int += movey int
scoreboard players operation stemp3 int += movez int
function math:move_point1