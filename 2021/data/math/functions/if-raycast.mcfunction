#获取坐标与单位矢量
execute positioned 0.0 0.0 0.0 run summon area_effect_cloud ^ ^ ^1.0 {Tags:["stmp"]}
execute store result score stempi int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score stempj int run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score stempk int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
tp @e[tag=stmp] ~ ~ ~
execute store result score stempx0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score stempy0 int run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score stempz0 int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
execute store result score stempx int run data get entity @s Pos[0] 1000
scoreboard players operation stempx int -= stempx0 int
execute store result score stempy int run data get entity @s Pos[1] 1000
scoreboard players operation stempy int -= stempy0 int
execute store result score stempz int run data get entity @s Pos[2] 1000
scoreboard players operation stempz int -= stempz0 int
kill @e[tag=stmp]

scoreboard players operation stempx int *= 100 int
scoreboard players operation stempy int *= 100 int
scoreboard players operation stempz int *= 100 int

#获取上界和下界
execute store result score stempn0 int run scoreboard players operation stempm0 int = stempx int
scoreboard players operation stempm0 int -= @s d
scoreboard players operation stempn0 int += @s d
scoreboard players operation stempm0 int /= stempi int
scoreboard players operation stempn0 int /= stempi int
execute if score stempm0 int > stempn0 int run scoreboard players operation stempm0 int >< stempn0 int
execute if score stempi int matches 0 run function math:loop30-0

execute store result score stempn1 int run scoreboard players operation stempm1 int = stempy int
scoreboard players operation stempn1 int += @s h
scoreboard players operation stempm1 int /= stempj int
scoreboard players operation stempn1 int /= stempj int
execute if score stempm1 int > stempn1 int run scoreboard players operation stempm1 int >< stempn1 int
execute if score stempj int matches 0 run function math:loop30-1

execute store result score stempn2 int run scoreboard players operation stempm2 int = stempz int
scoreboard players operation stempm2 int -= @s l
scoreboard players operation stempn2 int += @s l
scoreboard players operation stempm2 int /= stempk int
scoreboard players operation stempn2 int /= stempk int
execute if score stempm2 int > stempn2 int run scoreboard players operation stempm2 int >< stempn2 int
execute if score stempk int matches 0 run function math:loop30-2

#大于等于最大的，小于等于最小的

#tellraw @a {"score":{"name":"stempm0","objective":"int"}}
#tellraw @a {"score":{"name":"stempm1","objective":"int"}}
#tellraw @a {"score":{"name":"stempm2","objective":"int"}}
#say ---
#tellraw @a {"score":{"name":"stempn0","objective":"int"}}
#tellraw @a {"score":{"name":"stempn1","objective":"int"}}
#tellraw @a {"score":{"name":"stempn2","objective":"int"}}

scoreboard players operation stempm0 int > stempm1 int
scoreboard players operation stempm0 int > stempm2 int
scoreboard players operation stempm0 int > 0 int
scoreboard players operation stempn0 int < stempn1 int
scoreboard players operation stempn0 int < stempn2 int
#赋值输出
scoreboard players set @s result 0
execute if score stempn0 int >= stempm0 int run scoreboard players set @s result 1