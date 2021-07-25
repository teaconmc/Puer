execute store result score temp int run data get entity @s Item.tag.owner
execute as @e[tag=button] if score @s mpar_id = temp int at @s run kill @s
execute as @e[tag=button1] if score @s mpar_id = temp int at @s run kill @s
tag @s add button
data modify entity @s Item.tag.run_command set value "execute as @e[tag=rbutton] at @s run function math:particles/menu/close"
data modify entity @s CustomName set value '{"text":"§c关闭菜单"}'
data modify entity @s CustomNameVisible set value 1b
execute store result score tempx0 int run data get entity @s Pos[0] 10000
execute store result score tempy0 int run data get entity @s Pos[1] 10000
execute store result score tempz0 int run data get entity @s Pos[2] 10000

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^-1.0 ^ ^ {Tags:["tmp"]}
execute store result score tempu0 int run data get entity @e[tag=tmp,limit=1] Pos[0] 1000
execute store result score tempu1 int run data get entity @e[tag=tmp,limit=1] Pos[1] 1000
execute store result score tempu2 int run data get entity @e[tag=tmp,limit=1] Pos[2] 1000

execute positioned 0.0 0.0 0.0 run tp @e[tag=tmp,limit=1] ^ ^1.0 ^
execute store result score tempw0 int run data get entity @e[tag=tmp,limit=1] Pos[0] 1000
execute store result score tempw1 int run data get entity @e[tag=tmp,limit=1] Pos[1] 1000
execute store result score tempw2 int run data get entity @e[tag=tmp,limit=1] Pos[2] 1000

execute positioned 0.0 0.0 0.0 run tp @e[tag=tmp,limit=1] ^ ^ ^1.0
execute store result score tempv0 int run data get entity @e[tag=tmp,limit=1] Pos[0] 1000
execute store result score tempv1 int run data get entity @e[tag=tmp,limit=1] Pos[1] 1000
execute store result score tempv2 int run data get entity @e[tag=tmp,limit=1] Pos[2] 1000

kill @e[tag=tmp]

execute if data entity @s Item.tag.buttons[0] run function math:particles/menu/loop
execute if data entity @s Item.tag.sbuttons[0] run function math:particles/menu/loop1