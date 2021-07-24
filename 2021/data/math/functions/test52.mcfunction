        summon item 0.0 0.0 0.0 {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{input:[0,1,8],affine:[[2,3,9],[4,5,10],[12,13,14],[6,7,11]]}}}
	execute as @e[tag=tmp] run function math:3affine
	tellraw @a {"nbt":"Item.tag.result","entity":"@e[tag=tmp,limit=1]"}
	kill @e[tag=tmp]