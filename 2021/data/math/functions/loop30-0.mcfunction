scoreboard players set stemp int 0
execute if score stempm0 int matches ..0 if score stempn0 int matches 0.. run scoreboard players set stemp int 1
execute if score stemp int matches 0 run scoreboard players set stempm0 int 2147483647
execute if score stemp int matches 0 run scoreboard players set stempn0 int -2147483648
execute if score stemp int matches 1 run scoreboard players set stempm0 int -2147483648
execute if score stemp int matches 1 run scoreboard players set stempn0 int 2147483647