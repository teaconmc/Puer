#(-0.1,0.1)
#(-0.9,0.1)∩(-0.1,0.9)

execute positioned ~-0.9 ~-0.9 ~-0.9 run tag @s[dx=0,dy=0,dz=0] add hit_test0
execute positioned ~-0.1 ~-0.1 ~-0.1 run tag @s[dx=0,dy=0,dz=0] add hit_test1

scoreboard players set result int 0
execute if entity @s[tag=hit_test0,tag=hit_test1] run scoreboard players set result int 1

tag @s remove hit_test0
tag @s remove hit_test1