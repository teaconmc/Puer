scoreboard players set stempx0 int 10000
scoreboard players set stempy0 int 10000
scoreboard players set stempz0 int 10000
scoreboard players set n0 int 5773
scoreboard players set n1 int 5773
scoreboard players set n2 int 5773
scoreboard players set cos int 0
scoreboard players set sin int 1000

say ---


scoreboard players operation stempx2 int = n1 int
scoreboard players operation stemp int = n2 int
scoreboard players operation stempx2 int *= stempz0 int
scoreboard players operation stemp int *= stempy0 int
scoreboard players operation stempx2 int -= stemp int
scoreboard players operation stempx2 int /= 10000 int
scoreboard players operation stempy2 int = n2 int
scoreboard players operation stemp int = n0 int
scoreboard players operation stempy2 int *= stempx0 int
scoreboard players operation stemp int *= stempz0 int
scoreboard players operation stempy2 int -= stemp int
scoreboard players operation stempy2 int /= 10000 int
scoreboard players operation stempz2 int = n0 int
scoreboard players operation stemp int = n1 int
scoreboard players operation stempz2 int *= stempy0 int
scoreboard players operation stemp int *= stempx0 int
scoreboard players operation stempz2 int -= stemp int
scoreboard players operation stempz2 int /= 10000 int

tellraw @a {"score":{"name":"stempx2","objective":"int"}}
tellraw @a {"score":{"name":"stempy2","objective":"int"}}
tellraw @a {"score":{"name":"stempz2","objective":"int"}}