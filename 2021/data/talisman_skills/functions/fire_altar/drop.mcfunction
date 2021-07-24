#清除
kill @s
#掉落
summon item ~ ~1 ~ {Item:{id:"minecraft:potion",Count:1b,tag:{CustomPotionEffects:[{Id:6,Amplifier:3,ShowParticles:0b}],CustomPotionColor:9109643,display:{Name:"\"§4炙热之血\""}}},Motion:[0.0d,0.3d,0.0d]}
#声音
playsound minecraft:item.bottle.fill player @a