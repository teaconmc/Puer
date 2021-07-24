execute as @e[tag=mpar_glowing] run data modify entity @s Glowing set value 0b

#粒子数据

execute as @e[tag=mpar_facing] at @s run function math:particles/facing
execute as @e[tag=mpar_facing0] at @s run function math:particles/facing0
execute as @e[tag=mpar_facing1] at @s run function math:particles/facing1
execute as @e[tag=mpar_facing2] at @s run function math:particles/facing2

execute as @e[tag=mpar_init] run function math:particles/prepare

execute as @e[tag=mpar_custom] at @s run function math:particles/custom

#抛物线
execute as @e[tag=parabola,tag=instant] at @s run function math:particles/parabola/instant
execute as @e[tag=parabola] at @s run function math:particles/parabola/slow

#直线
execute as @e[tag=linese,tag=instant] at @s run function math:particles/linese/instant
execute as @e[tag=linese] at @s run function math:particles/linese/slow
execute as @e[tag=linece] at @s run tp @s ^ ^ ^0.1

#弧
execute as @e[tag=circle,tag=instant] at @s run function math:particles/circle/instant
execute as @e[tag=circle] at @s run function math:particles/circle/slow

#转子
execute as @e[tag=rotator,tag=xy] at @s at @e[tag=attractor,limit=1,sort=nearest,distance=0.1..100] run function math:particles/rotator/rotate_xy
execute as @e[tag=rotator,tag=xz] at @s at @e[tag=attractor,limit=1,sort=nearest,distance=0.1..100] run function math:particles/rotator/rotate_xz
execute as @e[tag=rotator,tag=yz] at @s at @e[tag=attractor,limit=1,sort=nearest,distance=0.1..100] run function math:particles/rotator/rotate_yz
execute as @e[tag=mpar_particle] unless score @s mpar_omega matches 0 run function math:particles/rotate

#振子
execute as @e[tag=mpar_har] run function math:particles/har

#进度圈

execute as @e[tag=progc] run function math:particles/progc

#文本框

execute as @e[tag=textbox] at @s run function math:particles/textbox
execute as @e[tag=textup] run function math:particles/textbox/textup

#按钮
execute if entity @e[tag=button_set] run function math:particles/button_set

#显示
execute at @e[tag=!mpar_air,tag=mpar_white_effect] run particle minecraft:effect ~ ~ ~ 1 1 1 1 0 force
execute at @e[tag=!mpar_air,tag=mpar_end_rod] run particle end_rod ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_soul_fire_flame] run particle soul_fire_flame ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_flame] run particle flame ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_red_dust] run particle dust 1 0.1 0.1 0.5 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_purple_dust] run particle dust 0.580 0.0 0.827 0.5 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_hpurple_dust] run particle dust 0.580 0.0 0.827 0.8 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_hred_dust] run particle dust 1 0.1 0.1 0.8 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_white_dust] run particle dust 1 1.0 1.0 0.5 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_blue_dust] run particle dust 0.001 0.0 1.0 0.5 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_lblue_dust] run particle dust 0.001 0.7 1.0 0.5 ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_lava] run particle lava ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_barrier] run particle barrier ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_campfire_signal_smoke] run particle campfire_signal_smoke ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_campfire_cosy_smoke] run particle campfire_cosy_smoke ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_cloud] run particle cloud ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_crit] run particle crit ~ ~ ~ 0.0 0.0 0.0 0 1 force
execute at @e[tag=!mpar_air,tag=mpar_firework] run particle firework ~ ~ ~ 0.0 0.0 0.0 0 1 force

execute as @e[tag=mpar_age] run data modify entity @s Age set value 0
execute as @e[tag=mpar_aec] run function math:particles/aec

#function math:particles/test14

scoreboard players reset @a mpar_shift
scoreboard players reset @a mpar_rc

scoreboard players add tick1_timer mpar_tick 1
execute if score tick1_timer mpar_tick matches 10.. run function math:particles/tick1