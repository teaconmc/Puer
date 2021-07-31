	scoreboard players set vectorx int 0
	scoreboard players set vectory int 1
	scoreboard players set vectorz int 0
	execute as @e[tag=tmp] run function math:vector/rotation
	tellraw @a {"score":{"name":"vrx","objective":"int"}}
	tellraw @a {"score":{"name":"vry","objective":"int"}}