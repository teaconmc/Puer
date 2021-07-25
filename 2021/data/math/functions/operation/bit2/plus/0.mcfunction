scoreboard players operation stemp int = input int
execute if score input int < 0 int run scoreboard players operation stemp int *= -1 int
execute store result score stemp2 int run scoreboard players operation stemp1 int = stemp int
scoreboard players operation stemp2 int %= 10000 int
execute store result score stemp3 int run scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
execute store result score stemp4 int run scoreboard players operation stemp1 int /= 10000 int
scoreboard players set stemp5 int 2
execute if score stemp4 int matches 0 unless score stemp3 int matches 0 run scoreboard players set stemp5 int 1
execute if score stemp4 int matches 0 if score stemp3 int matches 0 run scoreboard players set stemp5 int 0
execute if score stemp5 int matches 0 run function math:operation/bit0/plus/0/0
execute if score stemp5 int matches 1 run function math:operation/bit0/plus/0/1
execute if score stemp5 int matches 2 run function math:operation/bit0/plus/0/2
execute if score stemp5 int matches 0 run function math:operation/bit0/plus/0/t
execute store result score stempbit0 int run data get entity @s Item.tag.bit2[0]
execute store result score stempbit1 int run data get entity @s Item.tag.bit2[1]
execute store result score stempbit2 int run data get entity @s Item.tag.bit2[2]
execute store result score stempbit3 int run data get entity @s Item.tag.bit2[3]
execute store result score stempbit4 int run data get entity @s Item.tag.bit2[4]
execute if score stempbit0 int < stemp2 int run scoreboard players operation stempbit1 int -= 1 int
execute if score stempbit0 int < stemp2 int run scoreboard players operation stempbit0 int += 10000 int
scoreboard players operation stempbit0 int -= stemp2 int
execute if score stempbit1 int < stemp3 int run scoreboard players operation stempbit2 int -= 1 int
execute if score stempbit1 int < stemp3 int run scoreboard players operation stempbit1 int += 10000 int
scoreboard players operation stempbit1 int -= stemp3 int
execute if score stempbit2 int < stemp4 int run scoreboard players operation stempbit3 int -= 1 int
execute if score stempbit2 int < stemp4 int run scoreboard players operation stempbit2 int += 10000 int
scoreboard players operation stempbit2 int -= stemp4 int
execute if score stempbit3 int < 0 int run scoreboard players operation stempbit4 int -= 1 int
execute if score stempbit3 int < 0 int run scoreboard players operation stempbit3 int += 10000 int
execute store result entity @s Item.tag.bit2[0] int 1 run scoreboard players get stempbit0 int
execute store result entity @s Item.tag.bit2[1] int 1 run scoreboard players get stempbit1 int
execute store result entity @s Item.tag.bit2[2] int 1 run scoreboard players get stempbit2 int
execute store result entity @s Item.tag.bit2[3] int 1 run scoreboard players get stempbit3 int
execute store result entity @s Item.tag.bit2[4] int 1 run scoreboard players get stempbit4 int