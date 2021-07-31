tag @e[tag=vector,limit=1] add vget
execute store result score vrx int run data get entity @e[tag=vget,limit=1] Rotation[0] -10000
execute store result score vry int run data get entity @e[tag=vget,limit=1] Rotation[1] -10000
execute store result score vectorm int run data get entity @e[tag=vget,limit=1] Pos[1] 100
kill @e[tag=vector]