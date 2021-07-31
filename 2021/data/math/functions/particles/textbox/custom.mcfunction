data merge entity @s {NoGravity:true,PickupDelay:32767s,Item:{tag:{titlep:[0.0d,0.0d,0.0d],v:[0.0d,0.0d,0.0d],linetags:[],length:[0.0d,0.0d,0.0d,0.0d],line0:[0.0f,0.0f],line1:[0.0f,0.0f],line2:[0.0f,0.0f],line3:[0.0f,0.0f],pos0:[0.0d,0.0d,0.0d],pos1:[0.0d,0.0d,0.0d],pos2:[0.0d,0.0d,0.0d],pos3:[0.0d,0.0d,0.0d]}}}

tag @s remove textbox
tag @s add linese
tag @s remove mpar_air
data modify entity @s Item.tag.linetags set from entity @s Tags
tag @s add mpar_air
tag @s remove linese
tag @s add textbox

execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^-1.0 ^ ^ {Tags:["tmp"]}
execute store result score @s mpar_u0 run data get entity @e[tag=tmp,limit=1] Pos[0] 1000
execute store result score @s mpar_u1 run data get entity @e[tag=tmp,limit=1] Pos[1] 1000
execute store result score @s mpar_u2 run data get entity @e[tag=tmp,limit=1] Pos[2] 1000
execute as @e[tag=tmp] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Item.tag.line0 set from entity @e[tag=tmp,limit=1] Rotation

execute positioned 0.0 0.0 0.0 run tp @e[tag=tmp,limit=1] ^1.0 ^ ^
execute as @e[tag=tmp] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Item.tag.line1 set from entity @e[tag=tmp,limit=1] Rotation

execute positioned 0.0 0.0 0.0 run tp @e[tag=tmp,limit=1] ^ ^-1.0 ^
execute store result score @s mpar_w0 run data get entity @e[tag=tmp,limit=1] Pos[0] 1000
execute store result score @s mpar_w1 run data get entity @e[tag=tmp,limit=1] Pos[1] 1000
execute store result score @s mpar_w2 run data get entity @e[tag=tmp,limit=1] Pos[2] 1000
execute as @e[tag=tmp] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Item.tag.line2 set from entity @e[tag=tmp,limit=1] Rotation

execute positioned 0.0 0.0 0.0 run tp @e[tag=tmp,limit=1] ^ ^1.0 ^
execute as @e[tag=tmp] positioned 0.0 0.0 0.0 facing entity @s feet run tp @s ~ ~ ~ ~ ~
data modify entity @s Item.tag.line3 set from entity @e[tag=tmp,limit=1] Rotation

kill @e[tag=tmp]

execute store result score @s mpar_u run data get entity @s Item.tag.size[0] 100
execute store result score @s mpar_w run data get entity @s Item.tag.size[1] 100

execute store result entity @s Item.tag.length[0] double 0.01 run scoreboard players get @s mpar_u
execute store result entity @s Item.tag.length[1] double 0.01 run scoreboard players get @s mpar_w
execute store result entity @s Item.tag.length[2] double 0.01 run scoreboard players get @s mpar_u
execute store result entity @s Item.tag.length[3] double 0.01 run scoreboard players get @s mpar_w

execute store result score @s mpar_x run data get entity @s Pos[0] 10000
execute store result score @s mpar_y run data get entity @s Pos[1] 10000
execute store result score @s mpar_z run data get entity @s Pos[2] 10000

scoreboard players operation tempx mpar_temp = @s mpar_u0
scoreboard players operation tempx mpar_temp *= @s mpar_u
scoreboard players operation tempy mpar_temp = @s mpar_u1
scoreboard players operation tempy mpar_temp *= @s mpar_u
scoreboard players operation tempz mpar_temp = @s mpar_u2
scoreboard players operation tempz mpar_temp *= @s mpar_u

scoreboard players operation tempx1 mpar_temp = @s mpar_w0
scoreboard players operation tempx1 mpar_temp *= @s mpar_w
scoreboard players operation tempy1 mpar_temp = @s mpar_w1
scoreboard players operation tempy1 mpar_temp *= @s mpar_w
scoreboard players operation tempz1 mpar_temp = @s mpar_w2
scoreboard players operation tempz1 mpar_temp *= @s mpar_w


execute store result entity @s Item.tag.pos0[0] double 0.0001 run scoreboard players get @s mpar_x
execute store result entity @s Item.tag.pos0[1] double 0.0001 run scoreboard players get @s mpar_y
execute store result entity @s Item.tag.pos0[2] double 0.0001 run scoreboard players get @s mpar_z

scoreboard players operation temp mpar_temp = tempx mpar_temp
execute store result entity @s Item.tag.pos1[0] double 0.0001 run scoreboard players operation temp mpar_temp += @s mpar_x
scoreboard players operation temp mpar_temp = tempy mpar_temp
execute store result entity @s Item.tag.pos1[1] double 0.0001 run scoreboard players operation temp mpar_temp += @s mpar_y
scoreboard players operation temp mpar_temp = tempz mpar_temp
execute store result entity @s Item.tag.pos1[2] double 0.0001 run scoreboard players operation temp mpar_temp += @s mpar_z

scoreboard players operation temp0 mpar_temp = tempx1 mpar_temp
execute store result entity @s Item.tag.pos3[0] double 0.0001 run scoreboard players operation temp0 mpar_temp += @s mpar_x
scoreboard players operation temp1 mpar_temp = tempy1 mpar_temp
execute store result entity @s Item.tag.pos3[1] double 0.0001 run scoreboard players operation temp1 mpar_temp += @s mpar_y
scoreboard players operation temp2 mpar_temp = tempz1 mpar_temp
execute store result entity @s Item.tag.pos3[2] double 0.0001 run scoreboard players operation temp2 mpar_temp += @s mpar_z

execute store result entity @s Item.tag.pos2[0] double 0.0001 run scoreboard players operation temp0 mpar_temp += tempx mpar_temp
execute store result entity @s Item.tag.pos2[1] double 0.0001 run scoreboard players operation temp1 mpar_temp += tempy mpar_temp
execute store result entity @s Item.tag.pos2[2] double 0.0001 run scoreboard players operation temp2 mpar_temp += tempz mpar_temp

scoreboard players operation tempx mpar_temp /= 2 mpar_const
scoreboard players operation tempy mpar_temp /= 2 mpar_const
scoreboard players operation tempz mpar_temp /= 2 mpar_const

scoreboard players operation tempx mpar_temp += @s mpar_x
scoreboard players operation tempy mpar_temp += @s mpar_y
scoreboard players operation tempz mpar_temp += @s mpar_z

execute store result entity @s Item.tag.v[0] double 0.00001 run scoreboard players operation tempx1 mpar_temp /= 5 mpar_const
execute store result entity @s Item.tag.v[1] double 0.00001 run scoreboard players operation tempy1 mpar_temp /= 5 mpar_const
execute store result entity @s Item.tag.v[2] double 0.00001 run scoreboard players operation tempz1 mpar_temp /= 5 mpar_const


summon area_effect_cloud ~ ~ ~ {Tags:["mpar_aec","tmp"],CustomName:'{"text":""}',CustomNameVisible:true}
execute store result entity @s Item.tag.titlep[0] double 0.0001 store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players operation tempx mpar_temp += tempx1 mpar_temp
execute store result entity @s Item.tag.titlep[1] double 0.0001 store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players operation tempy mpar_temp += tempy1 mpar_temp
execute store result entity @s Item.tag.titlep[2] double 0.0001 store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players operation tempz mpar_temp += tempz1 mpar_temp
execute at @e[tag=tmp] run summon area_effect_cloud ~ ~-1.0 ~ {Tags:["mpar_aec","textbox0","tmp1"],CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp1,limit=1] CustomName set from entity @s Item.tag.lore[0]

kill @e[tag=tmp]
tag @e remove tmp1

summon area_effect_cloud ~ ~ ~ {Tags:["mpar_aec","tmp"],CustomName:'{"text":""}',CustomNameVisible:true}
execute store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players operation tempx mpar_temp += tempx1 mpar_temp
execute store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players operation tempy mpar_temp += tempy1 mpar_temp
execute store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players operation tempz mpar_temp += tempz1 mpar_temp
execute at @e[tag=tmp] run summon area_effect_cloud ~ ~-1.0 ~ {Tags:["mpar_aec","textbox1","tmp1"],CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp1,limit=1] CustomName set from entity @s Item.tag.lore[1]

kill @e[tag=tmp]
tag @e remove tmp1

summon area_effect_cloud ~ ~ ~ {Tags:["mpar_aec","tmp"],CustomName:'{"text":""}',CustomNameVisible:true}
execute store result entity @e[tag=tmp,limit=1] Pos[0] double 0.0001 run scoreboard players operation tempx mpar_temp += tempx1 mpar_temp
execute store result entity @e[tag=tmp,limit=1] Pos[1] double 0.0001 run scoreboard players operation tempy mpar_temp += tempy1 mpar_temp
execute store result entity @e[tag=tmp,limit=1] Pos[2] double 0.0001 run scoreboard players operation tempz mpar_temp += tempz1 mpar_temp
execute at @e[tag=tmp] run summon area_effect_cloud ~ ~-1.0 ~ {Tags:["mpar_aec","textbox2","tmp1"],CustomName:'{"text":""}',CustomNameVisible:true}
data modify entity @e[tag=tmp1,limit=1] CustomName set from entity @s Item.tag.lore[2]


kill @e[tag=tmp]
tag @e remove tmp1



execute store result score @s mpar_tick run data get entity @s Item.tag.tick
execute store result score @s mpar_tick3 run data get entity @s Item.tag.tick1


scoreboard players set @s d 25000
scoreboard players set @s h 40000
scoreboard players set @s l 25000

tag @s add mpar_player