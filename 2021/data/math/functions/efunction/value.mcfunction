#functions:[{function:name,c:1,input:[1,1],extra:[1,1]]}]

#c,x,x^2,x^3,1/x,1/x^2,sqrt,sqrt-1,abs,sin,cos,tan,cot,sin-1,cos-1,tan-1,cot-1,exp,lg
#dc,dx,dx^2,dx^3,d1/x,d1/x^2,dsqrt,dsqrt-1,dabs,dsin,dcos,dtan,dcot,dsin-1,dcos-1,dtan-1,dcot-1,dexp,dlg
#ic,ix,ix^2,ix^3,i1/x,i1/x^2,isqrt,isqrt-1,iabs,isin,icos,itan,icot,isin-1,icos-1,itan-1,icot-1,iexp,ilg

scoreboard players operation -1ustemp int = input int
execute store result score stemp int run data get entity @s Item.tag.functions
summon item 0.0 0.0 0.0 {Tags:["stmp"],Item:{id:"minecraft:glass",Count:1b,tag:{tmp:[],tmp1:{}}}}
data modify entity @e[tag=stmp,limit=1] Item.tag.tmp set from entity @s Item.tag.functions
scoreboard players set result int 0
execute as @e[tag=stmp] run function math:loop19
kill @e[tag=stmp]
scoreboard players operation input int = -1ustemp int