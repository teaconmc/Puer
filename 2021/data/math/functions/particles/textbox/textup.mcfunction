setblock 0 255 0 air
setblock 0 255 0 oak_sign
data modify block 0 255 0 Text1 set from entity @s CustomName
data modify entity @s CustomName set value '{"text":""}'
data modify entity @s CustomName set from block 0 255 0 Text1
setblock 0 255 0 air