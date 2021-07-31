scoreboard players operation sqrt int = input int
execute if score sqrt int matches ..-1 run scoreboard players operation sqrt int *= -1 int
execute if score sqrt int matches 1..100 run scoreboard players set smin int 100
execute if score sqrt int matches 100..10000 run scoreboard players set smin int 1000
execute if score sqrt int matches 10000..1000000 run scoreboard players set smin int 10000
execute if score sqrt int matches 1000000..100000000 run scoreboard players set smin int 100000
execute if score sqrt int matches 100000000..1000000000 run scoreboard players set smin int 1000000
scoreboard players operation smax int = smin int
scoreboard players operation smax int *= 10 int
execute if score sqrt int matches 100000000..1000000000 run scoreboard players set smax int 3162277
execute if score sqrt int matches 1.. run function math:sqrt/loop1
execute if score sqrt int matches 1.. run scoreboard players operation result int = smax int