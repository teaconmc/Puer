summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:0,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:1,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:2,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:3,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:4,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:5,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:6,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:7,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:8,Duration:10}
summon area_effect_cloud 0 0 0 {Tags:["RInt"],Age:9,Duration:10}
execute as @e[tag=RInt] store result score @s int run data get entity @s Age
scoreboard players operation Rmax1 int = Rmax int
scoreboard players operation Rmin1 int = Rmin int
scoreboard players operation Rmax1 int /= 10 int
scoreboard players operation Rmin1 int /= 10 int
scoreboard players operation Rmax0 int = Rmax int
scoreboard players operation Rmin0 int = Rmin int
scoreboard players operation Rmax0 int %= 10 int
scoreboard players operation Rmin0 int %= 10 int
execute as @e[tag=RInt] if score @s int >= Rmin1 int if score @s int <= Rmax1 int run tag @s add Random1
tag @e[tag=Random1,limit=1,sort=random] add R1
execute if score Rmin1 int = Rmax1 int as @e[tag=RInt] if score @s int >= Rmin0 int if score @s int <= Rmax0 int run tag @s add Random0
execute if score Rmin1 int < Rmax1 int if score @e[tag=R1,limit=1] int = Rmax1 int as @e[tag=RInt] if score @s int <= Rmax0 int run tag @s add Random0
execute if score Rmin1 int < Rmax1 int if score @e[tag=R1,limit=1] int = Rmin1 int as @e[tag=RInt] if score @s int >= Rmin0 int run tag @s add Random0
execute if score Rmin1 int < Rmax1 int if score @e[tag=R1,limit=1] int > Rmin1 int if score @e[tag=R1,limit=1] int < Rmax1 int as @e[tag=RInt] if score @s int >= Rmax0 int run tag @s add Random0
tag @e[tag=Random0,limit=1,sort=random] add R0
scoreboard players operation @e[tag=R1] int1 = @e[tag=R1] int
scoreboard players operation @e[tag=R1] int1 *= 10 int
scoreboard players operation @e[tag=R1] int1 += @e[tag=R0] int
scoreboard players operation random int = @e[tag=R1] int1
kill @e[tag=RInt]