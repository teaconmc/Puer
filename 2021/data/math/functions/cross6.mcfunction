scoreboard players set cstemp int 5
execute if score stempf int matches 0 run scoreboard players set cstemp int 0
scoreboard players operation stemp int = stempc int
scoreboard players operation stemp int *= stempe int
scoreboard players operation stemp1 int = stempb int
scoreboard players operation stemp1 int *= stempf int
execute if score stemp int = stemp1 int run scoreboard players set cstemp int 0
execute if score cstemp int matches 0 run function math:cross7