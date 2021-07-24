summon item ~ 180.0 ~ {Tags:["stmp1"],Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1]}}}

scoreboard players operation input int = stempx1 int
scoreboard players operation input int -= stempx2 int
execute as @e[tag=stmp1] run function math:operation/bit0/break
scoreboard players operation input int = stempf int
execute as @e[tag=stmp1] run function math:operation/bit0/mult
execute store result score input int run scoreboard players operation stempz2 int -= stempz1 int
execute as @e[tag=stmp1] run function math:operation/bit1/break
scoreboard players operation input int = stempd int
execute as @e[tag=stmp1] run function math:operation/bit1/mult
execute as @e[tag=stmp1] run function math:operation/plus
scoreboard players set input int 10000
execute as @e[tag=stmp1] run function math:operation/bit0/mult
scoreboard players operation stempd int *= stempc int
scoreboard players operation stempf int *= stempa int
execute store result score input int run scoreboard players operation stempd int -= stempf int
execute as @e[tag=stmp1] run function math:operation/bit0/devide
execute as @e[tag=stmp1] run function math:operation/bit0/0-2
scoreboard players operation stempk int = result int

kill @e[tag=stmp1]