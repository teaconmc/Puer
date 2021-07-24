function math:complex/arg
scoreboard players operation θ int = result int
scoreboard players operation θ int /= 2 int
function math:trif/sincos
scoreboard players operation sqrt int = r int
scoreboard players operation stemp1 int = i int
scoreboard players operation sqrt int *= sqrt int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation sqrt int += stemp1 int
function math:sqrt
function math:sqrt
scoreboard players operation input int = sqrt int
summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1],bit1:[0,0,0,0,0,1]}},Tags:["stmp"]}
execute as @e[tag=stmp] run function math:operation/bit0/break
execute as @e[tag=stmp] run function math:operation/bit1/break
scoreboard players operation input int = cos int
execute as @e[tag=stmp] run function math:operation/bit0/mult
scoreboard players operation input int = sin int
execute as @e[tag=stmp] run function math:operation/bit1/mult
scoreboard players set input int 1000000
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit1/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
scoreboard players operation r int = result int
execute as @e[tag=stmp] run function math:operation/bit1/0-2
scoreboard players operation i int = result int
kill @e[tag=stmp]