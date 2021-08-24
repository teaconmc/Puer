execute as @a unless score @s teaconjointick >= #teaconjointick teaconjointick run function teacon:hello
scoreboard players operation @a teaconjointick = #teaconjointick teaconjointick
scoreboard players add #teaconjointick teaconjointick 1
scoreboard players add @a teaconjointick 1

bossbar set teacon:bossbar players @a[tag=!teacon_hide_bossbar]

kill @e[type=minecraft:boat,scores={teaconcarttick=200..}]
scoreboard players add @e[type=minecraft:boat] teaconcarttick 1
execute as @e[type=minecraft:boat,scores={teaconcarttick=0..}] at @s if entity @a[distance=..0.25] run scoreboard players set @s teaconcarttick 0

kill @e[type=minecraft:minecart,scores={teaconcarttick=200..}]
scoreboard players add @e[type=minecraft:minecart,name="交通强国, 铁路先行"] teaconcarttick 1
execute as @e[type=minecraft:minecart,scores={teaconcarttick=0..}] at @s positioned ~ ~-0.35 ~ if entity @a[distance=..0.25] run scoreboard players set @s teaconcarttick 0

kill @e[type=meteorrandomidea:ufo,scores={teaconcarttick=200..}]
scoreboard players add @e[type=meteorrandomidea:ufo] teaconcarttick 1

kill @e[type=meteorrandomidea:motor,scores={teaconcarttick=200..}]
scoreboard players add @e[type=meteorrandomidea:motor] teaconcarttick 1
execute as @e[type=meteorrandomidea:motor,scores={teaconcarttick=0..}] at @s positioned ~ ~-0.125 ~ if entity @a[distance=..0.25] run scoreboard players set @s teaconcarttick 0

tag @a remove teacon_in_mjds
tag @a[x=703,y=64,z=824,dx=178,dy=146,dz=14] add teacon_in_mjds
effect give @a[tag=teacon_in_mjds] minecraft:saturation 2 1 true
effect give @a[tag=teacon_in_mjds] watersource:water_restoring 2 1 true

execute as @a[tag=!teacon_clear_inv_updated,sort=random,limit=1] run function teacon:clear_inv_enabled_update
execute unless entity @a[tag=!teacon_clear_inv_updated] run tag @a remove teacon_clear_inv_updated

tag @a remove teacon_judge_pioneer
execute as Izzel_Aliz run tag @s add teacon_judge_pioneer
execute as zzzz_ustc run tag @s add teacon_judge_pioneer
execute as 3TUSK run tag @s add teacon_judge_pioneer
execute as Yuesha_Kev14 run tag @s add teacon_judge_pioneer
execute as ZekerZhayard run tag @s add teacon_judge_pioneer
execute as BloCamLimb run tag @s add teacon_judge_pioneer
execute as vvvbbbcz run tag @s add teacon_judge_pioneer
execute as Infinity_rain run tag @s add teacon_judge_pioneer
execute as 0xDEAD_BEEF run tag @s add teacon_judge_pioneer

tag @a remove teacon_judge_craftsman
execute as zzzz_ustc run tag @s add teacon_judge_craftsman
execute as Yuesha_Kev14 run tag @s add teacon_judge_craftsman
execute as meitangdehulu run tag @s add teacon_judge_craftsman
execute as ZekerZhayard run tag @s add teacon_judge_craftsman
execute as Desd run tag @s add teacon_judge_craftsman
execute as Mrkwtkr run tag @s add teacon_judge_craftsman
execute as BloCamLimb run tag @s add teacon_judge_craftsman
execute as baka943 run tag @s add teacon_judge_craftsman
execute as yinyangshi run tag @s add teacon_judge_craftsman
execute as Gu_ZT run tag @s add teacon_judge_craftsman

tag @a remove teacon_judge_artist
execute as meitangdehulu run tag @s add teacon_judge_artist
execute as muyou run tag @s add teacon_judge_artist
execute as EvanLuo42 run tag @s add teacon_judge_artist
execute as Yuesha_Kev14 run tag @s add teacon_judge_artist
execute as zhai_L run tag @s add teacon_judge_artist
execute as Mrkwtkr run tag @s add teacon_judge_artist
execute as Mr_Fang run tag @s add teacon_judge_artist
execute as baka943 run tag @s add teacon_judge_artist
execute as yinyangshi run tag @s add teacon_judge_artist
execute as Infinity_rain run tag @s add teacon_judge_artist
execute as RinFair run tag @s add teacon_judge_artist
execute as Single_Valley run tag @s add teacon_judge_artist
execute as Syameimaru_Zheng run tag @s add teacon_judge_artist
