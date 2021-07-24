	scoreboard players set x int 100
	scoreboard players set y int 100
	scoreboard players set z int 100
	function math:vector/unit
	tellraw @a {"score":{"name":"i","objective":"int"}}
	tellraw @a {"score":{"name":"j","objective":"int"}}
	tellraw @a {"score":{"name":"k","objective":"int"}}