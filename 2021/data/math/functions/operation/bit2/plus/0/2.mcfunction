execute store result score stempbit2 int run data get entity @s Item.tag.bit2[2]
execute store result score stempbit3 int run data get entity @s Item.tag.bit2[3]
execute store result score stempbit4 int run data get entity @s Item.tag.bit2[4]
scoreboard players operation stempbit3 int += stempbit4 int
scoreboard players set stemp5 int 1
execute if score stempbit3 int matches 0 if score stempbit2 int < stemp4 int run scoreboard players set stemp5 int 0