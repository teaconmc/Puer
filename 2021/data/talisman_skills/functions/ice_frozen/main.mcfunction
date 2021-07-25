#设置冰方块
#效果
scoreboard players set min int 1
scoreboard players set max int 1600
function math:random
execute if score random int matches 1..199 run setblock ~ ~ ~ sea_lantern
execute if score random int matches 200..500 run setblock ~ ~ ~ blue_ice
execute if score random int matches 501..1600 run setblock ~ ~ ~ packed_ice