execute store result score x-n1 int run scoreboard players operation sz int %= 10000 int
execute store result score x-n2 int run scoreboard players operation sy int %= 10000 int
#tellraw @a [{"score":{"name":"sz","objective":"int"}},{"text":","},{"score":{"name":"sy","objective":"int"}},{"text":","},{"score":{"name":"input","objective":"int"}}]

execute store result score y-n2 int run scoreboard players operation y-n1 int = input int
scoreboard players operation y-n1 int /= 10000 int
scoreboard players operation y-n2 int %= 10000 int

execute store result score n1 int run scoreboard players operation x-n1 int *= y-n1 int
execute store result score n2 int run scoreboard players operation sz int *= y-n2 int
scoreboard players operation x-n2 int *= y-n1 int
execute store result score n3 int run scoreboard players operation sy int *= y-n2 int
scoreboard players operation n2 int += x-n2 int

scoreboard players operation n3 int /= 10000 int
scoreboard players operation n2 int += n3 int
scoreboard players operation n2 int /= 10000 int
scoreboard players operation n1 int += n2 int


#scoreboard players operation n1 int *= n2 int
#scoreboard players operation n1 int *= n1 int
#scoreboard players operation n2-1 int *= sz int
#scoreboard players operation n2 int += n2-1 int
#scoreboard players operation n3 int *= sz int
#scoreboard players operation n3 int /= 10000 int
#scoreboard players operation n2 int += n3 int
#scoreboard players operation n2 int /= 10000 int
#scoreboard players operation n1 int += n2 int

#tellraw @a [{"score":{"name":"sz","objective":"int"}},{"text":","},{"score":{"name":"sy","objective":"int"}},{"text":","},{"score":{"name":"n1","objective":"int"}}]


execute if score n1 int >= stemp6 int run scoreboard players operation smax int = stemp int
execute if score n1 int < stemp6 int run scoreboard players operation smin int = stemp int