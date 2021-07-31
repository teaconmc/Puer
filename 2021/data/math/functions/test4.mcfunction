#自己坐标
execute store result score stempx1 int store result score stempx0 int run data get entity @s Pos[0] 10000
execute store result score stempy1 int store result score stempy0 int run data get entity @s Pos[1] 10000
execute store result score stempz1 int store result score stempz0 int run data get entity @s Pos[2] 10000


#uvw系基底
execute rotated as @s positioned 0.0 0.0 0.0 run summon area_effect_cloud ^1.0 ^ ^ {Tags:["stmp"]}
execute store result score stempu0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stempu1 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stempu2 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute rotated as @s positioned 0.0 0.0 0.0 run tp @e[tag=stmp,limit=1] ^ ^1.0 ^
execute store result score stempw0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stempw1 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stempw2 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000

#三角函数
data modify entity @e[tag=stmp,limit=1] Rotation[1] set value 0.0f
execute store result entity @e[tag=stmp,limit=1] Rotation[0] float -0.5 run scoreboard players operation @s mpar_tick += v int
execute as @e[tag=stmp] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.0
execute store result score cos int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
execute store result score sin int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000


#偏移
scoreboard players operation u int = cos int
scoreboard players operation w int = sin int
scoreboard players operation u int *= r int
scoreboard players operation w int *= r int

scoreboard players operation stempu0 int *= u int
scoreboard players operation stempu1 int *= u int
scoreboard players operation stempu2 int *= u int

scoreboard players operation stempw0 int *= w int
scoreboard players operation stempw1 int *= w int
scoreboard players operation stempw2 int *= w int

#保持比例
scoreboard players operation stempu0 int /= 10000 int
scoreboard players operation stempu1 int /= 10000 int
scoreboard players operation stempu2 int /= 10000 int

scoreboard players operation stempw0 int /= 10000 int
scoreboard players operation stempw1 int /= 10000 int
scoreboard players operation stempw2 int /= 10000 int


#输出

execute as @e[tag=stmp] run function math:store0
execute as @e[tag=stmp] run function math:store1


kill @e[tag=stmp]