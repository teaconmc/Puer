summon area_effect_cloud 0.0 0.0 0.0 {Tags:["stmp","stmp1"]}
summon arrow 0.0 0.0 0.0 {Tags:["stmp2"],Motion:[0.0,0.0,0.0]}
data modify entity @e[tag=stmp2,limit=1] Motion set value [0.0,0.0,0.000000000000000000000000000000000000000001]
execute as @e[tag=stmp2] at @s run tp @e[tag=stmp1,limit=1] ^ ^ ^1.0
tellraw @a {"nbt":"Pos","entity":"@e[tag=stmp1,limit=1]"}
data modify entity @e[tag=stmp2,limit=1] Motion set value [0.0,0.0,-0.000000000000000000000000000000000000000001]
execute as @e[tag=stmp2] at @s run tp @e[tag=stmp1,limit=1] ^ ^ ^1.0
tellraw @a {"nbt":"Pos","entity":"@e[tag=stmp1,limit=1]"}
kill @e[tag=stmp]