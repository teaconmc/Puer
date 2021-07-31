execute at @s positioned ~ ~1.62 ~ as 482fd7a0-1c2f-46bd-9a58-6940294fed2a run function math:if-raycast
execute as 482fd7a0-1c2f-46bd-9a58-6940294fed2a if score @s result matches 0 run say no
execute as 482fd7a0-1c2f-46bd-9a58-6940294fed2a if score @s result matches 1 run effect give @s minecraft:glowing 1 1 true