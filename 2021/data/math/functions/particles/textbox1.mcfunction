summon area_effect_cloud ~ ~ ~ {Tags:["tmp"],Duration:100}
data modify entity @e[tag=tmp,limit=1] Rotation set from entity @s Item.tag.line0
data modify entity @e[tag=tmp,limit=1] Pos set from entity @s Item.tag.pos0
data modify entity @e[tag=tmp,limit=1] Motion[0] set from entity @s Item.tag.length[0]
data modify entity @e[tag=tmp,limit=1] Motion[1] set value 0.5d
data modify entity @e[tag=tmp,limit=1] Tags set from entity @s Item.tag.linetags
tag @e remove tmp

summon area_effect_cloud ~ ~ ~ {Tags:["tmp"],Duration:100}
data modify entity @e[tag=tmp,limit=1] Rotation set from entity @s Item.tag.line2
data modify entity @e[tag=tmp,limit=1] Pos set from entity @s Item.tag.pos1
data modify entity @e[tag=tmp,limit=1] Motion[0] set from entity @s Item.tag.length[1]
data modify entity @e[tag=tmp,limit=1] Motion[1] set value 0.5d
data modify entity @e[tag=tmp,limit=1] Tags set from entity @s Item.tag.linetags
tag @e remove tmp

summon area_effect_cloud ~ ~ ~ {Tags:["tmp"],Duration:100}
data modify entity @e[tag=tmp,limit=1] Rotation set from entity @s Item.tag.line1
data modify entity @e[tag=tmp,limit=1] Pos set from entity @s Item.tag.pos2
data modify entity @e[tag=tmp,limit=1] Motion[0] set from entity @s Item.tag.length[2]
data modify entity @e[tag=tmp,limit=1] Motion[1] set value 0.5d
data modify entity @e[tag=tmp,limit=1] Tags set from entity @s Item.tag.linetags
tag @e remove tmp

summon area_effect_cloud ~ ~ ~ {Tags:["tmp"],Duration:100}
data modify entity @e[tag=tmp,limit=1] Rotation set from entity @s Item.tag.line3
data modify entity @e[tag=tmp,limit=1] Pos set from entity @s Item.tag.pos3
data modify entity @e[tag=tmp,limit=1] Motion[0] set from entity @s Item.tag.length[3]
data modify entity @e[tag=tmp,limit=1] Motion[1] set value 0.5d
data modify entity @e[tag=tmp,limit=1] Tags set from entity @s Item.tag.linetags
tag @e remove tmp

scoreboard players reset @s mpar_tick1