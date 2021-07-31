forceload add -1 -1 1 1
gamerule maxCommandChainLength 2147483647
scoreboard objectives add real dummy
scoreboard objectives add imag dummy
scoreboard objectives add scb dummy
scoreboard objectives add sort dummy
scoreboard objectives add cn dummy
scoreboard objectives add oper dummy
scoreboard objectives add distance dummy
scoreboard objectives add vx dummy
scoreboard objectives add vy dummy
scoreboard objectives add vz dummy
scoreboard objectives add int dummy
scoreboard objectives add int1 dummy
scoreboard objectives add int2 dummy
scoreboard objectives add timer dummy
scoreboard objectives add u dummy
scoreboard objectives add v dummy
scoreboard objectives add w dummy
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add rx dummy
scoreboard objectives add ry dummy
scoreboard objectives add t dummy
scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy
scoreboard objectives add t1 dummy
scoreboard objectives add angel dummy
scoreboard objectives add angel1 dummy
scoreboard objectives add amp dummy
scoreboard objectives add CD dummy
scoreboard objectives add id dummy
scoreboard objectives add result dummy
scoreboard objectives add d dummy
scoreboard objectives add h dummy
scoreboard objectives add l dummy
scoreboard players set 0 int 0
scoreboard players set 1 int 1
scoreboard players set 2 int 2
scoreboard players set 3 int 3
scoreboard players set 4 int 4
scoreboard players set 5 int 5
scoreboard players set 6 int 6
scoreboard players set 7 int 7
scoreboard players set 8 int 8
scoreboard players set 9 int 9
scoreboard players set 10 int 10
scoreboard players set 32 int 32
scoreboard players set 100 int 100
scoreboard players set 174 int 174
scoreboard players set 250 int 250
scoreboard players set 500 int 500
scoreboard players set 359 int 359
scoreboard players set 360 int 360
scoreboard players set 1000 int 1000
scoreboard players set 5000 int 5000
scoreboard players set 8593 int 8593
scoreboard players set 10000 int 10000
scoreboard players set 100000 int 100000
scoreboard players set 214748 int 214748
scoreboard players set 572958 int 572958
scoreboard players set 900000 int 900000
scoreboard players set 1000000 int 1000000
scoreboard players set 1745329 int 1745329
scoreboard players set 1800000 int 1800000
scoreboard players set 3600000 int 3600000
scoreboard players set 5729577 int 5729577
scoreboard players set 10000000 int 10000000
scoreboard players set 100000000 int 100000000
scoreboard players set 1000000000 int 1000000000
scoreboard players set 1103515245 int 1103515245
scoreboard players set ω int 1
scoreboard players set v int 1
scoreboard players set lx int 0
scoreboard players set times int 0
scoreboard players set times1 int 0
scoreboard players set -1 int -1
scoreboard players set T int 4
scoreboard players set l int 1000
scoreboard players set ecc int 10
scoreboard players set ex int 100
scoreboard players set ey int 100
scoreboard players set ez int 100
scoreboard players set sqr2 int 14142
scoreboard players set sqr3 int 17320
scoreboard players set sqr5 int 22360
scoreboard players set sqr6 int 24494
scoreboard players set sqr7 int 26457
scoreboard players set sqr10 int 31622
scoreboard players set sqr11 int 33166
scoreboard players set sqr13 int 36055
scoreboard players set sqr14 int 37416
scoreboard players set sqr15 int 38729
scoreboard players set sqr17 int 41231
scoreboard players set sqr19 int 43588
scoreboard players set pi int 31415
scoreboard players set g int 6180
scoreboard players set e int 27182
scoreboard players set 1/pi int 3183
scoreboard players set 1/e int 3678
scoreboard players set sqrpi int 17724
scoreboard players set sqre int 16487
scoreboard players set ln2 int 6931
scoreboard players set ln3 int 10986
scoreboard players set ln5 int 16094
scoreboard players set ln7 int 19459
scoreboard players set lg2 int 3010
scoreboard players set lg3 int 4771
scoreboard players set lg5 int 6989
scoreboard players set lg7 int 8450
scoreboard players set exp2 int 73890
scoreboard players set exp3 int 200855
scoreboard players set sin15 int 2588
scoreboard players set cos15 int 9659
scoreboard players set sin18 int 3090
scoreboard players set cos18 int 9510
scoreboard objectives add math_clickevent minecraft.used:minecraft.carrot_on_a_stick
execute store result score random_seed int run time query gametime
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp"]}
execute store result score stemp int run data get entity @e[tag=stmp,limit=1] UUIDLeast 0.000000000001
execute store result score stemp1 int run data get entity @e[tag=stmp,limit=1] UUID[0]
scoreboard players operation random_seed int *= stemp int
scoreboard players operation random_seed int += stemp1 int
kill @e[tag=stmp]