summon item 0.0 0.0 0.0 {Item:{id:"minecraft:stone",Count:1b,tag:{num:[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]}},Tags:["anum","result","tmp10"]}
execute store result score temp0 int run data get entity @e[tag=input1,limit=1] Item.tag.num[0]
execute store result score temp1 int run data get entity @e[tag=input1,limit=1] Item.tag.num[1]
execute store result score temp2 int run data get entity @e[tag=input1,limit=1] Item.tag.num[2]
execute store result score temp3 int run data get entity @e[tag=input1,limit=1] Item.tag.num[3]
execute store result score temp4 int run data get entity @e[tag=input1,limit=1] Item.tag.num[4]
execute store result score temp5 int run data get entity @e[tag=input1,limit=1] Item.tag.num[5]
execute store result score temp6 int run data get entity @e[tag=input1,limit=1] Item.tag.num[6]
execute store result score temp7 int run data get entity @e[tag=input1,limit=1] Item.tag.num[7]
execute store result score temp8 int run data get entity @e[tag=input1,limit=1] Item.tag.num[8]
execute store result score tmp0 int run data get entity @e[tag=input,limit=1] Item.tag.num[0]
execute store result score tmp1 int run data get entity @e[tag=input,limit=1] Item.tag.num[1]
execute store result score tmp2 int run data get entity @e[tag=input,limit=1] Item.tag.num[2]
execute store result score tmp3 int run data get entity @e[tag=input,limit=1] Item.tag.num[3]
execute store result score tmp4 int run data get entity @e[tag=input,limit=1] Item.tag.num[4]
execute store result score tmp5 int run data get entity @e[tag=input,limit=1] Item.tag.num[5]
execute store result score tmp6 int run data get entity @e[tag=input,limit=1] Item.tag.num[6]
execute store result score tmp7 int run data get entity @e[tag=input,limit=1] Item.tag.num[7]
execute store result score tmp8 int run data get entity @e[tag=input,limit=1] Item.tag.num[8]
scoreboard players set tmpp0 int 0
scoreboard players set tmpp1 int 0
scoreboard players set tmpp2 int 0
scoreboard players set tmpp3 int 0
scoreboard players set tmpp4 int 0
scoreboard players set tmpp5 int 0
scoreboard players set tmpp6 int 0
scoreboard players set tmpp7 int 0
scoreboard players set tmpp8 int 0
scoreboard players set tmpp9 int 0
scoreboard players set tmpp10 int 0
scoreboard players set tmpp11 int 0
scoreboard players set tmpp12 int 0
scoreboard players set tmpp13 int 0
scoreboard players set tmpp14 int 0
scoreboard players set tmpp15 int 0
scoreboard players set tmpp16 int 0

scoreboard players operation temp int = temp8 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp16 int += temp int

scoreboard players operation temp int = temp7 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp15 int += temp int

scoreboard players operation temp int = temp6 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp14 int += temp int

scoreboard players operation temp int = temp5 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp13 int += temp int

scoreboard players operation temp int = temp4 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp12 int += temp int

scoreboard players operation temp int = temp3 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp11 int += temp int

scoreboard players operation temp int = temp2 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp10 int += temp int

scoreboard players operation temp int = temp1 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp9 int += temp int

scoreboard players operation temp int = temp0 int
scoreboard players operation temp int *= tmp8 int
scoreboard players operation tmpp8 int += temp int

execute if score tmp7 int matches 1.. run function math:array/muls/1
execute if score tmp6 int matches 1.. run function math:array/muls/2
execute if score tmp5 int matches 1.. run function math:array/muls/3
execute if score tmp4 int matches 1.. run function math:array/muls/4
execute if score tmp3 int matches 1.. run function math:array/muls/5
execute if score tmp2 int matches 1.. run function math:array/muls/6
execute if score tmp1 int matches 1.. run function math:array/muls/7
execute if score tmp0 int matches 1.. run function math:array/muls/8

execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[0] int 1 run scoreboard players get tmpp0 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[1] int 1 run scoreboard players get tmpp1 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[2] int 1 run scoreboard players get tmpp2 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[3] int 1 run scoreboard players get tmpp3 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[4] int 1 run scoreboard players get tmpp4 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[5] int 1 run scoreboard players get tmpp5 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[6] int 1 run scoreboard players get tmpp6 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[7] int 1 run scoreboard players get tmpp7 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[8] int 1 run scoreboard players get tmpp8 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[9] int 1 run scoreboard players get tmpp9 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[10] int 1 run scoreboard players get tmpp10 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[11] int 1 run scoreboard players get tmpp11 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[12] int 1 run scoreboard players get tmpp12 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[13] int 1 run scoreboard players get tmpp13 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[14] int 1 run scoreboard players get tmpp14 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[15] int 1 run scoreboard players get tmpp15 int
execute store result entity @e[tag=tmp10,limit=1] Item.tag.num[16] int 1 run scoreboard players get tmpp16 int
tag @e remove tmp10