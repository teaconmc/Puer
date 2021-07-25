tag @e remove result
summon area_effect_cloud 0 0 0 {Tags:["stmp"]}
tp @e[tag=stmp] ~ ~ ~
execute store result score stempx0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 10000
execute store result score stempy0 int run data get entity @e[tag=stmp,limit=1] Pos[1] 10000
execute store result score stempz0 int run data get entity @e[tag=stmp,limit=1] Pos[2] 10000
execute positioned 0.0 0.0 0.0 run tp @e[tag=stmp] ^ ^1.0 ^
execute store result score stempw0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score stempw1 int run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score stempw2 int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
scoreboard players operation stempw0 int *= r int
scoreboard players operation stempw1 int *= r int
scoreboard players operation stempw2 int *= r int
execute positioned 0.0 0.0 0.0 run tp @e[tag=stmp] ^-1.0 ^ ^
execute store result score stempu0 int run data get entity @e[tag=stmp,limit=1] Pos[0] 1000
execute store result score stempu1 int run data get entity @e[tag=stmp,limit=1] Pos[1] 1000
execute store result score stempu2 int run data get entity @e[tag=stmp,limit=1] Pos[2] 1000
scoreboard players operation stempu0 int *= r int
scoreboard players operation stempu1 int *= r int
scoreboard players operation stempu2 int *= r int
kill @e[tag=stmp]

scoreboard players set cos int 10000
scoreboard players set sin int 0
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9976
scoreboard players set sin int 698
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9903
scoreboard players set sin int 1392
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9781
scoreboard players set sin int 2079
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9613
scoreboard players set sin int 2756
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9397
scoreboard players set sin int 3420
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9135
scoreboard players set sin int 4067
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 8829
scoreboard players set sin int 4695
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 8480
scoreboard players set sin int 5299
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 8090
scoreboard players set sin int 5878
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 7660
scoreboard players set sin int 6428
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 7193
scoreboard players set sin int 6947
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 6691
scoreboard players set sin int 7431
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 6157
scoreboard players set sin int 7880
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 5592
scoreboard players set sin int 8290
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 5000
scoreboard players set sin int 8660
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 4384
scoreboard players set sin int 8988
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 3746
scoreboard players set sin int 9272
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 3090
scoreboard players set sin int 9511
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 2419
scoreboard players set sin int 9703
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 1736
scoreboard players set sin int 9848
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 1045
scoreboard players set sin int 9945
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 349
scoreboard players set sin int 9994
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -349
scoreboard players set sin int 9994
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -1045
scoreboard players set sin int 9945
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -1736
scoreboard players set sin int 9848
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -2419
scoreboard players set sin int 9703
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -3090
scoreboard players set sin int 9511
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -3746
scoreboard players set sin int 9272
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -4383
scoreboard players set sin int 8988
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -5000
scoreboard players set sin int 8660
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -5592
scoreboard players set sin int 8290
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -6156
scoreboard players set sin int 7880
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -6691
scoreboard players set sin int 7431
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -7193
scoreboard players set sin int 6947
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -7660
scoreboard players set sin int 6428
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -8090
scoreboard players set sin int 5878
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -8480
scoreboard players set sin int 5299
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -8829
scoreboard players set sin int 4695
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9135
scoreboard players set sin int 4067
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9397
scoreboard players set sin int 3420
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9612
scoreboard players set sin int 2756
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9781
scoreboard players set sin int 2079
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9903
scoreboard players set sin int 1392
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9976
scoreboard players set sin int 698
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -10000
scoreboard players set sin int 0
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9976
scoreboard players set sin int -698
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9903
scoreboard players set sin int -1392
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9781
scoreboard players set sin int -2079
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9612
scoreboard players set sin int -2756
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9397
scoreboard players set sin int -3420
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -9135
scoreboard players set sin int -4067
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -8829
scoreboard players set sin int -4694
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -8480
scoreboard players set sin int -5299
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -8090
scoreboard players set sin int -5878
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -7660
scoreboard players set sin int -6428
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -7193
scoreboard players set sin int -6947
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -6691
scoreboard players set sin int -7431
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -6157
scoreboard players set sin int -7880
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -5592
scoreboard players set sin int -8290
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -5000
scoreboard players set sin int -8660
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -4384
scoreboard players set sin int -8988
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -3746
scoreboard players set sin int -9272
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -3090
scoreboard players set sin int -9511
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -2419
scoreboard players set sin int -9703
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -1736
scoreboard players set sin int -9848
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -1045
scoreboard players set sin int -9945
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int -349
scoreboard players set sin int -9994
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 349
scoreboard players set sin int -9994
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 1045
scoreboard players set sin int -9945
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 1736
scoreboard players set sin int -9848
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 2419
scoreboard players set sin int -9703
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 3090
scoreboard players set sin int -9511
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 3746
scoreboard players set sin int -9272
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 4384
scoreboard players set sin int -8988
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 5000
scoreboard players set sin int -8660
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 5592
scoreboard players set sin int -8290
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 6157
scoreboard players set sin int -7880
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 6691
scoreboard players set sin int -7431
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 7193
scoreboard players set sin int -6946
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 7660
scoreboard players set sin int -6428
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 8090
scoreboard players set sin int -5878
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 8480
scoreboard players set sin int -5299
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 8829
scoreboard players set sin int -4695
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9135
scoreboard players set sin int -4067
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9396
scoreboard players set sin int -3420
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9612
scoreboard players set sin int -2756
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9781
scoreboard players set sin int -2079
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9902
scoreboard players set sin int -1392
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70
scoreboard players set cos int 9975
scoreboard players set sin int -698
scoreboard players operation stempx int = stempu0 int
scoreboard players operation stempx int *= cos int
scoreboard players operation stemp int = stempw0 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempx int += stemp int
scoreboard players operation stempx int /= 10000 int
scoreboard players operation stempy int = stempu1 int
scoreboard players operation stempy int *= cos int
scoreboard players operation stemp int = stempw1 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempy int += stemp int
scoreboard players operation stempy int /= 10000 int
scoreboard players operation stempz int = stempu2 int
scoreboard players operation stempz int *= cos int
scoreboard players operation stemp int = stempw2 int
scoreboard players operation stemp int *= sin int
scoreboard players operation stempz int += stemp int
scoreboard players operation stempz int /= 10000 int
summon area_effect_cloud 0.0 0.0 0.0 {Tags:["result","stmp"]}
execute as @e[tag=stmp] run function math:loop70