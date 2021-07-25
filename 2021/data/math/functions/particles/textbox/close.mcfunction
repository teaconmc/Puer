execute at @s run kill @e[tag=textbox0,limit=1,sort=nearest,distance=..10]
execute at @s run kill @e[tag=textbox1,limit=1,sort=nearest,distance=..10]
execute at @s run kill @e[tag=textbox2,limit=1,sort=nearest,distance=..10]
kill @s
execute at @s run playsound minecraft:entity.arrow.hit_player player @a ~ ~ ~ 1 2