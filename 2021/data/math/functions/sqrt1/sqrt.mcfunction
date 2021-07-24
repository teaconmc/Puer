scoreboard players set sqtimes int 0
execute if score sqrt int >= 100 int run function math:sqrt/shorten
function math:sqrt/solve
execute if score sqtimes int > 0 int run function math:sqrt/result