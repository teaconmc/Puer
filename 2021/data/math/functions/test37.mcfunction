summon minecraft:zombie 0.0 0.0 0.0 {NoAI:true,Attributes:[{Base:0.0d,Name:"minecraft:generic.max_health"}],Tags:["stmp"],ArmorItems:[{},{},{},{id:"minecraft:glass",Count:1b,tag:{tmp:[],AttributeModifiers:[{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:0.0d,Operation:0,UUID:[I;1498693494,1027158888,1898994005,860320107]}]}}]}
data modify entity @e[tag=stmp,limit=1] ArmorItems[3].tag.AttributeModifiers[0].Amount set value 2.0d
tellraw @a {"score":{"name":"stemp","objective":"int"}}
data modify entity @e[tag=stmp,limit=1] ArmorItems[3].tag.AttributeModifiers[0].Amount set value 2.0d
tellraw @a {"score":{"name":"stemp","objective":"int"}}
kill @e[tag=stmp]