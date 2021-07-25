scoreboard players set sqr int 0
execute if score sqrt int > 0 int if score sqrt int <= 100 int run scoreboard players set Smax int 1000
execute if score sqrt int > 100 int if score sqrt int <= 10000 int run scoreboard players set Smax int 10000
execute if score sqrt int > 10000 int if score sqrt int <= 1000000 int run scoreboard players set Smax int 1000
execute if score sqrt int > 1000000 int if score sqrt int <= 100000000 int run scoreboard players set Smax int 10000
scoreboard players operation stemp0 int = sqrt int
execute unless score sqrt int > 10000 int run scoreboard players operation stemp0 int *= 10000 int
scoreboard players operation Smin int = Smax int
scoreboard players operation Smin int /= 10 int
execute if score sqrt int > 0 int run function math:sqrt/sqrt1
execute if score sqrt int > 10000 int run scoreboard players operation sqr int *= 10 int