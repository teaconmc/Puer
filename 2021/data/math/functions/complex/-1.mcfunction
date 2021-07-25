scoreboard players operation stempu int = r int
scoreboard players operation stemp1 int = i int
scoreboard players operation stempu int *= stempu int
scoreboard players operation stemp1 int *= stemp1 int
scoreboard players operation stempu int += stemp1 int

summon item ~ 180.0 ~ {Tags:["stmp"],Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1]}}}
scoreboard players operation input int = r int
execute as @e[tag=stmp] run function math:operation/bit0/break
scoreboard players set input int 10000
execute as @e[tag=stmp] run function math:operation/bit0/mult
scoreboard players operation input int = stempu int
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
scoreboard players operation r int = result int

scoreboard players operation input int = i int
execute as @e[tag=stmp] run function math:operation/bit0/break
scoreboard players set input int 10000
execute as @e[tag=stmp] run function math:operation/bit0/mult
scoreboard players operation input int = stempu int
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
scoreboard players operation i int = result int

kill @e[tag=stmp]