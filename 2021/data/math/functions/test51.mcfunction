        summon item 0.0 0.0 0.0 {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{input:[0,1],affine:[[2,3],[4,5],[6,7]]}}}
	execute as @e[tag=tmp] run function math:affine
	tellraw @a {"nbt":"Item.tag.result","entity":"@e[tag=tmp,limit=1]"}
	kill @e[tag=tmp]