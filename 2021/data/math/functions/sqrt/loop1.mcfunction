scoreboard players operation stemp int = smin int
scoreboard players operation stemp int += smax int
execute store result score stemp1 int store result score stemp3 int run scoreboard players operation stemp int /= 2 int
execute store result score stemp2 int run scoreboard players operation stemp1 int /= 100 int
scoreboard players operation stemp3 int %= 100 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp2 int *= stemp3 int
scoreboard players operation stemp2 int += stemp2 int
scoreboard players operation stemp3 int *= stemp3 int
scoreboard players operation stemp3 int /= 100 int
scoreboard players operation stemp2 int += stemp3 int
scoreboard players operation stemp2 int /= 100 int
scoreboard players operation stemp1 int += stemp2 int
scoreboard players operation stemp2 int = smin int
execute if score stemp1 int >= sqrt int run scoreboard players operation smax int = stemp int
execute if score stemp1 int < sqrt int run scoreboard players operation smin int = stemp int
execute unless score stemp int = stemp2 int run function math:sqrt/loop1