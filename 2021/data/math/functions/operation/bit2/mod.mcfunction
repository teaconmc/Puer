execute store result score stemp int run data get entity @s Item.tag.bit2[5]
scoreboard players operation stemp1 int = input int
execute if score input int < 0 int run scoreboard players operation stemp int *= -1 int
execute if score input int < 0 int run scoreboard players operation stemp1 int *= -1 int
execute store result entity @s Item.tag.bit2[5] int 1 run scoreboard players get stemp int



execute store result score stemp2 int store result score stemp int run data get entity @s Item.tag.bit2[4]
execute store result entity @s Item.tag.bit2[4] int 1 run scoreboard players operation stemp int /= stemp1 int
execute store result score stemp3 int run scoreboard players operation stemp2 int %= stemp1 int




execute store result score stemp5 int run scoreboard players set stemp4 int 2147480000
execute store result score stemp7 int run scoreboard players operation stemp4 int /= stemp1 int
execute store result score stemp8 int run scoreboard players operation stemp5 int %= stemp1 int
scoreboard players set stemp6 int 214748
scoreboard players operation stemp3 int /= stemp6 int
scoreboard players operation stemp2 int %= stemp6 int
scoreboard players operation stemp2 int *= 10000 int
scoreboard players operation stemp5 int *= stemp3 int
scoreboard players operation stemp4 int *= stemp3 int
execute store result score stemp int run data get entity @s Item.tag.bit2[3]
scoreboard players operation stemp5 int += stemp int
execute store result score stemp2 int run scoreboard players operation stemp5 int += stemp2 int
scoreboard players operation stemp5 int /= stemp1 int
execute store result entity @s Item.tag.bit2[3] int 1 run scoreboard players operation stemp5 int += stemp4 int
execute store result score stemp3 int run scoreboard players operation stemp2 int %= stemp1 int





scoreboard players operation stemp4 int = stemp7 int
scoreboard players operation stemp5 int = stemp8 int
scoreboard players operation stemp3 int /= stemp6 int
scoreboard players operation stemp2 int %= stemp6 int
scoreboard players operation stemp2 int *= 10000 int
scoreboard players operation stemp5 int *= stemp3 int
scoreboard players operation stemp4 int *= stemp3 int
execute store result score stemp int run data get entity @s Item.tag.bit2[2]
scoreboard players operation stemp5 int += stemp int
execute store result score stemp2 int run scoreboard players operation stemp5 int += stemp2 int
scoreboard players operation stemp5 int /= stemp1 int
execute store result entity @s Item.tag.bit2[2] int 1 run scoreboard players operation stemp5 int += stemp4 int
execute store result score stemp3 int run scoreboard players operation stemp2 int %= stemp1 int






scoreboard players operation stemp4 int = stemp7 int
scoreboard players operation stemp5 int = stemp8 int
scoreboard players operation stemp3 int /= stemp6 int
scoreboard players operation stemp2 int %= stemp6 int
scoreboard players operation stemp2 int *= 10000 int
scoreboard players operation stemp5 int *= stemp3 int
scoreboard players operation stemp4 int *= stemp3 int
execute store result score stemp int run data get entity @s Item.tag.bit2[1]
scoreboard players operation stemp5 int += stemp int
execute store result score stemp2 int run scoreboard players operation stemp5 int += stemp2 int
scoreboard players operation stemp5 int /= stemp1 int
execute store result entity @s Item.tag.bit2[1] int 1 run scoreboard players operation stemp5 int += stemp4 int
execute store result score stemp3 int run scoreboard players operation stemp2 int %= stemp1 int






scoreboard players operation stemp4 int = stemp7 int
scoreboard players operation stemp5 int = stemp8 int
scoreboard players operation stemp3 int /= stemp6 int
scoreboard players operation stemp2 int %= stemp6 int
scoreboard players operation stemp2 int *= 10000
scoreboard players operation stemp5 int *= stemp3 int
scoreboard players operation stemp4 int *= stemp3 int
execute store result score stemp int run data get entity @s Item.tag.bit2[0]
scoreboard players operation stemp5 int += stemp int
execute store result score result int run scoreboard players operation stemp5 int += stemp2 int
scoreboard players operation stemp5 int /= stemp1 int
execute store result entity @s Item.tag.bit2[0] int 1 run scoreboard players operation stemp5 int += stemp4 int
scoreboard players operation result int %= stemp1 int