execute store result score stemp2 int run scoreboard players operation stemp int = smin int
scoreboard players operation stemp int += smax int
execute store result score sx int store result score sy int run scoreboard players operation stemp int /= 2 int
execute store result score sz int run scoreboard players operation sx int /= 10000 int
scoreboard players operation sy int %= 10000 int
scoreboard players operation sx int *= sx int
scoreboard players operation sz int *= sy int
scoreboard players operation sz int += sz int
execute store result score sy1 int run scoreboard players operation sy int *= sy int
scoreboard players operation sy1 int /= 10000 int
execute store result score sz1 int run scoreboard players operation sz int += sy1 int
scoreboard players operation sz1 int /= 10000 int
scoreboard players operation sx int += sz1 int
execute if score sx int > stemp5 int run scoreboard players operation smax int = stemp int
execute if score sx int = stemp5 int run function math:loop1-1
execute if score sx int < stemp5 int run scoreboard players operation smin int = stemp int


#scoreboard players operation stemp111 int = smax int
#scoreboard players operation stemp111 int += smin int
#scoreboard players operation stemp111 int /= 2 int
#tellraw @a [{"score":{"name":"smin","objective":"int"}},{"text":","},{"score":{"name":"smax","objective":"int"}},{"text":","},{"score":{"name":"stemp111","objective":"int"}}]


execute unless score stemp int = stemp2 int run function math:loop1