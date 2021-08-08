# give player sun seed
execute at @a[scores={get_sun_seed=1}] run summon uusi-aurinko:radiative_item ~ ~ ~ {Item:{id:"uusi-aurinko:sun_seed",Count:1,tag:{Inactive:1b}}, PickupDelay: 2}
scoreboard players set @a get_sun_seed 0
scoreboard players enable @a get_sun_seed

# safeguard for sun stone
execute as @e[type=uusi-aurinko:radiative_item, x=-754, y=0, z=-306, dx=4, dy=256, dz=4, nbt={Item:{id:"uusi-aurinko:sun_stone"}}] run data merge entity @s {Item:{tag:{Inactive:1b}}}

# make explosion
execute if entity @a[scores={make_explosion=1}] run playsound minecraft:entity.generic.explode block @a -752 64 -306 6 0.75
execute if entity @a[scores={make_explosion=1}] run playsound minecraft:entity.generic.explode block @a -752 64 -306 6 0.75
execute if entity @a[scores={make_explosion=1}] run playsound minecraft:entity.generic.explode block @a -752 64 -306 6 0.75
execute if entity @a[scores={make_explosion=1}] run playsound minecraft:entity.generic.explode block @a -752 64 -306 6 0.75
execute if entity @a[scores={make_explosion=1}] run playsound minecraft:entity.generic.explode block @a -752 64 -306 6 0.75
execute if entity @a[scores={make_explosion=1}] run playsound minecraft:entity.generic.explode block @a -752 64 -306 6 0.75
execute if entity @a[scores={make_explosion=1}] run particle minecraft:explosion_emitter -752 64 -306 0 0 0 1 6 force @a 
execute if entity @a[scores={make_explosion=1}] if entity @e[type=uusi-aurinko:radiative_item, x=-754, y=0, z=-306, dx=4, dy=256, dz=4, nbt={Item:{id:"uusi-aurinko:sun_stone"}}] run summon uusi-aurinko:new_sun -752 64 -304 {RiseUp:0b}
execute if entity @a[scores={make_explosion=1}] if entity @e[type=uusi-aurinko:radiative_item, x=-754, y=0, z=-306, dx=4, dy=256, dz=4, nbt={Item:{id:"uusi-aurinko:sun_stone"}}] run kill @e[type=uusi-aurinko:radiative_item, x=-754, y=0, z=-306, dx=4, dy=256, dz=4, nbt={Item:{id:"uusi-aurinko:sun_stone"}}]
scoreboard players set @a make_explosion 0
scoreboard players enable @a make_explosion

# feed creatures
execute if entity @a[scores={feed_sun_1=1}] if entity @e[type=uusi-aurinko:new_sun, x=-754, y=0, z=-306, dx=4, dy=256, dz=4] run summon minecraft:chicken -760 66 -304 {NoGravity:1b}
scoreboard players set @a feed_sun_1 0
scoreboard players enable @a feed_sun_1

execute if entity @a[scores={feed_sun_10=1}] if entity @e[type=uusi-aurinko:new_sun, x=-754, y=0, z=-306, dx=4, dy=256, dz=4] run summon minecraft:chicken -760 66 -304 {NoGravity:1b, Passengers:[{id:"minecraft:chicken", Passengers:[{id:"minecraft:chicken", Passengers:[{id:"minecraft:chicken", Passengers:[{id:"minecraft:chicken", Passengers:[{id:"minecraft:chicken", Passengers:[{id:"minecraft:chicken", Passengers:[{id:"minecraft:chicken", Passengers:[{id:"minecraft:chicken"}]}]}]}]}]}]}]}]}
scoreboard players set @a feed_sun_10 0
scoreboard players enable @a feed_sun_10

execute if entity @a[scores={feed_sun_20=1}] if entity @e[type=uusi-aurinko:new_sun, x=-754, y=0, z=-306, dx=4, dy=256, dz=4] run summon minecraft:chicken -760 66 -304 {NoGravity:1b, Passengers:[{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"},{id:"minecraft:chicken"}]}
scoreboard players set @a feed_sun_20 0
scoreboard players enable @a feed_sun_20

# get element stones
execute at @a[scores={give_stones=1}] run summon uusi-aurinko:radiative_item ~ ~ ~ {Item:{id:"uusi-aurinko:fire_stone",Count:1,tag:{Inactive:1b}}}
execute at @a[scores={give_stones=1}] run summon uusi-aurinko:radiative_item ~ ~ ~ {Item:{id:"uusi-aurinko:water_stone",Count:1,tag:{Inactive:1b}}}
execute at @a[scores={give_stones=1}] run summon uusi-aurinko:radiative_item ~ ~ ~ {Item:{id:"uusi-aurinko:earth_stone",Count:1,tag:{Inactive:1b}}}
execute at @a[scores={give_stones=1}] run summon uusi-aurinko:radiative_item ~ ~ ~ {Item:{id:"uusi-aurinko:lightning_stone",Count:1,tag:{Inactive:1b}}}
execute at @a[scores={give_stones=1}] run summon uusi-aurinko:radiative_item ~ ~ ~ {Item:{id:"uusi-aurinko:poop_stone",Count:1,tag:{Inactive:1b}}}
scoreboard players set @a give_stones 0
scoreboard players enable @a give_stones

# kill new sun
execute if entity @a[scores={kill_sun=1}] run kill @e[type=uusi-aurinko:new_sun, x=-851, y=0, z=-403, dx=198, dy=256, dz=198]
scoreboard players set @a kill_sun 0
scoreboard players enable @a kill_sun

# reset advancement
advancement revoke @a[scores={reset_ua_advance=1}] from uusi-aurinko:root
scoreboard players set @a reset_ua_advance 0
scoreboard players enable @a reset_ua_advance
