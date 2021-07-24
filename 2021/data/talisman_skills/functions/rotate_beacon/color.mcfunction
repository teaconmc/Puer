#颜色
scoreboard players set min int 1
scoreboard players set max int 1600
function math:random
execute if score random int matches 1..100 run setblock ~ ~1 ~ white_stained_glass
execute if score random int matches 101..200 run setblock ~ ~1 ~ orange_stained_glass
execute if score random int matches 201..300 run setblock ~ ~1 ~ magenta_stained_glass
execute if score random int matches 301..400 run setblock ~ ~1 ~ light_blue_stained_glass
execute if score random int matches 401..500 run setblock ~ ~1 ~ yellow_stained_glass
execute if score random int matches 501..600 run setblock ~ ~1 ~ lime_stained_glass
execute if score random int matches 601..700 run setblock ~ ~1 ~ pink_stained_glass
execute if score random int matches 701..800 run setblock ~ ~1 ~ gray_stained_glass
execute if score random int matches 801..900 run setblock ~ ~1 ~ light_blue_stained_glass
execute if score random int matches 901..1000 run setblock ~ ~1 ~ cyan_stained_glass
execute if score random int matches 1001..1100 run setblock ~ ~1 ~ purple_stained_glass
execute if score random int matches 1101..1200 run setblock ~ ~1 ~ blue_stained_glass
execute if score random int matches 1201..1300 run setblock ~ ~1 ~ brown_stained_glass
execute if score random int matches 1301..1400 run setblock ~ ~1 ~ green_stained_glass
execute if score random int matches 1401..1500 run setblock ~ ~1 ~ red_stained_glass
execute if score random int matches 1501..1600 run setblock ~ ~1 ~ black_stained_glass
#重置
scoreboard players set @s int 0