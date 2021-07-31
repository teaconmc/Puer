scoreboard players operation stemp1 int = Smax int
scoreboard players operation stemp1 int += Smin int
scoreboard players operation stemp1 int /= 2 int
scoreboard players operation sqr int = stemp1 int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stemp2 int = Smax int
scoreboard players operation stemp2 int -= Smin int
execute if score stemp1 int >= stemp0 int run scoreboard players operation Smax int = sqr int
execute if score stemp1 int < stemp0 int run scoreboard players operation Smin int = sqr int
execute unless score stemp2 int < 2 int run function math:sqrt/sqrt1