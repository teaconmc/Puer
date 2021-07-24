execute store result score stempbit0 int run data get entity @s Item.tag.bit2[0]
execute store result score stempbit1 int run data get entity @s Item.tag.bit2[1]
execute store result score stempbit2 int run data get entity @s Item.tag.bit2[2]
execute store result score stempbit3 int run data get entity @s Item.tag.bit2[3]
execute store result score stempbit4 int run data get entity @s Item.tag.bit2[4]
scoreboard players operation stempbit1 int += stempbit2 int
scoreboard players operation stempbit1 int += stempbit3 int
scoreboard players operation stempbit1 int += stempbit4 int
scoreboard players set stemp5 int 1
execute if score stempbit1 int matches 0 if score stempbit0 int < stemp2 int run scoreboard players set stemp5 int 0