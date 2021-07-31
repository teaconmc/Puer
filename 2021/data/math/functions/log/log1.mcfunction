#1
scoreboard players operation ltemp1 int = input int
scoreboard players operation ltemp1 int -= 100 int

#2
scoreboard players operation sqrt int = a int
function math:sqrt/sqrt
scoreboard players operation sqr int *= 4 int
scoreboard players operation sqrt int *= 10 int
scoreboard players operation sqrt int += sqr int
scoreboard players operation sqrt int += 1000 int
#1*2
scoreboard players operation input1 int = input int
scoreboard players operation input int = sqrt int
function math:array/break
tag @e[tag=anum,tag=tmp,limit=1] add input1
tag @e remove tmp
scoreboard players operation input int = ltemp1 int
function math:array/break
tag @e[tag=anum,tag=tmp,limit=1] add input
tag @e remove tmp
function math:array/mult
kill @e[tag=input]
kill @e[tag=input1]
#3
scoreboard players operation ltemp3 int = a int
scoreboard players operation ltemp3 int -= 100 int
#4
scoreboard players operation sqrt int = input int
function math:sqrt/sqrt
scoreboard players operation sqr int *= 4 int
scoreboard players operation sqrt int += sqr int
scoreboard players operation sqrt int += 1000 int
scoreboard players operation ltemp4 int = sqrt int
#1*2/3*4
scoreboard players operation ltemp3 int *= ltemp4 int
scoreboard players operation input int = ltemp3 int
execute as @e[tag=result] run function math:array/dev1
execute as @e[tag=result] run data merge entity @s {Tags:["log","anum"]}
scoreboard players operation input int = input1 int


#tellraw @a {"score":{"name":"input","objective":"int"}}
#tellraw @a {"entity":"@e[tag=result]","nbt":"Item.tag"}