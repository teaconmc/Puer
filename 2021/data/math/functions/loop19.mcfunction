data modify entity @s Item.tag.tmp1 set from entity @s Item.tag.tmp[0]

execute if data entity @s Item.tag.tmp1{function:"c"} run function math:efunction/c
execute if data entity @s Item.tag.tmp1{function:"x"} run function math:efunction/p1
execute if data entity @s Item.tag.tmp1{function:"x^2"} run function math:efunction/p2
execute if data entity @s Item.tag.tmp1{function:"x^3"} run function math:efunction/p3
execute if data entity @s Item.tag.tmp1{function:"1/x"} run function math:efunction/p-1
execute if data entity @s Item.tag.tmp1{function:"1/x^2"} run function math:efunction/p-2
execute if data entity @s Item.tag.tmp1{function:"sqrt"} run function math:efunction/p1-2
execute if data entity @s Item.tag.tmp1{function:"sqrt-1"} run function math:efunction/p-1-2
execute if data entity @s Item.tag.tmp1{function:"abs"} run function math:efunction/abs
execute if data entity @s Item.tag.tmp1{function:"sin"} run function math:efunction/sin
execute if data entity @s Item.tag.tmp1{function:"cos"} run function math:efunction/cos
execute if data entity @s Item.tag.tmp1{function:"tan"} run function math:efunction/tan
execute if data entity @s Item.tag.tmp1{function:"cot"} run function math:efunction/cot
execute if data entity @s Item.tag.tmp1{function:"sin-1"} run function math:efunction/sin-1
execute if data entity @s Item.tag.tmp1{function:"cos-1"} run function math:efunction/cos-1
execute if data entity @s Item.tag.tmp1{function:"tan-1"} run function math:efunction/tan-1
execute if data entity @s Item.tag.tmp1{function:"cot-1"} run function math:efunction/cot-1
execute if data entity @s Item.tag.tmp1{function:"exp"} run function math:efunction/exp
execute if data entity @s Item.tag.tmp1{function:"lg"} run function math:efunction/lg

data remove entity @s Item.tag.tmp[0]
scoreboard players remove stemp int 1
execute if score stemp int matches 1.. run function math:loop19