#坐标原点
tp @e[tag=math_marker,limit=1] ~ ~ ~

execute store result score stempx0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score stempy0 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score stempz0 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

#原轴的单位矢量
execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker] ^ ^ ^1
execute store result score stempv0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score stempv1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score stempv2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker] ^-1 ^ ^
execute store result score stempu0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score stempu1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score stempu2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker] ^ ^1 ^
execute store result score stempw0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score stempw1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score stempw2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

#uw相位角
execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -0.0001 run scoreboard players get phi int
execute as @e[tag=math_marker] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1
execute store result score cos int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000
execute store result score sin int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000

#新轴的单位矢量

#u
scoreboard players operation stemp int = stempu0 int
scoreboard players operation stemp int *= cos int
scoreboard players operation stemp1 int = stempw0 int
scoreboard players operation stemp1 int *= sin int
execute store result score stempu0- int run scoreboard players operation stemp int -= stemp1 int
scoreboard players operation stempu0- int /= 10000 int

scoreboard players operation stemp int = stempu1 int
scoreboard players operation stemp int *= cos int
scoreboard players operation stemp1 int = stempw1 int
scoreboard players operation stemp1 int *= sin int
execute store result score stempu1- int run scoreboard players operation stemp int -= stemp1 int
scoreboard players operation stempu1- int /= 10000 int

scoreboard players operation stemp int = stempu2 int
scoreboard players operation stemp int *= cos int
scoreboard players operation stemp1 int = stempw2 int
scoreboard players operation stemp1 int *= sin int
execute store result score stempu2- int run scoreboard players operation stemp int -= stemp1 int
scoreboard players operation stempu2- int /= 10000 int

#w
scoreboard players operation stemp int = stempu0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stemp1 int = stempw0 int
scoreboard players operation stemp1 int *= cos int
execute store result score stempw0- int run scoreboard players operation stemp int += stemp1 int
scoreboard players operation stempw0- int /= 10000 int

scoreboard players operation stemp int = stempu1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stemp1 int = stempw1 int
scoreboard players operation stemp1 int *= cos int
execute store result score stempw1- int run scoreboard players operation stemp int += stemp1 int
scoreboard players operation stempw1- int /= 10000 int

scoreboard players operation stemp int = stempu2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stemp1 int = stempw2 int
scoreboard players operation stemp1 int *= cos int
execute store result score stempw2- int run scoreboard players operation stemp int += stemp1 int
scoreboard players operation stempw2- int /= 10000 int

#uw重新赋值
scoreboard players operation stempu0 int = stempu0- int
scoreboard players operation stempu1 int = stempu1- int
scoreboard players operation stempu2 int = stempu2- int
scoreboard players operation stempw0 int = stempw0- int
scoreboard players operation stempw1 int = stempw1- int
scoreboard players operation stempw2 int = stempw2- int

#计算xyz

#x
execute store result score stemp1 int run scoreboard players operation stemp int = u int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempu0 int
scoreboard players operation stemp1 int *= stempu0 int
scoreboard players operation stemp1 int /= 10000 int
execute store result score x int run scoreboard players operation stemp int += stemp1 int

execute store result score stemp1 int run scoreboard players operation stemp int = v int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempv0 int
scoreboard players operation stemp1 int *= stempv0 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation x int += stemp int

execute store result score stemp1 int run scoreboard players operation stemp int = w int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempw0 int
scoreboard players operation stemp1 int *= stempw0 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation x int += stemp int

scoreboard players operation x int += stempx0 int

#y
execute store result score stemp1 int run scoreboard players operation stemp int = u int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempu1 int
scoreboard players operation stemp1 int *= stempu1 int
scoreboard players operation stemp1 int /= 10000 int
execute store result score y int run scoreboard players operation stemp int += stemp1 int

execute store result score stemp1 int run scoreboard players operation stemp int = v int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempv1 int
scoreboard players operation stemp1 int *= stempv1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation y int += stemp int

execute store result score stemp1 int run scoreboard players operation stemp int = w int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempw1 int
scoreboard players operation stemp1 int *= stempw1 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation y int += stemp int

scoreboard players operation y int += stempy0 int

#z
execute store result score stemp1 int run scoreboard players operation stemp int = u int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempu2 int
scoreboard players operation stemp1 int *= stempu2 int
scoreboard players operation stemp1 int /= 10000 int
execute store result score z int run scoreboard players operation stemp int += stemp1 int

execute store result score stemp1 int run scoreboard players operation stemp int = v int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempv2 int
scoreboard players operation stemp1 int *= stempv2 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation z int += stemp int

execute store result score stemp1 int run scoreboard players operation stemp int = w int
scoreboard players operation stemp int /= 10000 int
scoreboard players operation stemp1 int %= 10000 int
scoreboard players operation stemp int *= stempw2 int
scoreboard players operation stemp1 int *= stempw2 int
scoreboard players operation stemp1 int /= 10000 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation z int += stemp int

scoreboard players operation z int += stempz0 int