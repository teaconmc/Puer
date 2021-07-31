execute at @s positioned 0.0 0.0 0.0 run summon area_effect_cloud ^-1.0 ^ ^ {Tags:["tmp"]}
execute store result score @s mpar_u0 run data get entity @e[tag=tmp,limit=1] Pos[0] 10000
execute store result score @s mpar_u1 run data get entity @e[tag=tmp,limit=1] Pos[1] 10000
execute store result score @s mpar_u2 run data get entity @e[tag=tmp,limit=1] Pos[2] 10000
execute at @s positioned 0.0 0.0 0.0 run tp @e[tag=tmp] ^ ^1.0 ^
execute store result score @s mpar_w0 run data get entity @e[tag=tmp,limit=1] Pos[0] 10000
execute store result score @s mpar_w1 run data get entity @e[tag=tmp,limit=1] Pos[1] 10000
execute store result score @s mpar_w2 run data get entity @e[tag=tmp,limit=1] Pos[2] 10000
kill @e[tag=tmp]
execute store result score @s mpar_omega run data get entity @s Motion[0] 10
execute store result score @s mpar_r run data get entity @s Motion[1] 100
execute store result score @s mpar_l run data get entity @s Motion[2] 1000
execute at @s run summon area_effect_cloud ~ ~-0.8 ~ {Tags:["progc1","mpar_aec"],CustomName:"\"loading\"",CustomNameVisible:true}

execute store result score @s mpar_x run data get entity @s Pos[0] 1000
execute store result score @s mpar_y run data get entity @s Pos[1] 1000
execute store result score @s mpar_z run data get entity @s Pos[2] 1000
scoreboard players add @s mpar_y 500