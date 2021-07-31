execute store result score stempbit1 int run data get entity @s Item.tag.bit0[1]
execute store result score stempbit2 int run data get entity @s Item.tag.bit0[2]
execute store result score stempbit3 int run data get entity @s Item.tag.bit0[3]
execute store result score stempbit4 int run data get entity @s Item.tag.bit0[4]
scoreboard players operation stempbit2 int += stempbit3 int
scoreboard players operation stempbit2 int += stempbit4 int
scoreboard players set stemp5 int 1
execute if score stempbit2 int matches 0 if score stempbit1 int < stemp3 int run scoreboard players set stemp5 int 0