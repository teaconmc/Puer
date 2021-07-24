scoreboard players operation input int *= -1 int
execute store result score temp1 int run scoreboard players operation temp int = input int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[0] int -1 run scoreboard players operation temp int /= 100000000 int
scoreboard players operation temp1 int %= 100000000 int
scoreboard players operation temp int = temp1 int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[1] int -1 run scoreboard players operation temp1 int /= 10000000 int
scoreboard players operation temp int %= 10000000 int
scoreboard players operation temp1 int = temp int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[2] int -1 run scoreboard players operation temp1 int /= 1000000 int
scoreboard players operation temp int %= 1000000 int
scoreboard players operation temp1 int = temp int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[3] int -1 run scoreboard players operation temp1 int /= 100000 int
scoreboard players operation temp int %= 100000 int
scoreboard players operation temp1 int = temp int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[4] int -1 run scoreboard players operation temp1 int /= 10000 int
scoreboard players operation temp int %= 10000 int
scoreboard players operation temp1 int = temp int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[5] int -1 run scoreboard players operation temp1 int /= 1000 int
scoreboard players operation temp int %= 1000 int
scoreboard players operation temp1 int = temp int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[6] int -1 run scoreboard players operation temp1 int /= 100 int
scoreboard players operation temp int %= 100 int
scoreboard players operation temp1 int = temp int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[7] int -1 run scoreboard players operation temp1 int /= 10 int
execute store result entity @e[limit=1,tag=tmp10] Item.tag.num[8] int -1 run scoreboard players operation temp int %= 10 int