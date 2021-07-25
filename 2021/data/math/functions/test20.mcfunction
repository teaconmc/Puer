	summon item ~ ~ ~ {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{vector:{pos:[1.0d,0.0d,0.0d]}}}}
	summon item ~ ~1 ~ {Tags:["tmp1"],Item:{id:"minecraft:glass",Count:1b,tag:{vector:{pos:[0.0d,1.0d,0.0d]}}}}
	execute as @e[tag=tmp] at @e[tag=tmp1] run function math:vector/crop
	kill @e[tag=tmp]
	kill @e[tag=tmp1]
	tellraw @a {"nbt":"Item.tag.vector.pos","entity":"@e[tag=result,limit=1]"}