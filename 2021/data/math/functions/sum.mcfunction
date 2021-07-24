summon item ~ 255.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{tmp:[]}},Tags:["stmp1"]}
data modify entity @e[tag=stmp1,limit=1] Item.tag.tmp set from entity @s Item.tag.list
scoreboard players set result int 0
execute as @e[tag=stmp1] run function math:loop12
kill @e[tag=stmp1]