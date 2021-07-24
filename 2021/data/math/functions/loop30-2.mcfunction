scoreboard players set stemp int 0
execute if score stempm2 int matches ..0 if score stempn2 int matches 0.. run scoreboard players set stemp int 1
execute if score stemp int matches 0 run scoreboard players set stempm2 int 2147483647
execute if score stemp int matches 0 run scoreboard players set stempn2 int -2147483648
execute if score stemp int matches 1 run scoreboard players set stempm2 int -2147483648
execute if score stemp int matches 1 run scoreboard players set stempn2 int 2147483647