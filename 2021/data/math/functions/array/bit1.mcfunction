execute store result score 16temp1 int store result score 16temp2 int run data get entity @s Item.tag.num[16]
execute store result score 15temp1 int store result score 15temp2 int run data get entity @s Item.tag.num[15]
execute store result score 14temp1 int store result score 14temp2 int run data get entity @s Item.tag.num[14]
execute store result score 13temp1 int store result score 13temp2 int run data get entity @s Item.tag.num[13]
execute store result score 12temp1 int store result score 12temp2 int run data get entity @s Item.tag.num[12]
execute store result score 11temp1 int store result score 11temp2 int run data get entity @s Item.tag.num[11]
execute store result score 10temp1 int store result score 10temp2 int run data get entity @s Item.tag.num[10]
execute store result score 9temp1 int store result score 9temp2 int run data get entity @s Item.tag.num[9]
execute store result score 8temp1 int store result score 8temp2 int run data get entity @s Item.tag.num[8]
execute store result score 7temp1 int store result score 7temp2 int run data get entity @s Item.tag.num[7]
execute store result score 6temp1 int store result score 6temp2 int run data get entity @s Item.tag.num[6]
execute store result score 5temp1 int store result score 5temp2 int run data get entity @s Item.tag.num[5]
execute store result score 4temp1 int store result score 4temp2 int run data get entity @s Item.tag.num[4]
execute store result score 3temp1 int store result score 3temp2 int run data get entity @s Item.tag.num[3]
execute store result score 2temp1 int store result score 2temp2 int run data get entity @s Item.tag.num[2]
execute store result score 1temp1 int store result score 1temp2 int run data get entity @s Item.tag.num[1]
execute store result score 0temp1 int store result score 0temp2 int run data get entity @s Item.tag.num[0]

scoreboard players operation 16temp1 int /= 10 int
scoreboard players operation 16temp2 int %= 10 int
execute store result score 15temp1 int run scoreboard players operation 15temp2 int += 16temp1 int

scoreboard players operation 15temp1 int /= 10 int
scoreboard players operation 15temp2 int %= 10 int
execute store result score 14temp1 int run scoreboard players operation 14temp2 int += 15temp1 int

scoreboard players operation 14temp1 int /= 10 int
scoreboard players operation 14temp2 int %= 10 int
execute store result score 13temp1 int run scoreboard players operation 13temp2 int += 14temp1 int

scoreboard players operation 13temp1 int /= 10 int
scoreboard players operation 13temp2 int %= 10 int
execute store result score 12temp1 int run scoreboard players operation 12temp2 int += 13temp1 int

scoreboard players operation 12temp1 int /= 10 int
scoreboard players operation 12temp2 int %= 10 int
execute store result score 11temp1 int run scoreboard players operation 11temp2 int += 12temp1 int

scoreboard players operation 11temp1 int /= 10 int
scoreboard players operation 11temp2 int %= 10 int
execute store result score 10temp1 int run scoreboard players operation 10temp2 int += 11temp1 int

scoreboard players operation 10temp1 int /= 10 int
scoreboard players operation 10temp2 int %= 10 int
execute store result score 9temp1 int run scoreboard players operation 9temp2 int += 10temp1 int

scoreboard players operation 9temp1 int /= 10 int
scoreboard players operation 9temp2 int %= 10 int
execute store result score 8temp1 int run scoreboard players operation 8temp2 int += 9temp1 int

scoreboard players operation 8temp1 int /= 10 int
scoreboard players operation 8temp2 int %= 10 int
execute store result score 7temp1 int run scoreboard players operation 7temp2 int += 8temp1 int

scoreboard players operation 7temp1 int /= 10 int
scoreboard players operation 7temp2 int %= 10 int
execute store result score 6temp1 int run scoreboard players operation 6temp2 int += 7temp1 int

scoreboard players operation 6temp1 int /= 10 int
scoreboard players operation 6temp2 int %= 10 int
execute store result score 5temp1 int run scoreboard players operation 5temp2 int += 6temp1 int

scoreboard players operation 5temp1 int /= 10 int
scoreboard players operation 5temp2 int %= 10 int
execute store result score 4temp1 int run scoreboard players operation 4temp2 int += 5temp1 int

scoreboard players operation 4temp1 int /= 10 int
scoreboard players operation 4temp2 int %= 10 int
execute store result score 3temp1 int run scoreboard players operation 3temp2 int += 4temp1 int

scoreboard players operation 3temp1 int /= 10 int
scoreboard players operation 3temp2 int %= 10 int
execute store result score 2temp1 int run scoreboard players operation 2temp2 int += 3temp1 int

scoreboard players operation 2temp1 int /= 10 int
scoreboard players operation 2temp2 int %= 10 int
execute store result score 1temp1 int run scoreboard players operation 1temp2 int += 2temp1 int

scoreboard players operation 1temp1 int /= 10 int
scoreboard players operation 1temp2 int %= 10 int
execute store result score 0temp1 int run scoreboard players operation 0temp2 int += 1temp1 int

execute store result entity @s Item.tag.num[0] int 1 run scoreboard players get 0temp2 int
execute store result entity @s Item.tag.num[1] int 1 run scoreboard players get 1temp2 int
execute store result entity @s Item.tag.num[2] int 1 run scoreboard players get 2temp2 int
execute store result entity @s Item.tag.num[3] int 1 run scoreboard players get 3temp2 int
execute store result entity @s Item.tag.num[4] int 1 run scoreboard players get 4temp2 int
execute store result entity @s Item.tag.num[5] int 1 run scoreboard players get 5temp2 int
execute store result entity @s Item.tag.num[6] int 1 run scoreboard players get 6temp2 int
execute store result entity @s Item.tag.num[7] int 1 run scoreboard players get 7temp2 int
execute store result entity @s Item.tag.num[8] int 1 run scoreboard players get 8temp2 int
execute store result entity @s Item.tag.num[9] int 1 run scoreboard players get 9temp2 int
execute store result entity @s Item.tag.num[10] int 1 run scoreboard players get 10temp2 int
execute store result entity @s Item.tag.num[11] int 1 run scoreboard players get 11temp2 int
execute store result entity @s Item.tag.num[12] int 1 run scoreboard players get 12temp2 int
execute store result entity @s Item.tag.num[13] int 1 run scoreboard players get 13temp2 int
execute store result entity @s Item.tag.num[14] int 1 run scoreboard players get 14temp2 int
execute store result entity @s Item.tag.num[15] int 1 run scoreboard players get 15temp2 int
execute store result entity @s Item.tag.num[16] int 1 run scoreboard players get 16temp2 int