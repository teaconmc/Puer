execute if score input int matches 0 run scoreboard players set smax int 2147483647
execute if score input int matches 1..100 store result score smax int run scoreboard players set smin int 10000000
execute if score input int matches 100..10000 store result score smax int run scoreboard players set smin int 1000000
execute if score input int matches 10000..1000000 store result score smax int run scoreboard players set smin int 100000
execute if score input int matches 1000000..100000000 store result score smax int run scoreboard players set smin int 10000
execute if score input int matches 100000000.. run scoreboard players set smin int 1000
scoreboard players operation smax int *= 10 int
execute if score input int matches 100000000.. run scoreboard players set smin int 216
execute store result score stemp6 int run scoreboard players operation stemp5 int = 100000000 int
scoreboard players operation stemp5 int /= input int
scoreboard players operation stemp6 int %= input int
execute if score input int matches 1.. run function math:loop1
scoreboard players operation result int = smax int