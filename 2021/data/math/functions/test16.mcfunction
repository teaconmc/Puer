	summon item ~ ~ ~ {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{vector:{rot:[0.0d,0.0d],pos:[0.0d,1.0d,0.0d]}}}}
	execute as @e[tag=tmp] run function math:vector/rotation
	kill @e[tag=tmp]
	tellraw @a {"score":{"name":"vrx","objective":"int"}}
	tellraw @a {"score":{"name":"vry","objective":"int"}}