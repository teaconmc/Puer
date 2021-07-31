	summon item ~ ~ ~ {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{vector:{mod:1.0d,rot:[0.0d,0.0d]}}}}
	execute as @e[tag=tmp] run function math:vector/deco
	execute as @e[tag=tmp] run tellraw @a {"nbt":"Item.tag.vector.pos","entity":"@s"}
	kill @e[tag=tmp]