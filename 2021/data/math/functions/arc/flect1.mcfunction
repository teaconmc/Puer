scoreboard players operation temp int = sinA1 int
scoreboard players operation temp int *= @s x
scoreboard players operation temp1 int = @s z
scoreboard players operation temp1 int *= cosA int
scoreboard players operation temp1 int *= cosB int
scoreboard players operation temp int += temp1 int
scoreboard players operation temp int += x int

scoreboard players operation temp1 int = @s z
scoreboard players operation temp1 int *= sinB1 int
scoreboard players operation temp1 int += y int

scoreboard players operation temp2 int = @s x
scoreboard players operation temp2 int *= cosA1 int
scoreboard players operation temp3 int = @s z
scoreboard players operation temp3 int *= sinA int
scoreboard players operation temp3 int *= cosB int
scoreboard players operation temp2 int -= temp3 int
scoreboard players operation temp2 int += z int


summon area_effect_cloud 0.0 0.0 0.0 {Tags:["tmp"]}
execute as @e[tag=tmp,limit=1] run function math:arc/flect2
execute as @e[tag=tmp] run data merge entity @s {Tags:["result","point","flect"]}