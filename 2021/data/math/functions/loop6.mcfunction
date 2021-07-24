execute store result score stemp0 int run data get entity @s Pos[0] 10000
execute store result score stemp1 int run data get entity @s Pos[1] 10000
execute store result score stemp2 int run data get entity @s Pos[2] 10000

execute if score stemp0 int > stempx1 int if score stemp0 int < stempx2 int if score stemp1 int > stempy1 int if score stemp1 int < stempy2 int if score stemp2 int > stempz1 int if score stemp2 int < stempz2 int run tag @s add result
execute if score stemp0 int < stempx1 int if score stemp0 int > stempx2 int if score stemp1 int > stempy1 int if score stemp1 int < stempy2 int if score stemp2 int > stempz1 int if score stemp2 int < stempz2 int run tag @s add result
execute if score stemp0 int > stempx1 int if score stemp0 int < stempx2 int if score stemp1 int < stempy1 int if score stemp1 int > stempy2 int if score stemp2 int > stempz1 int if score stemp2 int < stempz2 int run tag @s add result
execute if score stemp0 int > stempx1 int if score stemp0 int < stempx2 int if score stemp1 int > stempy1 int if score stemp1 int < stempy2 int if score stemp2 int < stempz1 int if score stemp2 int > stempz2 int run tag @s add result
execute if score stemp0 int < stempx1 int if score stemp0 int > stempx2 int if score stemp1 int < stempy1 int if score stemp1 int > stempy2 int if score stemp2 int > stempz1 int if score stemp2 int < stempz2 int run tag @s add result
execute if score stemp0 int > stempx1 int if score stemp0 int < stempx2 int if score stemp1 int < stempy1 int if score stemp1 int > stempy2 int if score stemp2 int < stempz1 int if score stemp2 int > stempz2 int run tag @s add result
execute if score stemp0 int < stempx1 int if score stemp0 int > stempx2 int if score stemp1 int > stempy1 int if score stemp1 int < stempy2 int if score stemp2 int < stempz1 int if score stemp2 int > stempz2 int run tag @s add result
execute if score stemp0 int < stempx1 int if score stemp0 int > stempx2 int if score stemp1 int < stempy1 int if score stemp1 int > stempy2 int if score stemp2 int < stempz1 int if score stemp2 int > stempz2 int run tag @s add result