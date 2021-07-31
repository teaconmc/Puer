
execute store result score tempu int run data get entity @s Item.tag.sbuttons[0].pos[0] 10
execute store result score tempw int run data get entity @s Item.tag.sbuttons[0].pos[1] 10
execute store result score tempv int run data get entity @s Item.tag.sbuttons[0].pos[2] 10

scoreboard players operation tempx int = tempu0 int
scoreboard players operation tempx int *= tempu int
scoreboard players operation temp1 int = tempw0 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation tempx int += temp1 int
scoreboard players operation temp1 int = tempv0 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation tempx int += temp1 int

scoreboard players operation tempy int = tempu1 int
scoreboard players operation tempy int *= tempu int
scoreboard players operation temp1 int = tempw1 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation tempy int += temp1 int
scoreboard players operation temp1 int = tempv1 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation tempy int += temp1 int

scoreboard players operation tempz int = tempu2 int
scoreboard players operation tempz int *= tempu int
scoreboard players operation temp1 int = tempw2 int
scoreboard players operation temp1 int *= tempw int
scoreboard players operation tempz int += temp1 int
scoreboard players operation temp1 int = tempv2 int
scoreboard players operation temp1 int *= tempv int
scoreboard players operation tempz int += temp1 int

summon area_effect_cloud ~ ~ ~ {Tags:["tmp1"]}
execute as @e[tag=tmp1] run function math:particles/menu/pos
execute at @e[tag=tmp1] run summon snowball ~ ~ ~ {Item:{id:"minecraft:glass",Count:1b},Tags:["tmp"],PickupDelay:32767s,NoGravity:1b,CustomNameVisible:1b,CustomName:'{"text":""}'}
tag @e remove tmp1

data modify entity @e[tag=tmp,limit=1] Item.id set from entity @s Item.tag.sbuttons[0].id
data modify entity @e[tag=tmp,limit=1] Item.tag.cd set from entity @s Item.tag.sbuttons[0].cd
data modify entity @e[tag=tmp,limit=1] Item.tag.run_command set from entity @s Item.tag.sbuttons[0].run_command
data modify entity @e[tag=tmp,limit=1] CustomName set from entity @s Item.tag.sbuttons[0].title
execute unless data entity @s Item.tag.sbuttons[0].title run data modify entity @e[tag=tmp,limit=1] CustomNameVisible set value 0b
execute if data entity @s Item.tag.owner run data modify entity @e[tag=tmp,limit=1] Item.tag.owner set from entity @s Item.tag.owner
data modify entity @e[tag=tmp,limit=1] Tags append from entity @s Item.tag.sbuttons[0].particle
data modify entity @e[tag=tmp,limit=1] Tags append from entity @s Item.tag.sbuttons[0].spec


tag @e[tag=tmp] add sbutton
execute as @e[tag=tmp] run function math:particles/custom
scoreboard players set @e[tag=tmp] mpar_tick 0
tag @e[tag=tmp] add mpar_custom

tag @e remove tmp


data remove entity @s Item.tag.sbuttons[0]
execute if data entity @s Item.tag.sbuttons[0] run function math:particles/menu/loop1