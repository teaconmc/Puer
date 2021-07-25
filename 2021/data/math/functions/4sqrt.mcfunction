scoreboard players operation sqrt int = input int
execute if score sqrt int matches ..-1 run scoreboard players operation sqrt int *= -1 int
execute if score sqrt int matches 1..100 run scoreboard players set smin int 10000
execute if score sqrt int matches 100..10000 run scoreboard players set smin int 100000
execute if score sqrt int matches 10000..1000000 run scoreboard players set smin int 1000000
execute if score sqrt int matches 1000000..100000000 run scoreboard players set smin int 10000000
execute if score sqrt int matches 100000000..1000000000 run scoreboard players set smin int 100000000
scoreboard players operation smax int = smin int
scoreboard players operation smax int *= 10 int
execute if score sqrt int matches 100000000..1000000000 run scoreboard players set smax int 316227766
execute if score sqrt int matches 1.. run function math:sqrt/loop
execute if score sqrt int matches 1.. run scoreboard players operation result int = smax int
execute if score input int matches ..-1 run scoreboard players operation result int *= -1 int