execute anchored eyes run summon minecraft:snowball ^0.5 ^0.5 ^1.2 {Item:{id:"minecraft:command_block",Count:1b,tag:{cd:1,run_command:"execute as @a[tag=cbutton] run say 1"}},NoGravity:1b,Tags:["test","mpar_custom","sbutton"]}
execute anchored eyes run summon minecraft:snowball ^0.5 ^-0.5 ^1.2 {Item:{id:"minecraft:command_block",Count:1b,tag:{cd:1,run_command:"execute as @a[tag=cbutton] run say 1"}},NoGravity:1b,Tags:["test","mpar_custom","sbutton"]}
execute anchored eyes run summon minecraft:snowball ^-0.5 ^0.5 ^1.2 {Item:{id:"minecraft:command_block",Count:1b,tag:{cd:1,run_command:"execute as @a[tag=cbutton] run say 1"}},NoGravity:1b,Tags:["test","mpar_custom","sbutton"]}
execute anchored eyes run summon minecraft:snowball ^-0.5 ^-0.5 ^1.2 {Item:{id:"minecraft:command_block",Count:1b,tag:{cd:1,run_command:"execute as @a[tag=cbutton] run say 1"}},NoGravity:1b,Tags:["test","mpar_custom","sbutton"]}
tag @s add tmp
execute as @e[tag=test] store result entity @s Item.tag.owner int 1 run scoreboard players get @a[tag=tmp,limit=1] mpar_id
tag @s remove tmp
tag @e remove test