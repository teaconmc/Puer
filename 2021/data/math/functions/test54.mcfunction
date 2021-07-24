summon item 0.0 0.0 0.0 {Item:{id:"minecraft:glass",Count:1b,tag:{functions:[{function:"lg",input:[1,0],extra:[-1,0]}]}},Tags:["stmp"]}
scoreboard players set input int 2
execute as @e[tag=stmp] run function math:efunction/value
tellraw @a {"score":{"name":"result","objective":"int"}}
kill @e[tag=stmp]