execute store result entity @s Pos[0] double 0.001 run scoreboard players get tempx mpar_temp
execute store result entity @s Pos[1] double 0.001 run scoreboard players get tempy mpar_temp
execute store result entity @s Pos[2] double 0.001 run scoreboard players get tempz mpar_temp
tag @s remove tmp
data modify entity @s Tags set from entity @e[tag=tmp2,limit=1] Tags
data modify entity @s Duration set value 2
tag @s remove tmp2
tag @s remove mpar_aec
tag @s remove progc
tag @s remove mpar_air