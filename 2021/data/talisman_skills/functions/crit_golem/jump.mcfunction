#获取速度
execute positioned 0.0 0.0 0.0 rotated as @s rotated ~ 0.0 as @e[tag=math_marker,limit=1] run tp @s ^ ^ ^1.0
execute as @e[tag=math_marker,limit=1] at @s run tp @s ~ ~0.5 ~
#赋值速度
data modify entity @s Motion set from entity @e[tag=math_marker,limit=1] Pos