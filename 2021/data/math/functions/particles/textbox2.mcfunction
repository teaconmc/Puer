scoreboard players reset @s mpar_tick2
data remove entity @s Item.tag.lore[0]
data modify entity @e[tag=textbox0,limit=1,sort=nearest] CustomName set from entity @s Item.tag.lore[0]
data modify entity @e[tag=textbox1,limit=1,sort=nearest] CustomName set from entity @s Item.tag.lore[1]
data modify entity @e[tag=textbox2,limit=1,sort=nearest] CustomName set from entity @s Item.tag.lore[2]
playsound minecraft:block.lever.click player @a ~ ~ ~ 1 2