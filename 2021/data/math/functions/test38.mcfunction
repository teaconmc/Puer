summon item 0.0 0.0 0.0 {Item:{id:"minecraft:glass",Count:1b,tag:{input:[1.0,2.0],affine:[[1.0,2.0],[2.0,4.0],[2.0,2.0]]}},Tags:["tmp"]}
execute as @e[tag=tmp] run function math:affine
tellraw @a {"nbt":"Item.tag.result","entity":"@e[tag=tmp,limit=1]"}
kill @e[tag=tmp]