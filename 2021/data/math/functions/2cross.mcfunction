tag @e remove result
execute store result score cstemp1 int run data get entity @e[tag=input,limit=1] Item.tag.line[0][0] 10000
execute store result score stempb1 int store result score cstemp2 int run data get entity @e[tag=input,limit=1] Item.tag.line[0][1] 10000
execute store result score stempx1 int store result score cstemp3 int run data get entity @e[tag=input,limit=1] Item.tag.line[1][0] 10000
execute store result score stempk1 int store result score cstemp4 int run data get entity @e[tag=input,limit=1] Item.tag.line[1][1] 10000

execute store result score cstemp5 int run data get entity @e[tag=input1,limit=1] Item.tag.line[0][0] 10000
execute store result score stempb2 int store result score cstemp6 int run data get entity @e[tag=input1,limit=1] Item.tag.line[0][1] 10000
execute store result score stempx2 int store result score cstemp7 int run data get entity @e[tag=input1,limit=1] Item.tag.line[1][0] 10000
execute store result score stempk2 int store result score cstemp8 int run data get entity @e[tag=input1,limit=1] Item.tag.line[1][1] 10000

scoreboard players operation -stempx int = cstemp1 int
scoreboard players operation -stempy int = cstemp2 int

scoreboard players operation cstemp1 int -= -stempx int
scoreboard players operation stempx1 int -= -stempx int
scoreboard players operation cstemp3 int -= -stempx int
scoreboard players operation cstemp5 int -= -stempx int
scoreboard players operation stempx2 int -= -stempx int
scoreboard players operation cstemp7 int -= -stempx int

scoreboard players operation cstemp2 int -= -stempy int
scoreboard players operation stempb1 int -= -stempy int
scoreboard players operation stempk1 int -= -stempy int
scoreboard players operation cstemp4 int -= -stempy int
scoreboard players operation stempb2 int -= -stempy int
scoreboard players operation cstemp6 int -= -stempy int
scoreboard players operation stempk2 int -= -stempy int
scoreboard players operation cstemp8 int -= -stempy int



summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{bit0:[0,0,0,0,0,1]}},Tags:["stmp"]}

execute store result score input int run scoreboard players operation stempk1 int -= cstemp2 int
execute as @e[tag=stmp] run function math:operation/bit0/break
scoreboard players set input int 10000
execute as @e[tag=stmp] run function math:operation/bit0/mult
execute store result score input int run scoreboard players operation stempx1 int -= cstemp1 int
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
scoreboard players operation stempk1 int = result int

scoreboard players operation input int = cstemp1 int
scoreboard players operation input int /= 100 int
scoreboard players operation stemp int = stempk1 int
scoreboard players operation stemp int /= 100 int
scoreboard players operation stemp int *= input int
scoreboard players operation stempb1 int -= stemp int

execute store result score input int run scoreboard players operation stempk2 int -= cstemp6 int
execute as @e[tag=stmp] run function math:operation/bit0/break
scoreboard players set input int 10000
execute as @e[tag=stmp] run function math:operation/bit0/mult
execute store result score input int run scoreboard players operation stempx2 int -= cstemp5 int
execute as @e[tag=stmp] run function math:operation/bit0/devide
execute as @e[tag=stmp] run function math:operation/bit0/0-2
scoreboard players operation stempk2 int = result int

scoreboard players operation input int = cstemp5 int
scoreboard players operation input int /= 100 int
scoreboard players operation stemp int = stempk2 int
scoreboard players operation stemp int /= 100 int
scoreboard players operation stemp int *= input int
scoreboard players operation stempb2 int -= stemp int

kill @e[tag=stmp]

scoreboard players set cstemp int 0

#tellraw @a {"score":{"name":"stempk1","objective":"int"}}
#tellraw @a {"score":{"name":"stempk2","objective":"int"}}
#tellraw @a {"score":{"name":"stempb1","objective":"int"}}
#tellraw @a {"score":{"name":"stempb2","objective":"int"}}
scoreboard players operation result1 int = stempk1 int
scoreboard players operation result2 int = stempk2 int
scoreboard players operation result3 int = stempb1 int
scoreboard players operation result4 int = stempb2 int

execute unless score stempk1 int = stempk2 int unless score stempx1 int matches 0 unless score stempx2 int matches 0 run scoreboard players set cstemp int 1
execute unless score stempx1 int matches 0 if score stempx2 int matches 0 run scoreboard players set cstemp int 2
execute unless score stempx2 int matches 0 if score stempx1 int matches 0 run scoreboard players set cstemp int 3

execute if score cstemp int matches 1 run function math:2cross1
execute if score cstemp int matches 2 run function math:2cross2
execute if score cstemp int matches 3 run function math:2cross3

execute unless score cstemp int matches 0 run function math:2cross4

tag @e remove input
tag @e remove input1