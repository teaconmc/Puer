data modify entity @s Item.tag merge value {result:[0.0d,0.0d,0.0d]}
execute store result score stemp1 int store result score stemp2 int run data get entity @s Item.tag.input[0] 10000
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp2 int %= 10000 int
execute store result score stemp3 int store result score stempx int run data get entity @s Item.tag.affine[0][0] 10000
execute store result score stemp4 int run scoreboard players operation stempx int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempx int *= stemp1 int
scoreboard players operation stempx int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempx int += stemp3 int
scoreboard players operation stempx int += stemp4 int
execute store result score stemp3 int store result score stempy int run data get entity @s Item.tag.affine[0][1] 10000
execute store result score stemp4 int run scoreboard players operation stempy int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempy int *= stemp1 int
scoreboard players operation stempy int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempy int += stemp3 int
scoreboard players operation stempy int += stemp4 int
execute store result score stemp3 int store result score stempz int run data get entity @s Item.tag.affine[0][2] 10000
execute store result score stemp4 int run scoreboard players operation stempz int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempz int *= stemp1 int
scoreboard players operation stempz int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempz int += stemp3 int
scoreboard players operation stempz int += stemp4 int
execute store result score stemp1 int store result score stemp2 int run data get entity @s Item.tag.input[1] 10000
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp2 int %= 10000 int
execute store result score stemp3 int store result score stempx1 int run data get entity @s Item.tag.affine[1][0] 10000
execute store result score stemp4 int run scoreboard players operation stempx1 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempx1 int *= stemp1 int
scoreboard players operation stempx1 int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempx1 int += stemp3 int
scoreboard players operation stempx1 int += stemp4 int
execute store result score stemp3 int store result score stempy1 int run data get entity @s Item.tag.affine[1][1] 10000
execute store result score stemp4 int run scoreboard players operation stempy1 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempy1 int *= stemp1 int
scoreboard players operation stempy1 int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempy1 int += stemp3 int
scoreboard players operation stempy1 int += stemp4 int
execute store result score stemp3 int store result score stempz1 int run data get entity @s Item.tag.affine[1][2] 10000
execute store result score stemp4 int run scoreboard players operation stempz1 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempz1 int *= stemp1 int
scoreboard players operation stempz1 int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempz1 int += stemp3 int
scoreboard players operation stempz1 int += stemp4 int
scoreboard players operation stempx int += stempx1 int
scoreboard players operation stempy int += stempy1 int
scoreboard players operation stempz int += stempz1 int
execute store result score stemp1 int store result score stemp2 int run data get entity @s Item.tag.input[2] 10000
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp2 int %= 10000 int
execute store result score stemp3 int store result score stempx1 int run data get entity @s Item.tag.affine[2][0] 10000
execute store result score stemp4 int run scoreboard players operation stempx1 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempx1 int *= stemp1 int
scoreboard players operation stempx1 int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempx1 int += stemp3 int
scoreboard players operation stempx1 int += stemp4 int
execute store result score stemp3 int store result score stempy1 int run data get entity @s Item.tag.affine[2][1] 10000
execute store result score stemp4 int run scoreboard players operation stempy1 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempy1 int *= stemp1 int
scoreboard players operation stempy1 int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempy1 int += stemp3 int
scoreboard players operation stempy1 int += stemp4 int
execute store result score stemp3 int store result score stempz1 int run data get entity @s Item.tag.affine[2][2] 10000
execute store result score stemp4 int run scoreboard players operation stempz1 int /= 10000 int
scoreboard players operation stemp3 int %= 10000 int
scoreboard players operation stempz1 int *= stemp1 int
scoreboard players operation stempz1 int *= 10000 int
scoreboard players operation stemp3 int *= stemp1 int
scoreboard players operation stemp4 int *= stemp2 int
scoreboard players operation stempz1 int += stemp3 int
scoreboard players operation stempz1 int += stemp4 int
scoreboard players operation stempx int += stempx1 int
scoreboard players operation stempy int += stempy1 int
scoreboard players operation stempz int += stempz1 int
execute store result score stempx1 int run data get entity @s Item.tag.affine[3][0] 10000
execute store result score stempy1 int run data get entity @s Item.tag.affine[3][1] 10000
execute store result score stempz1 int run data get entity @s Item.tag.affine[3][2] 10000
execute store result entity @s Item.tag.result[0] double 0.0001 run scoreboard players operation stempx int += stempx1 int
execute store result entity @s Item.tag.result[1] double 0.0001 run scoreboard players operation stempy int += stempy1 int
execute store result entity @s Item.tag.result[2] double 0.0001 run scoreboard players operation stempz int += stempz1 int