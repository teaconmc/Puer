scoreboard players set cstemp int 3
execute if score stempf int matches 0 run scoreboard players set cstemp int 0
scoreboard players operation stemp int = stempc int
scoreboard players operation stemp int *= stempd int
scoreboard players operation stemp1 int = stempa int
scoreboard players operation stemp1 int *= stempf int
execute if score stemp int = stemp1 int run scoreboard players set cstemp int 0
execute if score cstemp int matches 0 run function math:cross5