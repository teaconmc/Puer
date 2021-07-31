	summon item ~ 180.0 ~ {Item:{id:"minecraft:glass",Count:1b,tag:{list:[2147483647,2147483647,2147483647,2147483647]}},Tags:["tmp"]}
	execute as @e[tag=tmp] run function math:average
	kill @e[tag=tmp]