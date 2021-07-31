scoreboard players add timer mpar_tick 1

execute if score timer mpar_tick matches 2403 run scoreboard players set a mpar_temp 200
execute if score timer mpar_tick matches 2403..2803 run function math:particles/test8

execute if score timer mpar_tick matches 2805..3550 at @a positioned ~ ~-3 ~ run summon minecraft:area_effect_cloud ^ ^ ^5.0 {Tags:["parabola","mpar_init","mpar_firework","instant","mpar_facing","mpar_facing2"],Duration:100}

execute if score timer mpar_tick matches 3601 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[0.0f,10.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3612 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[10.0f,20.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3623 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[20.0f,30.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3634 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[30.0f,40.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3645 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[40.0f,50.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3656 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[50.0f,60.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3667 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[60.0f,70.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3678 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[70.0f,80.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3689 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[80.0f,90.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3690 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[90.0f,100.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3701 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[100.0f,110.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3712 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[110.0f,120.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3723 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[120.0f,130.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3734 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[130.0f,140.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3745 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[140.0f,150.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3751 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[150.0f,160.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3762 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[160.0f,170.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3773 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[170.0f,180.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3784 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[180.0f,190.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3795 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[190.0f,200.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3806 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[200.0f,210.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3817 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[210.0f,220.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3828 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[220.0f,230.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3839 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[230.0f,240.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3840 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[240.0f,250.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3851 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[250.0f,260.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3862 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[260.0f,270.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3873 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[270.0f,280.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3884 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[280.0f,290.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}
execute if score timer mpar_tick matches 3895 run summon minecraft:area_effect_cloud 0.0 25.0 0.0 {Rotation:[290.0f,300.0f],Tags:["parabola","mpar_init","mpar_end_rod","mpar_aec"],Duration:100}

execute if score timer mpar_tick matches 4000 run kill @e[tag=mpar_end_rod]

execute if score timer mpar_tick matches 4000 run summon area_effect_cloud 0.0 10.0 0.0 {Tags:["mpar_custom","circle","mpar_end_rod"],Motion:[0.008,0.0,3.6],Air:3,Duration:200}

execute if score timer mpar_tick matches 4050 run summon area_effect_cloud 0.0 10.0 0.0 {Tags:["mpar_custom","circle","mpar_end_rod"],Motion:[0.010,0.0,3.6],Air:5,Duration:200}

execute if score timer mpar_tick matches 4070 run summon area_effect_cloud 0.0 10.0 0.0 {Tags:["mpar_custom","circle","mpar_end_rod"],Motion:[0.015,0.0,3.6],Air:10,Duration:200}

execute if score timer mpar_tick matches 4100 run function math:particles/test9

execute if score timer mpar_tick matches 4150 run function math:particles/test9

execute if score timer mpar_tick matches 4180 run function math:particles/test9

execute if score timer mpar_tick matches 4210 run function math:particles/test11

execute if score timer mpar_tick matches 4240 run function math:particles/test11

execute if score timer mpar_tick matches 4280 run function math:particles/test11

execute if score timer mpar_tick matches 4320 run function math:particles/test10

execute if score timer mpar_tick matches 4360 run function math:particles/test10

execute if score timer mpar_tick matches 4400 run function math:particles/test10

execute if score timer mpar_tick matches 4450 run function math:particles/test10

execute if score timer mpar_tick matches 4480 run function math:particles/test10

execute if score timer mpar_tick matches 4510 run function math:particles/test10

execute if score timer mpar_tick matches 4650 run function math:particles/test10

execute if score timer mpar_tick matches 4690 run function math:particles/test10

execute if score timer mpar_tick matches 4750..4809 run function math:particles/test12

execute if score timer mpar_tick matches 4810..4869 run function math:particles/test13

execute if score timer mpar_tick matches 2401..5500 run schedule function math:particles/display1 1t