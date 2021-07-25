#旋转向量
execute store result entity @e[tag=math_marker,limit=1] Rotation[0] float -0.1 run scoreboard players add @s int 50
execute as @e[tag=math_marker] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.5
execute store result score cos int run data get entity @e[tag=math_marker,limit=1] Pos[2] 1000
execute store result score sin int run data get entity @e[tag=math_marker,limit=1] Pos[0] 1000
#坐标
execute store result entity @s Pos[0] double 0.001 run scoreboard players operation sin int += @s x1
execute store result entity @s Pos[2] double 0.001 run scoreboard players operation cos int += @s z1
execute at @s run tp @s ~ ~0.05 ~