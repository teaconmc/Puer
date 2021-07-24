	summon item ~ ~ ~ {Tags:["tmp"],Item:{id:"minecraft:glass",Count:1b,tag:{vector:{pos:[1.0d,0.0d,0.0d]}}}}
	summon item ~ ~1 ~ {Tags:["tmp1"],Item:{id:"minecraft:glass",Count:1b,tag:{vector:{pos:[0.0d,1.0d,0.0d]}}}}
	execute as @e[tag=tmp] at @e[tag=tmp1] run function math:vector/dotp
	kill @e[tag=tmp]
	kill @e[tag=tmp1]
	scoreboard players get result int