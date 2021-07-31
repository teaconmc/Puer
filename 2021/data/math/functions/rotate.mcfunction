execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -0.0001 run scoreboard players get theta int
execute as @e[tag=math_marker] at @s positioned 0.0 0.0 0.0 rotated ~ 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
execute store result score sin int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000

execute store result score stempx0 int run data get entity @s Pos[0] 10000
execute store result score stempy0 int run data get entity @s Pos[1] 10000
execute store result score stempz0 int run data get entity @s Pos[2] 10000
scoreboard players operation stempx0 int -= x0 int
scoreboard players operation stempy0 int -= y0 int
scoreboard players operation stempz0 int -= z0 int

scoreboard players operation stempd int = stempx0 int
scoreboard players operation stempd int *= n0 int
scoreboard players operation stemp int = stempy0 int
scoreboard players operation stemp int *= n1 int
scoreboard players operation stempd int += stemp int
scoreboard players operation stemp int = stempz0 int
scoreboard players operation stemp int *= n2 int
scoreboard players operation stempd int += stemp int
scoreboard players operation stempd int /= 10000 int
scoreboard players operation stempd int *= -1 int

execute store result score stemp1 int run scoreboard players operation stemp int = stempd int
execute store result score stempx1 int store result score stempy1 int store result score stempz1 int run scoreboard players operation stemp int /= 10000 int
execute store result score stempx1- int store result score stempy1- int store result score stempz1- int run scoreboard players operation stemp1 int %= 10000 int

scoreboard players operation stempx1 int *= n0 int
scoreboard players operation stempx1- int *= n0 int
scoreboard players operation stempx1- int /= 10000 int
execute store result score stempx1- int run scoreboard players operation stempx1 int += stempx1- int
scoreboard players operation stempx1 int += stempx0 int
scoreboard players operation stempy1 int *= n1 int
scoreboard players operation stempy1- int *= n1 int
scoreboard players operation stempy1- int /= 10000 int
execute store result score stempy1- int run scoreboard players operation stempy1 int += stempy1- int
scoreboard players operation stempy1 int += stempy0 int
scoreboard players operation stempz1 int *= n2 int
scoreboard players operation stempz1- int *= n2 int
scoreboard players operation stempz1- int /= 10000 int
execute store result score stempz1- int run scoreboard players operation stempz1 int += stempz1- int
scoreboard players operation stempz1 int += stempz0 int
scoreboard players operation stempx1 int *= cos int
scoreboard players operation stempx1 int /= 1000 int
scoreboard players operation stempy1 int *= cos int
scoreboard players operation stempy1 int /= 1000 int
scoreboard players operation stempz1 int *= cos int
scoreboard players operation stempz1 int /= 1000 int

scoreboard players operation stempx2 int = n1 int
scoreboard players operation stemp int = n2 int
scoreboard players operation stempx2 int *= stempz0 int
scoreboard players operation stemp int *= stempy0 int
scoreboard players operation stempx2 int -= stemp int
scoreboard players operation stempx2 int /= 10000 int
scoreboard players operation stempy2 int = n2 int
scoreboard players operation stemp int = n0 int
scoreboard players operation stempy2 int *= stempx0 int
scoreboard players operation stemp int *= stempz0 int
scoreboard players operation stempy2 int -= stemp int
scoreboard players operation stempy2 int /= 10000 int
scoreboard players operation stempz2 int = n0 int
scoreboard players operation stemp int = n1 int
scoreboard players operation stempz2 int *= stempy0 int
scoreboard players operation stemp int *= stempx0 int
scoreboard players operation stempz2 int -= stemp int
scoreboard players operation stempz2 int /= 10000 int
scoreboard players operation stempx2 int *= sin int
scoreboard players operation stempx2 int /= 1000 int
scoreboard players operation stempy2 int *= sin int
scoreboard players operation stempy2 int /= 1000 int
scoreboard players operation stempz2 int *= sin int
scoreboard players operation stempz2 int /= 1000 int

scoreboard players operation stempx1 int += stempx2 int
scoreboard players operation stempx1 int -= stempx1- int
execute store result entity @s Pos[0] double 0.0001 run scoreboard players operation stempx1 int += x0 int

scoreboard players operation stempy1 int += stempy2 int
scoreboard players operation stempy1 int -= stempy1- int
execute store result entity @s Pos[1] double 0.0001 run scoreboard players operation stempy1 int += y0 int

scoreboard players operation stempz1 int += stempz2 int
scoreboard players operation stempz1 int -= stempz1- int
execute store result entity @s Pos[2] double 0.0001 run scoreboard players operation stempz1 int += z0 int