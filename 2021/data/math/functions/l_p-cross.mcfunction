execute store result score stempx0 int run data get entity @s Pos[0] 10000
execute store result score stempy0 int run data get entity @s Pos[1] 10000
execute store result score stempz0 int run data get entity @s Pos[2] 10000
execute at @s positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score stempn0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score stempn1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score stempn2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000

execute positioned 0.0 0.0 0.0 run tp @e[tag=math_marker,limit=1] ^ ^ ^1.0
execute store result score stempv0 int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
execute store result score stempv1 int run data get entity @e[tag=math_marker,limit=1] Pos[1] 1000
execute store result score stempv2 int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
tp @e[tag=math_marker] ~ ~ ~
execute store result score result0 int store result score stempx int run data get entity @e[tag=math_marker,limit=1] Pos[0] 10000
execute store result score result1 int store result score stempy int run data get entity @e[tag=math_marker,limit=1] Pos[1] 10000
execute store result score result2 int store result score stempz int run data get entity @e[tag=math_marker,limit=1] Pos[2] 10000

scoreboard players operation stempx int -= stempx0 int
scoreboard players operation stempy int -= stempy0 int
scoreboard players operation stempz int -= stempz0 int

scoreboard players operation stemp int = stempx int
scoreboard players operation stemp int *= stempn0 int
scoreboard players operation stemp1 int = stempy int
scoreboard players operation stemp1 int *= stempn1 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp1 int = stempz int
scoreboard players operation stemp1 int *= stempn2 int
scoreboard players operation stemp int += stemp1 int
scoreboard players operation stemp1 int = stempv0 int
scoreboard players operation stemp1 int *= stempn0 int
scoreboard players operation stemp2 int = stempv1 int
scoreboard players operation stemp2 int *= stempn1 int
scoreboard players operation stemp1 int += stemp2 int
scoreboard players operation stemp2 int = stempv2 int
scoreboard players operation stemp2 int *= stempn2 int
scoreboard players operation stemp1 int += stemp2 int
scoreboard players operation stemp1 int /= 1000 int
scoreboard players operation stemp int /= stemp1 int

scoreboard players operation stempv0 int *= stemp int
scoreboard players operation stempv1 int *= stemp int
scoreboard players operation stempv2 int *= stemp int
scoreboard players operation stempv0 int /= 1000 int
scoreboard players operation stempv1 int /= 1000 int
scoreboard players operation stempv2 int /= 1000 int

scoreboard players operation result0 int -= stempv0 int
scoreboard players operation result1 int -= stempv1 int
scoreboard players operation result2 int -= stempv2 int