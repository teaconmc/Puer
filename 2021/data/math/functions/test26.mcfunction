	scoreboard players set u cn 10000
	scoreboard players set v cn 10000
	scoreboard players set w cn 10000
	summon area_effect_cloud 1.0 0.0 0.0 {Tags:["tmp"]}
	execute at @e[tag=tmp] run function math:cn/local-f
	kill @e[tag=tmp]
	scoreboard players get x cn
	scoreboard players get y cn
	scoreboard players get z cn