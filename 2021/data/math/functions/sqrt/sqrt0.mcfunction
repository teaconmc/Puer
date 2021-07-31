execute if score sqrt int matches 0 run scoreboard players set x int 0
execute if score sqrt int matches 0 run scoreboard players set y int 0
execute if score sqrt int matches 0 run scoreboard players set z int 0
scoreboard players operation stemp int = sqrt int
scoreboard players operation stemp1 int = sqrt int
scoreboard players operation stemp int /= 1000000 int
scoreboard players operation stemp int *= 1000000 int
scoreboard players operation stemp1 int -= stemp int
scoreboard players operation stemp2 int = stemp1 int
scoreboard players operation stemp1 int /= 1000 int
scoreboard players operation stemp1 int *= 1000 int
scoreboard players operation stemp2 int -= stemp1 int
scoreboard players operation stemp1 int /= 1000 int
scoreboard players operation stemp int /= 1000000 int
execute if score stemp int matches 1.. run function math:sqrt/1000000-2147000000
execute if score stemp1 int matches 1.. run function math:sqrt/1000-999000
execute if score stemp2 int matches 1.. run function math:sqrt/1-999

summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
execute store result entity @e[tag=stmp,limit=1] Pos[0] double 0.0001 run scoreboard players get x int
execute store result entity @e[tag=stmp,limit=1] Pos[1] double 0.0001 run scoreboard players get y int
execute store result entity @e[tag=stmp,limit=1] Pos[2] double 0.0001 run scoreboard players get z int
execute as @e[tag=stmp] at @s positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ^ ^ ^1
execute as @e[tag=stmp] store result score stmp int run data get entity @s Pos[0] 10000
execute as @e[tag=stmp] store result score stmp1 int run data get entity @s Pos[1] 10000
execute as @e[tag=stmp] store result score stmp2 int run data get entity @s Pos[2] 10000

scoreboard players operation stemp int = x int
scoreboard players operation x int /= stmp int
scoreboard players operation x int *= 10000 int
scoreboard players operation stemp int %= stmp int
scoreboard players operation stemp int *= 10000 int
scoreboard players operation stemp int /= stmp int
scoreboard players operation x int += stemp int

scoreboard players operation stemp int = y int
scoreboard players operation y int /= stmp1 int
scoreboard players operation y int *= 10000 int
scoreboard players operation stemp int %= stmp1 int
scoreboard players operation stemp int *= 10000 int
scoreboard players operation stemp int /= stmp1 int
scoreboard players operation y int += stemp int

scoreboard players operation stemp int = z int
scoreboard players operation z int /= stmp2 int
scoreboard players operation z int *= 10000 int
scoreboard players operation stemp int %= stmp2 int
scoreboard players operation stemp int *= 10000 int
scoreboard players operation stemp int /= stmp2 int
scoreboard players operation z int += stemp int

scoreboard players set sqrt int -1
scoreboard players operation sqrt int > x int
scoreboard players operation sqrt int > y int
scoreboard players operation sqrt int > z int

kill @e[tag=stmp]