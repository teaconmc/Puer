data modify entity @s Pos[0] set from entity @e[tag=stmp1,limit=1] Item.tag.input

execute store result score bit7 int run data get entity @s Pos[0] -0.0000001
execute at @s if score bit7 int matches 1 run tp @s ~10000000 ~ ~
execute at @s if score bit7 int matches 2 run tp @s ~20000000 ~ ~
execute at @s if score bit7 int matches 3 run tp @s ~30000000 ~ ~

execute store result score bit6 int run data get entity @s Pos[0] -0.000001
execute at @s if score bit6 int matches 1 run tp @s ~1000000 ~ ~
execute at @s if score bit6 int matches 2 run tp @s ~2000000 ~ ~
execute at @s if score bit6 int matches 3 run tp @s ~3000000 ~ ~
execute at @s if score bit6 int matches 4 run tp @s ~4000000 ~ ~
execute at @s if score bit6 int matches 5 run tp @s ~5000000 ~ ~
execute at @s if score bit6 int matches 6 run tp @s ~6000000 ~ ~
execute at @s if score bit6 int matches 7 run tp @s ~7000000 ~ ~
execute at @s if score bit6 int matches 8 run tp @s ~8000000 ~ ~
execute at @s if score bit6 int matches 9 run tp @s ~9000000 ~ ~

execute store result score bit5 int run data get entity @s Pos[0] -0.00001
execute at @s if score bit5 int matches 1 run tp @s ~100000 ~ ~
execute at @s if score bit5 int matches 2 run tp @s ~200000 ~ ~
execute at @s if score bit5 int matches 3 run tp @s ~300000 ~ ~
execute at @s if score bit5 int matches 4 run tp @s ~400000 ~ ~
execute at @s if score bit5 int matches 5 run tp @s ~500000 ~ ~
execute at @s if score bit5 int matches 6 run tp @s ~600000 ~ ~
execute at @s if score bit5 int matches 7 run tp @s ~700000 ~ ~
execute at @s if score bit5 int matches 8 run tp @s ~800000 ~ ~
execute at @s if score bit5 int matches 9 run tp @s ~900000 ~ ~

execute store result score bit4 int run data get entity @s Pos[0] -0.0001
execute at @s if score bit4 int matches 1 run tp @s ~10000 ~ ~
execute at @s if score bit4 int matches 2 run tp @s ~20000 ~ ~
execute at @s if score bit4 int matches 3 run tp @s ~30000 ~ ~
execute at @s if score bit4 int matches 4 run tp @s ~40000 ~ ~
execute at @s if score bit4 int matches 5 run tp @s ~50000 ~ ~
execute at @s if score bit4 int matches 6 run tp @s ~60000 ~ ~
execute at @s if score bit4 int matches 7 run tp @s ~70000 ~ ~
execute at @s if score bit4 int matches 8 run tp @s ~80000 ~ ~
execute at @s if score bit4 int matches 9 run tp @s ~90000 ~ ~


execute store result score bit3 int run data get entity @s Pos[0] -0.001
execute at @s if score bit3 int matches 1 run tp @s ~1000 ~ ~
execute at @s if score bit3 int matches 2 run tp @s ~2000 ~ ~
execute at @s if score bit3 int matches 3 run tp @s ~3000 ~ ~
execute at @s if score bit3 int matches 4 run tp @s ~4000 ~ ~
execute at @s if score bit3 int matches 5 run tp @s ~5000 ~ ~
execute at @s if score bit3 int matches 6 run tp @s ~6000 ~ ~
execute at @s if score bit3 int matches 7 run tp @s ~7000 ~ ~
execute at @s if score bit3 int matches 8 run tp @s ~8000 ~ ~
execute at @s if score bit3 int matches 9 run tp @s ~9000 ~ ~


execute store result score bit2 int run data get entity @s Pos[0] -0.01
execute at @s if score bit2 int matches 1 run tp @s ~100 ~ ~
execute at @s if score bit2 int matches 2 run tp @s ~200 ~ ~
execute at @s if score bit2 int matches 3 run tp @s ~300 ~ ~
execute at @s if score bit2 int matches 4 run tp @s ~400 ~ ~
execute at @s if score bit2 int matches 5 run tp @s ~500 ~ ~
execute at @s if score bit2 int matches 6 run tp @s ~600 ~ ~
execute at @s if score bit2 int matches 7 run tp @s ~700 ~ ~
execute at @s if score bit2 int matches 8 run tp @s ~800 ~ ~
execute at @s if score bit2 int matches 9 run tp @s ~900 ~ ~


execute store result score bit1 int run data get entity @s Pos[0] -0.1
execute at @s if score bit1 int matches 1 run tp @s ~10 ~ ~
execute at @s if score bit1 int matches 2 run tp @s ~20 ~ ~
execute at @s if score bit1 int matches 3 run tp @s ~30 ~ ~
execute at @s if score bit1 int matches 4 run tp @s ~40 ~ ~
execute at @s if score bit1 int matches 5 run tp @s ~50 ~ ~
execute at @s if score bit1 int matches 6 run tp @s ~60 ~ ~
execute at @s if score bit1 int matches 7 run tp @s ~70 ~ ~
execute at @s if score bit1 int matches 8 run tp @s ~80 ~ ~
execute at @s if score bit1 int matches 9 run tp @s ~90 ~ ~

execute store result score bit0 int run data get entity @s Pos[0] -1
execute at @s if score bit0 int matches 1 run tp @s ~1 ~ ~
execute at @s if score bit0 int matches 2 run tp @s ~2 ~ ~
execute at @s if score bit0 int matches 3 run tp @s ~3 ~ ~
execute at @s if score bit0 int matches 4 run tp @s ~4 ~ ~
execute at @s if score bit0 int matches 5 run tp @s ~5 ~ ~
execute at @s if score bit0 int matches 6 run tp @s ~6 ~ ~
execute at @s if score bit0 int matches 7 run tp @s ~7 ~ ~
execute at @s if score bit0 int matches 8 run tp @s ~8 ~ ~
execute at @s if score bit0 int matches 9 run tp @s ~9 ~ ~

execute store result score dec int run data get entity @s Pos[0] -100000000

scoreboard players add dec int 1