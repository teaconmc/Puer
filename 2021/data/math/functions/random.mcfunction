scoreboard players operation random_seed int *= 1103515245 int
execute store result score random int run scoreboard players add random_seed int 12345
scoreboard players operation stemp int = max int
scoreboard players operation stemp int -= min int
scoreboard players add stemp int 1
scoreboard players operation random int %= stemp int
scoreboard players operation random int += min int