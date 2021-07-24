summon item 0.0 0.0 0.0 {Tags:["tmp10"],Item:{id:"minecraft:stone",Count:1b,tag:{num:[8,5,9,3,4,5,3,1,6,0,0,0,0,0,0,0,0]}},NoGravity:true}
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[0]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[0]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[0] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[1]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[1]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[1] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[2]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[2]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[2] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[3]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[3]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[3] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[4]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[4]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[4] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[5]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[5]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[5] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[6]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[6]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[6] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[7]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[7]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[7] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[8]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[8]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[8] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[8]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[8]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[8] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[9]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[9]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[9] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[10]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[10]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[10] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[11]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[11]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[11] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[12]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[12]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[12] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[13]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[13]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[13] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[14]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[14]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[14] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[15]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[15]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[15] int 1 run scoreboard players operation temp int += temp1 int
execute store result score temp int run data get entity @e[tag=input,limit=1] Item.tag.num[16]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[16]
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[16] int 1 run scoreboard players operation temp int += temp1 int
execute as @e[tag=tmp10] run data merge entity @s {Tags:["anum","result"]}